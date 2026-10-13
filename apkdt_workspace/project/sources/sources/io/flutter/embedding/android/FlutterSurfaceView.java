package io.flutter.embedding.android;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public class FlutterSurfaceView extends SurfaceView implements io.flutter.embedding.engine.h.c {

    /* renamed from: e, reason: collision with root package name */
    private final boolean f18935e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f18936f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f18937g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private io.flutter.embedding.engine.h.a f18938h;

    /* renamed from: i, reason: collision with root package name */
    private final SurfaceHolder.Callback f18939i;

    /* renamed from: j, reason: collision with root package name */
    private final io.flutter.embedding.engine.h.b f18940j;

    /* loaded from: classes2.dex */
    class a implements SurfaceHolder.Callback {
        a() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            g.a.b.c("FlutterSurfaceView", "SurfaceHolder.Callback.surfaceChanged()");
            if (FlutterSurfaceView.this.f18937g) {
                FlutterSurfaceView.this.a(i3, i4);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
            g.a.b.c("FlutterSurfaceView", "SurfaceHolder.Callback.startRenderingToSurface()");
            FlutterSurfaceView.this.f18936f = true;
            if (FlutterSurfaceView.this.f18937g) {
                FlutterSurfaceView.this.a();
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            g.a.b.c("FlutterSurfaceView", "SurfaceHolder.Callback.stopRenderingToSurface()");
            FlutterSurfaceView.this.f18936f = false;
            if (FlutterSurfaceView.this.f18937g) {
                FlutterSurfaceView.this.b();
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements io.flutter.embedding.engine.h.b {
        b() {
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiDisplayed() {
            g.a.b.c("FlutterSurfaceView", "onFlutterUiDisplayed()");
            FlutterSurfaceView.this.setAlpha(1.0f);
            if (FlutterSurfaceView.this.f18938h != null) {
                FlutterSurfaceView.this.f18938h.b(this);
            }
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiNoLongerDisplayed() {
        }
    }

    public FlutterSurfaceView(@NonNull Context context) {
        this(context, null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f18938h != null && getHolder() != null) {
            this.f18938h.a(getHolder().getSurface());
            return;
        }
        throw new IllegalStateException("connectSurfaceToRenderer() should only be called when flutterRenderer and getHolder() are non-null.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        io.flutter.embedding.engine.h.a aVar = this.f18938h;
        if (aVar != null) {
            aVar.c();
            return;
        }
        throw new IllegalStateException("disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null.");
    }

    private void c() {
        if (this.f18935e) {
            getHolder().setFormat(-2);
            setZOrderOnTop(true);
        }
        getHolder().addCallback(this.f18939i);
        setAlpha(0.0f);
    }

    @Override // io.flutter.embedding.engine.h.c
    public void attachToRenderer(@NonNull io.flutter.embedding.engine.h.a aVar) {
        g.a.b.c("FlutterSurfaceView", "Attaching to FlutterRenderer.");
        if (this.f18938h != null) {
            g.a.b.c("FlutterSurfaceView", "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one.");
            this.f18938h.c();
            this.f18938h.b(this.f18940j);
        }
        this.f18938h = aVar;
        this.f18937g = true;
        this.f18938h.a(this.f18940j);
        if (this.f18936f) {
            g.a.b.c("FlutterSurfaceView", "Surface is available for rendering. Connecting FlutterRenderer to Android surface.");
            a();
        }
    }

    @Override // io.flutter.embedding.engine.h.c
    public void detachFromRenderer() {
        if (this.f18938h != null) {
            if (getWindowToken() != null) {
                g.a.b.c("FlutterSurfaceView", "Disconnecting FlutterRenderer from Android surface.");
                b();
            }
            setAlpha(0.0f);
            this.f18938h.b(this.f18940j);
            this.f18938h = null;
            this.f18937g = false;
            return;
        }
        g.a.b.d("FlutterSurfaceView", "detachFromRenderer() invoked when no FlutterRenderer was attached.");
    }

    @Override // io.flutter.embedding.engine.h.c
    @Nullable
    public io.flutter.embedding.engine.h.a getAttachedRenderer() {
        return this.f18938h;
    }

    @Override // io.flutter.embedding.engine.h.c
    public void pause() {
        if (this.f18938h != null) {
            this.f18938h = null;
            this.f18937g = false;
        } else {
            g.a.b.d("FlutterSurfaceView", "pause() invoked when no FlutterRenderer was attached.");
        }
    }

    public FlutterSurfaceView(@NonNull Context context, boolean z) {
        this(context, null, z);
    }

    public FlutterSurfaceView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        this(context, attributeSet, false);
    }

    private FlutterSurfaceView(@NonNull Context context, @Nullable AttributeSet attributeSet, boolean z) {
        super(context, attributeSet);
        this.f18936f = false;
        this.f18937g = false;
        this.f18939i = new a();
        this.f18940j = new b();
        this.f18935e = z;
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3) {
        if (this.f18938h != null) {
            g.a.b.c("FlutterSurfaceView", "Notifying FlutterRenderer that Android surface size has changed to " + i2 + " x " + i3);
            this.f18938h.a(i2, i3);
            return;
        }
        throw new IllegalStateException("changeSurfaceSize() should only be called when flutterRenderer is non-null.");
    }
}
