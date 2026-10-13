package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fp1 extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {

    /* renamed from: e, reason: collision with root package name */
    private final int[] f6700e;

    /* renamed from: f, reason: collision with root package name */
    private Handler f6701f;

    /* renamed from: g, reason: collision with root package name */
    private SurfaceTexture f6702g;

    /* renamed from: h, reason: collision with root package name */
    private Error f6703h;

    /* renamed from: i, reason: collision with root package name */
    private RuntimeException f6704i;

    /* renamed from: j, reason: collision with root package name */
    private zzok f6705j;

    public fp1() {
        super("dummySurface");
        this.f6700e = new int[1];
    }

    public final zzok a(boolean z) {
        boolean z2;
        start();
        this.f6701f = new Handler(getLooper(), this);
        synchronized (this) {
            z2 = false;
            this.f6701f.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            while (this.f6705j == null && this.f6704i == null && this.f6703h == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.f6704i;
        if (runtimeException == null) {
            Error error = this.f6703h;
            if (error == null) {
                return this.f6705j;
            }
            throw error;
        }
        throw runtimeException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        try {
            if (i2 != 1) {
                if (i2 == 2) {
                    this.f6702g.updateTexImage();
                    return true;
                }
                if (i2 != 3) {
                    return true;
                }
                try {
                    try {
                        this.f6702g.release();
                        quit();
                    } finally {
                        this.f6705j = null;
                        this.f6702g = null;
                        GLES20.glDeleteTextures(1, this.f6700e, 0);
                    }
                } catch (Throwable unused) {
                    quit();
                }
                return true;
            }
            try {
                boolean z = message.arg1 != 0;
                EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                no1.b(eglGetDisplay != null, "eglGetDisplay failed");
                int[] iArr = new int[2];
                no1.b(EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1), "eglInitialize failed");
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr2 = new int[1];
                no1.b(EGL14.eglChooseConfig(eglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr2, 0) && iArr2[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
                EGLConfig eGLConfig = eGLConfigArr[0];
                EGLContext eglCreateContext = EGL14.eglCreateContext(eglGetDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, z ? new int[]{12440, 2, 12992, 1, 12344} : new int[]{12440, 2, 12344}, 0);
                no1.b(eglCreateContext != null, "eglCreateContext failed");
                EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eglGetDisplay, eGLConfig, z ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
                no1.b(eglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
                no1.b(EGL14.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), "eglMakeCurrent failed");
                GLES20.glGenTextures(1, this.f6700e, 0);
                this.f6702g = new SurfaceTexture(this.f6700e[0]);
                this.f6702g.setOnFrameAvailableListener(this);
                this.f6705j = new zzok(this, this.f6702g, z);
                synchronized (this) {
                    notify();
                }
            } catch (Error e2) {
                this.f6703h = e2;
                synchronized (this) {
                    notify();
                }
            } catch (RuntimeException e3) {
                this.f6704i = e3;
                synchronized (this) {
                    notify();
                }
            }
            return true;
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f6701f.sendEmptyMessage(2);
    }

    public final void a() {
        this.f6701f.sendEmptyMessage(3);
    }
}
