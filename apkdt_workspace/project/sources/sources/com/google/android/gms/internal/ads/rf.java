package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import com.google.android.gms.common.util.VisibleForTesting;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(14)
/* loaded from: classes.dex */
public final class rf extends Thread implements SurfaceTexture.OnFrameAvailableListener, of {
    private static final float[] F = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private EGLDisplay A;
    private EGLContext B;
    private EGLSurface C;
    private volatile boolean D;
    private volatile boolean E;

    /* renamed from: e, reason: collision with root package name */
    private final mf f9112e;

    /* renamed from: f, reason: collision with root package name */
    private final float[] f9113f;

    /* renamed from: g, reason: collision with root package name */
    private final float[] f9114g;

    /* renamed from: h, reason: collision with root package name */
    private final float[] f9115h;

    /* renamed from: i, reason: collision with root package name */
    private final float[] f9116i;

    /* renamed from: j, reason: collision with root package name */
    private final float[] f9117j;

    /* renamed from: k, reason: collision with root package name */
    private final float[] f9118k;

    /* renamed from: l, reason: collision with root package name */
    private final float[] f9119l;
    private float m;
    private float n;
    private float o;
    private int p;
    private int q;
    private SurfaceTexture r;
    private SurfaceTexture s;
    private int t;
    private int u;
    private int v;
    private FloatBuffer w;
    private final CountDownLatch x;
    private final Object y;
    private EGL10 z;

    public rf(Context context) {
        super("SphericalVideoProcessor");
        this.w = ByteBuffer.allocateDirect(F.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.w.put(F).position(0);
        this.f9113f = new float[9];
        this.f9114g = new float[9];
        this.f9115h = new float[9];
        this.f9116i = new float[9];
        this.f9117j = new float[9];
        this.f9118k = new float[9];
        this.f9119l = new float[9];
        this.m = Float.NaN;
        this.f9112e = new mf(context);
        this.f9112e.a(this);
        this.x = new CountDownLatch(1);
        this.y = new Object();
    }

    @VisibleForTesting
    private final boolean d() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2 = this.C;
        boolean z = false;
        if (eGLSurface2 != null && eGLSurface2 != (eGLSurface = EGL10.EGL_NO_SURFACE)) {
            z = this.z.eglDestroySurface(this.A, this.C) | this.z.eglMakeCurrent(this.A, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT) | false;
            this.C = null;
        }
        EGLContext eGLContext = this.B;
        if (eGLContext != null) {
            z |= this.z.eglDestroyContext(this.A, eGLContext);
            this.B = null;
        }
        EGLDisplay eGLDisplay = this.A;
        if (eGLDisplay == null) {
            return z;
        }
        boolean eglTerminate = z | this.z.eglTerminate(eGLDisplay);
        this.A = null;
        return eglTerminate;
    }

    public final void a(SurfaceTexture surfaceTexture, int i2, int i3) {
        this.q = i2;
        this.p = i3;
        this.s = surfaceTexture;
    }

    public final SurfaceTexture b() {
        if (this.s == null) {
            return null;
        }
        try {
            this.x.await();
        } catch (InterruptedException unused) {
        }
        return this.r;
    }

    @Override // com.google.android.gms.internal.ads.of
    public final void c() {
        synchronized (this.y) {
            this.y.notifyAll();
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.v++;
        synchronized (this.y) {
            this.y.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01ce A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00be  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 1026
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.rf.run():void");
    }

    private static void b(float[] fArr, float f2) {
        double d2 = f2;
        fArr[0] = (float) Math.cos(d2);
        fArr[1] = (float) (-Math.sin(d2));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d2);
        fArr[4] = (float) Math.cos(d2);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    public final void a(int i2, int i3) {
        synchronized (this.y) {
            this.q = i2;
            this.p = i3;
            this.D = true;
            this.y.notifyAll();
        }
    }

    public final void a() {
        synchronized (this.y) {
            this.E = true;
            this.s = null;
            this.y.notifyAll();
        }
    }

    public final void a(float f2, float f3) {
        float f4;
        float f5;
        float f6;
        int i2 = this.q;
        int i3 = this.p;
        if (i2 > i3) {
            f4 = (f2 * 1.7453293f) / i2;
            f5 = f3 * 1.7453293f;
            f6 = i2;
        } else {
            f4 = (f2 * 1.7453293f) / i3;
            f5 = f3 * 1.7453293f;
            f6 = i3;
        }
        this.n -= f4;
        this.o -= f5 / f6;
        if (this.o < -1.5707964f) {
            this.o = -1.5707964f;
        }
        if (this.o > 1.5707964f) {
            this.o = 1.5707964f;
        }
    }

    private static void a(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = (fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[3]) + (fArr2[2] * fArr3[6]);
        fArr[1] = (fArr2[0] * fArr3[1]) + (fArr2[1] * fArr3[4]) + (fArr2[2] * fArr3[7]);
        fArr[2] = (fArr2[0] * fArr3[2]) + (fArr2[1] * fArr3[5]) + (fArr2[2] * fArr3[8]);
        fArr[3] = (fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[3]) + (fArr2[5] * fArr3[6]);
        fArr[4] = (fArr2[3] * fArr3[1]) + (fArr2[4] * fArr3[4]) + (fArr2[5] * fArr3[7]);
        fArr[5] = (fArr2[3] * fArr3[2]) + (fArr2[4] * fArr3[5]) + (fArr2[5] * fArr3[8]);
        fArr[6] = (fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[3]) + (fArr2[8] * fArr3[6]);
        fArr[7] = (fArr2[6] * fArr3[1]) + (fArr2[7] * fArr3[4]) + (fArr2[8] * fArr3[7]);
        fArr[8] = (fArr2[6] * fArr3[2]) + (fArr2[7] * fArr3[5]) + (fArr2[8] * fArr3[8]);
    }

    private static void a(float[] fArr, float f2) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d2 = f2;
        fArr[4] = (float) Math.cos(d2);
        fArr[5] = (float) (-Math.sin(d2));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d2);
        fArr[8] = (float) Math.cos(d2);
    }

    private static int a(int i2, String str) {
        int glCreateShader = GLES20.glCreateShader(i2);
        a("createShader");
        if (glCreateShader == 0) {
            return glCreateShader;
        }
        GLES20.glShaderSource(glCreateShader, str);
        a("shaderSource");
        GLES20.glCompileShader(glCreateShader);
        a("compileShader");
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        a("getShaderiv");
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Could not compile shader ");
        sb.append(i2);
        sb.append(":");
        sb.toString();
        GLES20.glGetShaderInfoLog(glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        a("deleteShader");
        return 0;
    }

    private static void a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
            sb.append(str);
            sb.append(": glError ");
            sb.append(glGetError);
            sb.toString();
        }
    }
}
