package io.flutter.embedding.android;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public class FlutterTextureView extends TextureView implements io.flutter.embedding.engine.h.c {

    /* renamed from: e, reason: collision with root package name */
    private boolean f18943e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f18944f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private io.flutter.embedding.engine.h.a f18945g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private Surface f18946h;

    /* renamed from: i, reason: collision with root package name */
    private final TextureView.SurfaceTextureListener f18947i;

    /* loaded from: classes2.dex */
    class a implements TextureView.SurfaceTextureListener {
        a() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
            g.a.b.c("FlutterTextureView", "SurfaceTextureListener.onSurfaceTextureAvailable()");
            FlutterTextureView.this.f18943e = true;
            if (FlutterTextureView.this.f18944f) {
                FlutterTextureView.this.a();
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(@NonNull SurfaceTexture surfaceTexture) {
            g.a.b.c("FlutterTextureView", "SurfaceTextureListener.onSurfaceTextureDestroyed()");
            FlutterTextureView.this.f18943e = false;
            if (!FlutterTextureView.this.f18944f) {
                return true;
            }
            FlutterTextureView.this.b();
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(@NonNull SurfaceTexture surfaceTexture, int i2, int i3) {
            g.a.b.c("FlutterTextureView", "SurfaceTextureListener.onSurfaceTextureSizeChanged()");
            if (FlutterTextureView.this.f18944f) {
                FlutterTextureView.this.a(i2, i3);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(@NonNull SurfaceTexture surfaceTexture) {
        }
    }

    public FlutterTextureView(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f18945g != null && getSurfaceTexture() != null) {
            this.f18946h = new Surface(getSurfaceTexture());
            this.f18945g.a(this.f18946h);
            return;
        }
        throw new IllegalStateException("connectSurfaceToRenderer() should only be called when flutterRenderer and getSurfaceTexture() are non-null.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        io.flutter.embedding.engine.h.a aVar = this.f18945g;
        if (aVar != null) {
            aVar.c();
            Surface surface = this.f18946h;
            if (surface != null) {
                surface.release();
                this.f18946h = null;
                return;
            }
            return;
        }
        throw new IllegalStateException("disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null.");
    }

    private void c() {
        setSurfaceTextureListener(this.f18947i);
    }

    @Override // io.flutter.embedding.engine.h.c
    public void attachToRenderer(@NonNull io.flutter.embedding.engine.h.a aVar) {
        g.a.b.c("FlutterTextureView", "Attaching to FlutterRenderer.");
        if (this.f18945g != null) {
            g.a.b.c("FlutterTextureView", "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one.");
            this.f18945g.c();
        }
        this.f18945g = aVar;
        this.f18944f = true;
        if (this.f18943e) {
            g.a.b.c("FlutterTextureView", "Surface is available for rendering. Connecting FlutterRenderer to Android surface.");
            a();
        }
    }

    @Override // io.flutter.embedding.engine.h.c
    public void detachFromRenderer() {
        if (this.f18945g != null) {
            if (getWindowToken() != null) {
                g.a.b.c("FlutterTextureView", "Disconnecting FlutterRenderer from Android surface.");
                b();
            }
            this.f18945g = null;
            this.f18944f = false;
            return;
        }
        g.a.b.d("FlutterTextureView", "detachFromRenderer() invoked when no FlutterRenderer was attached.");
    }

    @Override // io.flutter.embedding.engine.h.c
    @Nullable
    public io.flutter.embedding.engine.h.a getAttachedRenderer() {
        return this.f18945g;
    }

    @Override // io.flutter.embedding.engine.h.c
    public void pause() {
        if (this.f18945g != null) {
            this.f18945g = null;
            this.f18944f = false;
        } else {
            g.a.b.d("FlutterTextureView", "pause() invoked when no FlutterRenderer was attached.");
        }
    }

    public FlutterTextureView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18943e = false;
        this.f18944f = false;
        this.f18947i = new a();
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3) {
        if (this.f18945g != null) {
            g.a.b.c("FlutterTextureView", "Notifying FlutterRenderer that Android surface size has changed to " + i2 + " x " + i3);
            this.f18945g.a(i2, i3);
            return;
        }
        throw new IllegalStateException("changeSurfaceSize() should only be called when flutterRenderer is non-null.");
    }
}
