package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(16)
/* loaded from: classes.dex */
public final class hp1 extends kl1 {
    private static final int[] B0 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private int A0;
    private final Context V;
    private final lp1 W;
    private final qp1 X;
    private final long Y;
    private final int Z;
    private final boolean a0;
    private final long[] b0;
    private zzgq[] c0;
    private jp1 d0;
    private Surface e0;
    private Surface f0;
    private int g0;
    private boolean h0;
    private long i0;
    private long j0;
    private int k0;
    private int l0;
    private int m0;
    private float n0;
    private int o0;
    private int p0;
    private int q0;
    private float r0;
    private int s0;
    private int t0;
    private int u0;
    private float v0;
    private boolean w0;
    private int x0;
    mp1 y0;
    private long z0;

    public hp1(Context context, ml1 ml1Var, long j2, Handler handler, np1 np1Var, int i2) {
        this(context, ml1Var, 0L, null, false, handler, np1Var, -1);
    }

    private final void A() {
        this.i0 = this.Y > 0 ? SystemClock.elapsedRealtime() + this.Y : -9223372036854775807L;
    }

    private final void B() {
        MediaCodec w;
        this.h0 = false;
        if (cp1.f6080a < 23 || !this.w0 || (w = w()) == null) {
            return;
        }
        this.y0 = new mp1(this, w);
    }

    private final void C() {
        this.s0 = -1;
        this.t0 = -1;
        this.v0 = -1.0f;
        this.u0 = -1;
    }

    private final void D() {
        if (this.s0 == this.o0 && this.t0 == this.p0 && this.u0 == this.q0 && this.v0 == this.r0) {
            return;
        }
        this.X.a(this.o0, this.p0, this.q0, this.r0);
        this.s0 = this.o0;
        this.t0 = this.p0;
        this.u0 = this.q0;
        this.v0 = this.r0;
    }

    private final void E() {
        if (this.s0 == -1 && this.t0 == -1) {
            return;
        }
        this.X.a(this.o0, this.p0, this.q0, this.r0);
    }

    private final void F() {
        if (this.k0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.X.a(this.k0, elapsedRealtime - this.j0);
            this.k0 = 0;
            this.j0 = elapsedRealtime;
        }
    }

    private static int c(zzgq zzgqVar) {
        int i2 = zzgqVar.f11194k;
        return i2 != -1 ? i2 : a(zzgqVar.f11193j, zzgqVar.n, zzgqVar.o);
    }

    private static boolean c(long j2) {
        return j2 < -30000;
    }

    private static int d(zzgq zzgqVar) {
        int i2 = zzgqVar.q;
        if (i2 == -1) {
            return 0;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final int a(ml1 ml1Var, zzgq zzgqVar) {
        boolean z;
        int i2;
        int i3;
        String str = zzgqVar.f11193j;
        if (!qo1.b(str)) {
            return 0;
        }
        zzil zzilVar = zzgqVar.m;
        if (zzilVar != null) {
            z = false;
            for (int i4 = 0; i4 < zzilVar.f11198g; i4++) {
                z |= zzilVar.a(i4).f11203i;
            }
        } else {
            z = false;
        }
        hl1 a2 = ml1Var.a(str, z);
        if (a2 == null) {
            return 1;
        }
        boolean a3 = a2.a(zzgqVar.f11190g);
        if (a3 && (i2 = zzgqVar.n) > 0 && (i3 = zzgqVar.o) > 0) {
            if (cp1.f6080a >= 21) {
                a3 = a2.a(i2, i3, zzgqVar.p);
            } else {
                a3 = i2 * i3 <= ol1.b();
                if (!a3) {
                    int i5 = zzgqVar.n;
                    int i6 = zzgqVar.o;
                    String str2 = cp1.f6084e;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 56);
                    sb.append("FalseCheck [legacyFrameSize, ");
                    sb.append(i5);
                    sb.append("x");
                    sb.append(i6);
                    sb.append("] [");
                    sb.append(str2);
                    sb.append("]");
                    sb.toString();
                }
            }
        }
        return (a3 ? 3 : 2) | (a2.f7110b ? 8 : 4) | (a2.f7111c ? 16 : 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1
    public final void b(zzgq zzgqVar) {
        super.b(zzgqVar);
        this.X.a(zzgqVar);
        float f2 = zzgqVar.r;
        if (f2 == -1.0f) {
            f2 = 1.0f;
        }
        this.n0 = f2;
        this.m0 = d(zzgqVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.vg1
    public final void f() {
        super.f();
        this.k0 = 0;
        this.j0 = SystemClock.elapsedRealtime();
        this.i0 = -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.vg1
    public final void g() {
        F();
        super.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.vg1
    public final void h() {
        this.o0 = -1;
        this.p0 = -1;
        this.r0 = -1.0f;
        this.n0 = -1.0f;
        this.z0 = -9223372036854775807L;
        this.A0 = 0;
        C();
        B();
        this.W.a();
        this.y0 = null;
        this.w0 = false;
        try {
            super.h();
        } finally {
            this.T.a();
            this.X.b(this.T);
        }
    }

    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.ph1
    public final boolean isReady() {
        Surface surface;
        if (super.isReady() && (this.h0 || (((surface = this.f0) != null && this.e0 == surface) || w() == null))) {
            this.i0 = -9223372036854775807L;
            return true;
        }
        if (this.i0 == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.i0) {
            return true;
        }
        this.i0 = -9223372036854775807L;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1
    public final void y() {
        try {
            super.y();
        } finally {
            Surface surface = this.f0;
            if (surface != null) {
                if (this.e0 == surface) {
                    this.e0 = null;
                }
                this.f0.release();
                this.f0 = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void z() {
        if (this.h0) {
            return;
        }
        this.h0 = true;
        this.X.a(this.e0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private hp1(Context context, ml1 ml1Var, long j2, lj1<Object> lj1Var, boolean z, Handler handler, np1 np1Var, int i2) {
        super(2, ml1Var, null, false);
        boolean z2 = false;
        this.Y = 0L;
        this.Z = -1;
        this.V = context.getApplicationContext();
        this.W = new lp1(context);
        this.X = new qp1(handler, np1Var);
        if (cp1.f6080a <= 22 && "foster".equals(cp1.f6081b) && "NVIDIA".equals(cp1.f6082c)) {
            z2 = true;
        }
        this.a0 = z2;
        this.b0 = new long[10];
        this.z0 = -9223372036854775807L;
        this.i0 = -9223372036854775807L;
        this.o0 = -1;
        this.p0 = -1;
        this.r0 = -1.0f;
        this.n0 = -1.0f;
        this.g0 = 1;
        C();
    }

    private final void b(MediaCodec mediaCodec, int i2, long j2) {
        D();
        zo1.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i2, true);
        zo1.a();
        this.T.f6651d++;
        this.l0 = 0;
        z();
    }

    private final boolean b(boolean z) {
        if (cp1.f6080a < 23 || this.w0) {
            return false;
        }
        return !z || zzok.a(this.V);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.vg1
    public final void a(boolean z) {
        super.a(z);
        this.x0 = j().f9135a;
        this.w0 = this.x0 != 0;
        this.X.a(this.T);
        this.W.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.vg1
    public final void a(zzgq[] zzgqVarArr, long j2) {
        this.c0 = zzgqVarArr;
        if (this.z0 == -9223372036854775807L) {
            this.z0 = j2;
        } else {
            int i2 = this.A0;
            long[] jArr = this.b0;
            if (i2 == jArr.length) {
                long j3 = jArr[i2 - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j3);
                sb.toString();
            } else {
                this.A0 = i2 + 1;
            }
            this.b0[this.A0 - 1] = j2;
        }
        super.a(zzgqVarArr, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.vg1
    public final void a(long j2, boolean z) {
        super.a(j2, z);
        B();
        this.l0 = 0;
        int i2 = this.A0;
        if (i2 != 0) {
            this.z0 = this.b0[i2 - 1];
            this.A0 = 0;
        }
        if (z) {
            A();
        } else {
            this.i0 = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.vg1, com.google.android.gms.internal.ads.bh1
    public final void a(int i2, Object obj) {
        if (i2 != 1) {
            if (i2 == 4) {
                this.g0 = ((Integer) obj).intValue();
                MediaCodec w = w();
                if (w != null) {
                    w.setVideoScalingMode(this.g0);
                    return;
                }
                return;
            }
            super.a(i2, obj);
            return;
        }
        Surface surface = (Surface) obj;
        if (surface == null) {
            Surface surface2 = this.f0;
            if (surface2 != null) {
                surface = surface2;
            } else {
                hl1 x = x();
                if (x != null && b(x.f7112d)) {
                    this.f0 = zzok.a(this.V, x.f7112d);
                    surface = this.f0;
                }
            }
        }
        if (this.e0 != surface) {
            this.e0 = surface;
            int b2 = b();
            if (b2 == 1 || b2 == 2) {
                MediaCodec w2 = w();
                if (cp1.f6080a >= 23 && w2 != null && surface != null) {
                    w2.setOutputSurface(surface);
                } else {
                    y();
                    v();
                }
            }
            if (surface != null && surface != this.f0) {
                E();
                B();
                if (b2 == 2) {
                    A();
                    return;
                }
                return;
            }
            C();
            B();
            return;
        }
        if (surface == null || surface == this.f0) {
            return;
        }
        E();
        if (this.h0) {
            this.X.a(this.e0);
        }
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final boolean a(hl1 hl1Var) {
        return this.e0 != null || b(hl1Var.f7112d);
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final void a(hl1 hl1Var, MediaCodec mediaCodec, zzgq zzgqVar, MediaCrypto mediaCrypto) {
        jp1 jp1Var;
        int i2;
        Point point;
        int[] iArr;
        zzgq[] zzgqVarArr = this.c0;
        int i3 = zzgqVar.n;
        int i4 = zzgqVar.o;
        int c2 = c(zzgqVar);
        if (zzgqVarArr.length == 1) {
            jp1Var = new jp1(i3, i4, c2);
        } else {
            int i5 = i4;
            int i6 = c2;
            boolean z = false;
            int i7 = i3;
            for (zzgq zzgqVar2 : zzgqVarArr) {
                if (a(hl1Var.f7110b, zzgqVar, zzgqVar2)) {
                    z |= zzgqVar2.n == -1 || zzgqVar2.o == -1;
                    i7 = Math.max(i7, zzgqVar2.n);
                    int max = Math.max(i5, zzgqVar2.o);
                    i6 = Math.max(i6, c(zzgqVar2));
                    i5 = max;
                }
            }
            if (z) {
                StringBuilder sb = new StringBuilder(66);
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(i7);
                sb.append("x");
                sb.append(i5);
                sb.toString();
                boolean z2 = zzgqVar.o > zzgqVar.n;
                int i8 = z2 ? zzgqVar.o : zzgqVar.n;
                int i9 = z2 ? zzgqVar.n : zzgqVar.o;
                float f2 = i9 / i8;
                int[] iArr2 = B0;
                int length = iArr2.length;
                int i10 = 0;
                while (i10 < length) {
                    int i11 = iArr2[i10];
                    int i12 = length;
                    int i13 = (int) (i11 * f2);
                    if (i11 <= i8 || i13 <= i9) {
                        break;
                    }
                    int i14 = i8;
                    int i15 = i9;
                    if (cp1.f6080a >= 21) {
                        int i16 = z2 ? i13 : i11;
                        if (z2) {
                            i13 = i11;
                        }
                        point = hl1Var.a(i16, i13);
                        i2 = i6;
                        iArr = iArr2;
                        if (hl1Var.a(point.x, point.y, zzgqVar.p)) {
                            break;
                        }
                        i10++;
                        length = i12;
                        i8 = i14;
                        i9 = i15;
                        i6 = i2;
                        iArr2 = iArr;
                    } else {
                        i2 = i6;
                        iArr = iArr2;
                        int a2 = cp1.a(i11, 16) << 4;
                        int a3 = cp1.a(i13, 16) << 4;
                        if (a2 * a3 <= ol1.b()) {
                            int i17 = z2 ? a3 : a2;
                            if (z2) {
                                a3 = a2;
                            }
                            point = new Point(i17, a3);
                        } else {
                            i10++;
                            length = i12;
                            i8 = i14;
                            i9 = i15;
                            i6 = i2;
                            iArr2 = iArr;
                        }
                    }
                }
                i2 = i6;
                point = null;
                if (point != null) {
                    i7 = Math.max(i7, point.x);
                    i5 = Math.max(i5, point.y);
                    i6 = Math.max(i2, a(zzgqVar.f11193j, i7, i5));
                    StringBuilder sb2 = new StringBuilder(57);
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(i7);
                    sb2.append("x");
                    sb2.append(i5);
                    sb2.toString();
                } else {
                    i6 = i2;
                }
            }
            jp1Var = new jp1(i7, i5, i6);
        }
        this.d0 = jp1Var;
        jp1 jp1Var2 = this.d0;
        boolean z3 = this.a0;
        int i18 = this.x0;
        MediaFormat b2 = zzgqVar.b();
        b2.setInteger("max-width", jp1Var2.f7548a);
        b2.setInteger("max-height", jp1Var2.f7549b);
        int i19 = jp1Var2.f7550c;
        if (i19 != -1) {
            b2.setInteger("max-input-size", i19);
        }
        if (z3) {
            b2.setInteger("auto-frc", 0);
        }
        if (i18 != 0) {
            b2.setFeatureEnabled("tunneled-playback", true);
            b2.setInteger("audio-session-id", i18);
        }
        if (this.e0 == null) {
            no1.b(b(hl1Var.f7112d));
            if (this.f0 == null) {
                this.f0 = zzok.a(this.V, hl1Var.f7112d);
            }
            this.e0 = this.f0;
        }
        mediaCodec.configure(b2, this.e0, (MediaCrypto) null, 0);
        if (cp1.f6080a < 23 || !this.w0) {
            return;
        }
        this.y0 = new mp1(this, mediaCodec);
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final void a(String str, long j2, long j3) {
        this.X.a(str, j2, j3);
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final void a(hj1 hj1Var) {
        if (cp1.f6080a >= 23 || !this.w0) {
            return;
        }
        z();
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        if (z) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger("width");
        }
        this.o0 = integer;
        if (z) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger("height");
        }
        this.p0 = integer2;
        this.r0 = this.n0;
        if (cp1.f6080a >= 21) {
            int i2 = this.m0;
            if (i2 == 90 || i2 == 270) {
                int i3 = this.o0;
                this.o0 = this.p0;
                this.p0 = i3;
                this.r0 = 1.0f / this.r0;
            }
        } else {
            this.q0 = this.m0;
        }
        mediaCodec.setVideoScalingMode(this.g0);
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final boolean a(MediaCodec mediaCodec, boolean z, zzgq zzgqVar, zzgq zzgqVar2) {
        if (!a(z, zzgqVar, zzgqVar2)) {
            return false;
        }
        int i2 = zzgqVar2.n;
        jp1 jp1Var = this.d0;
        return i2 <= jp1Var.f7548a && zzgqVar2.o <= jp1Var.f7549b && zzgqVar2.f11194k <= jp1Var.f7550c;
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final boolean a(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z) {
        while (true) {
            int i4 = this.A0;
            if (i4 == 0) {
                break;
            }
            long[] jArr = this.b0;
            if (j4 < jArr[0]) {
                break;
            }
            this.z0 = jArr[0];
            this.A0 = i4 - 1;
            System.arraycopy(jArr, 1, jArr, 0, this.A0);
        }
        long j5 = j4 - this.z0;
        if (z) {
            a(mediaCodec, i2, j5);
            return true;
        }
        long j6 = j4 - j2;
        if (this.e0 == this.f0) {
            if (!c(j6)) {
                return false;
            }
            a(mediaCodec, i2, j5);
            return true;
        }
        if (!this.h0) {
            if (cp1.f6080a >= 21) {
                a(mediaCodec, i2, j5, System.nanoTime());
            } else {
                b(mediaCodec, i2, j5);
            }
            return true;
        }
        if (b() != 2) {
            return false;
        }
        long elapsedRealtime = j6 - ((SystemClock.elapsedRealtime() * 1000) - j3);
        long nanoTime = System.nanoTime();
        long a2 = this.W.a(j4, (elapsedRealtime * 1000) + nanoTime);
        long j7 = (a2 - nanoTime) / 1000;
        if (c(j7)) {
            zo1.a("dropVideoBuffer");
            mediaCodec.releaseOutputBuffer(i2, false);
            zo1.a();
            fj1 fj1Var = this.T;
            fj1Var.f6653f++;
            this.k0++;
            this.l0++;
            fj1Var.f6654g = Math.max(this.l0, fj1Var.f6654g);
            if (this.k0 == this.Z) {
                F();
            }
            return true;
        }
        if (cp1.f6080a >= 21) {
            if (j7 < 50000) {
                a(mediaCodec, i2, j5, a2);
                return true;
            }
        } else if (j7 < 30000) {
            if (j7 > 11000) {
                try {
                    Thread.sleep((j7 - 10000) / 1000);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
            b(mediaCodec, i2, j5);
            return true;
        }
        return false;
    }

    private final void a(MediaCodec mediaCodec, int i2, long j2) {
        zo1.a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i2, false);
        zo1.a();
        this.T.f6652e++;
    }

    @TargetApi(21)
    private final void a(MediaCodec mediaCodec, int i2, long j2, long j3) {
        D();
        zo1.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i2, j3);
        zo1.a();
        this.T.f6651d++;
        this.l0 = 0;
        z();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int a(String str, int i2, int i3) {
        char c2;
        int i4;
        if (i2 == -1 || i3 == -1) {
            return -1;
        }
        int i5 = 4;
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 != 0 && c2 != 1) {
            if (c2 == 2) {
                if ("BRAVIA 4K 2015".equals(cp1.f6083d)) {
                    return -1;
                }
                i4 = ((cp1.a(i2, 16) * cp1.a(i3, 16)) << 4) << 4;
                i5 = 2;
                return (i4 * 3) / (i5 * 2);
            }
            if (c2 != 3) {
                if (c2 != 4 && c2 != 5) {
                    return -1;
                }
                i4 = i2 * i3;
                return (i4 * 3) / (i5 * 2);
            }
        }
        i4 = i2 * i3;
        i5 = 2;
        return (i4 * 3) / (i5 * 2);
    }

    private static boolean a(boolean z, zzgq zzgqVar, zzgq zzgqVar2) {
        if (!zzgqVar.f11193j.equals(zzgqVar2.f11193j) || d(zzgqVar) != d(zzgqVar2)) {
            return false;
        }
        if (z) {
            return true;
        }
        return zzgqVar.n == zzgqVar2.n && zzgqVar.o == zzgqVar2.o;
    }
}
