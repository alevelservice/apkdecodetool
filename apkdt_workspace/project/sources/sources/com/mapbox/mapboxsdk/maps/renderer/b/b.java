package com.mapbox.mapboxsdk.maps.renderer.b;

import android.graphics.SurfaceTexture;
import android.view.TextureView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.mapbox.mapboxsdk.log.Logger;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextureViewRenderThread.java */
/* loaded from: classes2.dex */
public class b extends Thread implements TextureView.SurfaceTextureListener {

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private final com.mapbox.mapboxsdk.maps.renderer.b.a f16133e;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    private final a f16134f;

    /* renamed from: g, reason: collision with root package name */
    private final Object f16135g = new Object();

    /* renamed from: h, reason: collision with root package name */
    private final ArrayList<Runnable> f16136h = new ArrayList<>();

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private SurfaceTexture f16137i;

    /* renamed from: j, reason: collision with root package name */
    private int f16138j;

    /* renamed from: k, reason: collision with root package name */
    private int f16139k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f16140l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;

    /* compiled from: TextureViewRenderThread.java */
    /* loaded from: classes2.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private final WeakReference<TextureView> f16141a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f16142b;

        /* renamed from: c, reason: collision with root package name */
        private EGL10 f16143c;

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        private EGLConfig f16144d;

        /* renamed from: e, reason: collision with root package name */
        private EGLDisplay f16145e = EGL10.EGL_NO_DISPLAY;

        /* renamed from: f, reason: collision with root package name */
        private EGLContext f16146f = EGL10.EGL_NO_CONTEXT;

        /* renamed from: g, reason: collision with root package name */
        private EGLSurface f16147g = EGL10.EGL_NO_SURFACE;

        a(WeakReference<TextureView> weakReference, boolean z) {
            this.f16141a = weakReference;
            this.f16142b = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g() {
            EGLContext eGLContext = this.f16146f;
            if (eGLContext == EGL10.EGL_NO_CONTEXT) {
                return;
            }
            if (!this.f16143c.eglDestroyContext(this.f16145e, eGLContext)) {
                Logger.w("Mbgl-TextureViewRenderThread", String.format("Could not destroy egl context. Display %s, Context %s", this.f16145e, this.f16146f));
            }
            this.f16146f = EGL10.EGL_NO_CONTEXT;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            EGLSurface eGLSurface = this.f16147g;
            if (eGLSurface == EGL10.EGL_NO_SURFACE) {
                return;
            }
            if (!this.f16143c.eglDestroySurface(this.f16145e, eGLSurface)) {
                Logger.w("Mbgl-TextureViewRenderThread", String.format("Could not destroy egl surface. Display %s, Surface %s", this.f16145e, this.f16147g));
            }
            this.f16147g = EGL10.EGL_NO_SURFACE;
        }

        private void i() {
            EGLDisplay eGLDisplay = this.f16145e;
            if (eGLDisplay == EGL10.EGL_NO_DISPLAY) {
                return;
            }
            if (!this.f16143c.eglTerminate(eGLDisplay)) {
                Logger.w("Mbgl-TextureViewRenderThread", String.format("Could not terminate egl. Display %s", this.f16145e));
            }
            this.f16145e = EGL10.EGL_NO_DISPLAY;
        }

        int f() {
            if (this.f16143c.eglSwapBuffers(this.f16145e, this.f16147g)) {
                return 12288;
            }
            return this.f16143c.eglGetError();
        }

        void a() {
            h();
            g();
            i();
        }

        @NonNull
        GL10 b() {
            return (GL10) this.f16146f.getGL();
        }

        boolean c() {
            h();
            TextureView textureView = this.f16141a.get();
            if (textureView != null && textureView.getSurfaceTexture() != null) {
                this.f16147g = this.f16143c.eglCreateWindowSurface(this.f16145e, this.f16144d, textureView.getSurfaceTexture(), new int[]{12344});
            } else {
                this.f16147g = EGL10.EGL_NO_SURFACE;
            }
            EGLSurface eGLSurface = this.f16147g;
            if (eGLSurface != null && eGLSurface != EGL10.EGL_NO_SURFACE) {
                return d();
            }
            if (this.f16143c.eglGetError() == 12299) {
                Logger.e("Mbgl-TextureViewRenderThread", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
            }
            return false;
        }

        boolean d() {
            EGL10 egl10 = this.f16143c;
            EGLDisplay eGLDisplay = this.f16145e;
            EGLSurface eGLSurface = this.f16147g;
            if (egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f16146f)) {
                return true;
            }
            Logger.w("Mbgl-TextureViewRenderThread", String.format("eglMakeCurrent: %s", Integer.valueOf(this.f16143c.eglGetError())));
            return false;
        }

        void e() {
            this.f16143c = (EGL10) EGLContext.getEGL();
            if (this.f16145e == EGL10.EGL_NO_DISPLAY) {
                this.f16145e = this.f16143c.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
                EGLDisplay eGLDisplay = this.f16145e;
                if (eGLDisplay != EGL10.EGL_NO_DISPLAY) {
                    if (!this.f16143c.eglInitialize(eGLDisplay, new int[2])) {
                        throw new RuntimeException("eglInitialize failed");
                    }
                } else {
                    throw new RuntimeException("eglGetDisplay failed");
                }
            }
            if (this.f16141a == null) {
                this.f16144d = null;
                this.f16146f = EGL10.EGL_NO_CONTEXT;
            } else if (this.f16146f == EGL10.EGL_NO_CONTEXT) {
                this.f16144d = new com.mapbox.mapboxsdk.maps.renderer.a.a(this.f16142b).chooseConfig(this.f16143c, this.f16145e);
                this.f16146f = this.f16143c.eglCreateContext(this.f16145e, this.f16144d, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
            }
            if (this.f16146f == EGL10.EGL_NO_CONTEXT) {
                throw new RuntimeException("createContext");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public b(@NonNull TextureView textureView, @NonNull com.mapbox.mapboxsdk.maps.renderer.b.a aVar) {
        textureView.setOpaque(!aVar.a());
        textureView.setSurfaceTextureListener(this);
        this.f16133e = aVar;
        this.f16134f = new a(new WeakReference(textureView), aVar.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Runnable runnable) {
        if (runnable != null) {
            synchronized (this.f16135g) {
                this.f16136h.add(runnable);
                this.f16135g.notifyAll();
            }
            return;
        }
        throw new IllegalArgumentException("runnable must not be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b() {
        synchronized (this.f16135g) {
            this.n = true;
            this.f16135g.notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c() {
        synchronized (this.f16135g) {
            this.n = false;
            this.f16135g.notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        synchronized (this.f16135g) {
            this.f16140l = true;
            this.f16135g.notifyAll();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    @UiThread
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        synchronized (this.f16135g) {
            this.f16137i = surfaceTexture;
            this.f16138j = i2;
            this.f16139k = i3;
            this.f16140l = true;
            this.f16135g.notifyAll();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    @UiThread
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        synchronized (this.f16135g) {
            this.f16137i = null;
            this.p = true;
            this.f16140l = false;
            this.f16135g.notifyAll();
        }
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    @UiThread
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        synchronized (this.f16135g) {
            this.f16138j = i2;
            this.f16139k = i3;
            this.m = true;
            this.f16140l = true;
            this.f16135g.notifyAll();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    @UiThread
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Runnable remove;
        boolean z;
        boolean z2;
        int i2;
        int i3;
        while (true) {
            try {
                synchronized (this.f16135g) {
                    while (!this.q) {
                        if (!this.f16136h.isEmpty()) {
                            remove = this.f16136h.remove(0);
                        } else {
                            if (this.p) {
                                this.f16134f.h();
                                this.p = false;
                            } else if (this.o) {
                                this.f16134f.g();
                                this.o = false;
                            } else if (this.f16137i != null && !this.n && this.f16140l) {
                                int i4 = this.f16138j;
                                int i5 = this.f16139k;
                                if (this.f16134f.f16146f == EGL10.EGL_NO_CONTEXT) {
                                    i3 = i5;
                                    i2 = i4;
                                    remove = null;
                                    z = true;
                                } else if (this.f16134f.f16147g == EGL10.EGL_NO_SURFACE) {
                                    i3 = i5;
                                    i2 = i4;
                                    remove = null;
                                    z = false;
                                    z2 = true;
                                } else {
                                    this.f16140l = false;
                                    i3 = i5;
                                    i2 = i4;
                                    remove = null;
                                    z = false;
                                }
                                z2 = false;
                            } else {
                                this.f16135g.wait();
                            }
                            remove = null;
                        }
                        z = false;
                        z2 = false;
                        i2 = -1;
                        i3 = -1;
                    }
                    this.f16134f.a();
                    synchronized (this.f16135g) {
                        this.r = true;
                        this.f16135g.notifyAll();
                    }
                    return;
                }
                if (remove != null) {
                    remove.run();
                } else {
                    GL10 b2 = this.f16134f.b();
                    if (z) {
                        this.f16134f.e();
                        synchronized (this.f16135g) {
                            if (this.f16134f.c()) {
                                this.f16133e.onSurfaceCreated(b2, this.f16134f.f16144d);
                                this.f16133e.onSurfaceChanged(b2, i2, i3);
                            } else {
                                this.p = true;
                            }
                        }
                    } else if (z2) {
                        synchronized (this.f16135g) {
                            this.f16134f.c();
                        }
                        this.f16133e.onSurfaceChanged(b2, i2, i3);
                    } else if (!this.m) {
                        if (this.f16134f.f16147g != EGL10.EGL_NO_SURFACE) {
                            this.f16133e.onDrawFrame(b2);
                            int f2 = this.f16134f.f();
                            if (f2 == 12288) {
                                continue;
                            } else if (f2 != 12302) {
                                Logger.w("Mbgl-TextureViewRenderThread", String.format("eglSwapBuffer error: %s. Waiting or new surface", Integer.valueOf(f2)));
                                synchronized (this.f16135g) {
                                    this.f16137i = null;
                                    this.p = true;
                                }
                            } else {
                                Logger.w("Mbgl-TextureViewRenderThread", "Context lost. Waiting for re-aquire");
                                synchronized (this.f16135g) {
                                    this.f16137i = null;
                                    this.p = true;
                                    this.o = true;
                                }
                            }
                        }
                    } else {
                        this.f16133e.onSurfaceChanged(b2, i2, i3);
                        this.m = false;
                    }
                }
            } catch (InterruptedException unused) {
                this.f16134f.a();
                synchronized (this.f16135g) {
                    this.r = true;
                    this.f16135g.notifyAll();
                    return;
                }
            } catch (Throwable th) {
                this.f16134f.a();
                synchronized (this.f16135g) {
                    this.r = true;
                    this.f16135g.notifyAll();
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a() {
        synchronized (this.f16135g) {
            this.q = true;
            this.f16135g.notifyAll();
            while (!this.r) {
                try {
                    this.f16135g.wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }
}
