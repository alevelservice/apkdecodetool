package io.flutter.embedding.engine.h;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.view.g;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlutterRenderer.java */
@TargetApi(16)
/* loaded from: classes2.dex */
public class a implements g {

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private final FlutterJNI f19090e;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private Surface f19092g;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    private final AtomicLong f19091f = new AtomicLong(0);

    /* renamed from: h, reason: collision with root package name */
    private boolean f19093h = false;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.h.b f19094i = new C0235a();

    /* compiled from: FlutterRenderer.java */
    /* renamed from: io.flutter.embedding.engine.h.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0235a implements io.flutter.embedding.engine.h.b {
        C0235a() {
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiDisplayed() {
            a.this.f19093h = true;
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiNoLongerDisplayed() {
            a.this.f19093h = false;
        }
    }

    /* compiled from: FlutterRenderer.java */
    /* loaded from: classes2.dex */
    final class b implements g.a {

        /* renamed from: a, reason: collision with root package name */
        private final long f19096a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        private final SurfaceTexture f19097b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f19098c;

        /* renamed from: d, reason: collision with root package name */
        private SurfaceTexture.OnFrameAvailableListener f19099d = new C0236a();

        /* compiled from: FlutterRenderer.java */
        /* renamed from: io.flutter.embedding.engine.h.a$b$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0236a implements SurfaceTexture.OnFrameAvailableListener {
            C0236a() {
            }

            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(@NonNull SurfaceTexture surfaceTexture) {
                if (b.this.f19098c || !a.this.f19090e.isAttached()) {
                    return;
                }
                b bVar = b.this;
                a.this.a(bVar.f19096a);
            }
        }

        b(long j2, @NonNull SurfaceTexture surfaceTexture) {
            this.f19096a = j2;
            this.f19097b = surfaceTexture;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f19097b.setOnFrameAvailableListener(this.f19099d, new Handler());
            } else {
                this.f19097b.setOnFrameAvailableListener(this.f19099d);
            }
        }

        @Override // io.flutter.view.g.a
        public long id() {
            return this.f19096a;
        }

        @Override // io.flutter.view.g.a
        public void a() {
            if (this.f19098c) {
                return;
            }
            g.a.b.c("FlutterRenderer", "Releasing a SurfaceTexture (" + this.f19096a + ").");
            this.f19097b.release();
            a.this.b(this.f19096a);
            this.f19098c = true;
        }

        @Override // io.flutter.view.g.a
        @NonNull
        public SurfaceTexture b() {
            return this.f19097b;
        }
    }

    /* compiled from: FlutterRenderer.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public float f19102a = 1.0f;

        /* renamed from: b, reason: collision with root package name */
        public int f19103b = 0;

        /* renamed from: c, reason: collision with root package name */
        public int f19104c = 0;

        /* renamed from: d, reason: collision with root package name */
        public int f19105d = 0;

        /* renamed from: e, reason: collision with root package name */
        public int f19106e = 0;

        /* renamed from: f, reason: collision with root package name */
        public int f19107f = 0;

        /* renamed from: g, reason: collision with root package name */
        public int f19108g = 0;

        /* renamed from: h, reason: collision with root package name */
        public int f19109h = 0;

        /* renamed from: i, reason: collision with root package name */
        public int f19110i = 0;

        /* renamed from: j, reason: collision with root package name */
        public int f19111j = 0;

        /* renamed from: k, reason: collision with root package name */
        public int f19112k = 0;

        /* renamed from: l, reason: collision with root package name */
        public int f19113l = 0;
        public int m = 0;
        public int n = 0;
        public int o = 0;
    }

    public a(@NonNull FlutterJNI flutterJNI) {
        this.f19090e = flutterJNI;
        this.f19090e.addIsDisplayingFlutterUiListener(this.f19094i);
    }

    public void c() {
        this.f19090e.onSurfaceDestroyed();
        this.f19092g = null;
        if (this.f19093h) {
            this.f19094i.onFlutterUiNoLongerDisplayed();
        }
        this.f19093h = false;
    }

    @Override // io.flutter.view.g
    public g.a createSurfaceTexture() {
        g.a.b.c("FlutterRenderer", "Creating a SurfaceTexture.");
        SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.detachFromGLContext();
        b bVar = new b(this.f19091f.getAndIncrement(), surfaceTexture);
        g.a.b.c("FlutterRenderer", "New SurfaceTexture ID: " + bVar.id());
        a(bVar.id(), surfaceTexture);
        return bVar;
    }

    public void b(@NonNull io.flutter.embedding.engine.h.b bVar) {
        this.f19090e.removeIsDisplayingFlutterUiListener(bVar);
    }

    public void b(@NonNull Surface surface) {
        this.f19092g = surface;
        this.f19090e.onSurfaceWindowChanged(surface);
    }

    public boolean a() {
        return this.f19093h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(long j2) {
        this.f19090e.unregisterTexture(j2);
    }

    public void a(@NonNull io.flutter.embedding.engine.h.b bVar) {
        this.f19090e.addIsDisplayingFlutterUiListener(bVar);
        if (this.f19093h) {
            bVar.onFlutterUiDisplayed();
        }
    }

    public boolean b() {
        return this.f19090e.getIsSoftwareRenderingEnabled();
    }

    public void a(@NonNull Surface surface) {
        if (this.f19092g != null) {
            c();
        }
        this.f19092g = surface;
        this.f19090e.onSurfaceCreated(surface);
    }

    public void a(int i2, int i3) {
        this.f19090e.onSurfaceChanged(i2, i3);
    }

    public void a(@NonNull c cVar) {
        g.a.b.c("FlutterRenderer", "Setting viewport metrics\nSize: " + cVar.f19103b + " x " + cVar.f19104c + "\nPadding - L: " + cVar.f19108g + ", T: " + cVar.f19105d + ", R: " + cVar.f19106e + ", B: " + cVar.f19107f + "\nInsets - L: " + cVar.f19112k + ", T: " + cVar.f19109h + ", R: " + cVar.f19110i + ", B: " + cVar.f19111j + "\nSystem Gesture Insets - L: " + cVar.o + ", T: " + cVar.f19113l + ", R: " + cVar.m + ", B: " + cVar.f19111j);
        this.f19090e.setViewportMetrics(cVar.f19102a, cVar.f19103b, cVar.f19104c, cVar.f19105d, cVar.f19106e, cVar.f19107f, cVar.f19108g, cVar.f19109h, cVar.f19110i, cVar.f19111j, cVar.f19112k, cVar.f19113l, cVar.m, cVar.n, cVar.o);
    }

    public void a(@NonNull ByteBuffer byteBuffer, int i2) {
        this.f19090e.dispatchPointerDataPacket(byteBuffer, i2);
    }

    private void a(long j2, @NonNull SurfaceTexture surfaceTexture) {
        this.f19090e.registerTexture(j2, surfaceTexture);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j2) {
        this.f19090e.markTextureFrameAvailable(j2);
    }

    public void a(boolean z) {
        this.f19090e.setSemanticsEnabled(z);
    }
}
