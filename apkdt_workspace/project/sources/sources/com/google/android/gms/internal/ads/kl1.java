package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(16)
/* loaded from: classes.dex */
public abstract class kl1 extends vg1 {
    private static final byte[] U = cp1.e("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private ByteBuffer[] E;
    private ByteBuffer[] F;
    private long G;
    private int H;
    private int I;
    private boolean J;
    private boolean K;
    private int L;
    private int M;
    private boolean N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean S;
    protected fj1 T;

    /* renamed from: i, reason: collision with root package name */
    private final ml1 f7717i;

    /* renamed from: j, reason: collision with root package name */
    private final lj1<Object> f7718j;

    /* renamed from: k, reason: collision with root package name */
    private final boolean f7719k;

    /* renamed from: l, reason: collision with root package name */
    private final hj1 f7720l;
    private final hj1 m;
    private final mh1 n;
    private final List<Long> o;
    private final MediaCodec.BufferInfo p;
    private zzgq q;
    private jj1<Object> r;
    private jj1<Object> s;
    private MediaCodec t;
    private hl1 u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    public kl1(int i2, ml1 ml1Var, lj1<Object> lj1Var, boolean z) {
        super(i2);
        no1.b(cp1.f6080a >= 16);
        no1.a(ml1Var);
        this.f7717i = ml1Var;
        this.f7718j = lj1Var;
        this.f7719k = z;
        this.f7720l = new hj1(0);
        this.m = new hj1(0);
        this.n = new mh1();
        this.o = new ArrayList();
        this.p = new MediaCodec.BufferInfo();
        this.L = 0;
        this.M = 0;
    }

    private final void A() {
        if (this.M == 2) {
            y();
            v();
        } else {
            this.Q = true;
            u();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x014b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x014c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean z() {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.kl1.z():boolean");
    }

    protected abstract int a(ml1 ml1Var, zzgq zzgqVar);

    @Override // com.google.android.gms.internal.ads.sh1
    public final int a(zzgq zzgqVar) {
        try {
            return a(this.f7717i, zzgqVar);
        } catch (pl1 e2) {
            throw wg1.zza(e2, e());
        }
    }

    protected abstract void a(MediaCodec mediaCodec, MediaFormat mediaFormat);

    protected void a(hj1 hj1Var) {
    }

    protected abstract void a(hl1 hl1Var, MediaCodec mediaCodec, zzgq zzgqVar, MediaCrypto mediaCrypto);

    protected abstract void a(String str, long j2, long j3);

    protected abstract boolean a(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z);

    protected boolean a(MediaCodec mediaCodec, boolean z, zzgq zzgqVar, zzgq zzgqVar2) {
        return false;
    }

    protected boolean a(hl1 hl1Var) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0077, code lost:
    
        if (r5.o == r0.o) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(com.google.android.gms.internal.ads.zzgq r5) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzgq r0 = r4.q
            r4.q = r5
            com.google.android.gms.internal.ads.zzgq r5 = r4.q
            com.google.android.gms.internal.ads.zzil r5 = r5.m
            r1 = 0
            if (r0 != 0) goto Ld
            r2 = r1
            goto Lf
        Ld:
            com.google.android.gms.internal.ads.zzil r2 = r0.m
        Lf:
            boolean r5 = com.google.android.gms.internal.ads.cp1.a(r5, r2)
            r2 = 1
            r5 = r5 ^ r2
            if (r5 == 0) goto L4d
            com.google.android.gms.internal.ads.zzgq r5 = r4.q
            com.google.android.gms.internal.ads.zzil r5 = r5.m
            if (r5 == 0) goto L4b
            com.google.android.gms.internal.ads.lj1<java.lang.Object> r5 = r4.f7718j
            if (r5 == 0) goto L3b
            android.os.Looper r1 = android.os.Looper.myLooper()
            com.google.android.gms.internal.ads.zzgq r3 = r4.q
            com.google.android.gms.internal.ads.zzil r3 = r3.m
            com.google.android.gms.internal.ads.jj1 r5 = r5.a(r1, r3)
            r4.s = r5
            com.google.android.gms.internal.ads.jj1<java.lang.Object> r5 = r4.s
            com.google.android.gms.internal.ads.jj1<java.lang.Object> r1 = r4.r
            if (r5 != r1) goto L4d
            com.google.android.gms.internal.ads.lj1<java.lang.Object> r1 = r4.f7718j
            r1.a(r5)
            goto L4d
        L3b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "Media requires a DrmSessionManager"
            r5.<init>(r0)
            int r0 = r4.e()
            com.google.android.gms.internal.ads.wg1 r5 = com.google.android.gms.internal.ads.wg1.zza(r5, r0)
            throw r5
        L4b:
            r4.s = r1
        L4d:
            com.google.android.gms.internal.ads.jj1<java.lang.Object> r5 = r4.s
            com.google.android.gms.internal.ads.jj1<java.lang.Object> r1 = r4.r
            if (r5 != r1) goto L7e
            android.media.MediaCodec r5 = r4.t
            if (r5 == 0) goto L7e
            com.google.android.gms.internal.ads.hl1 r1 = r4.u
            boolean r1 = r1.f7110b
            com.google.android.gms.internal.ads.zzgq r3 = r4.q
            boolean r5 = r4.a(r5, r1, r0, r3)
            if (r5 == 0) goto L7e
            r4.K = r2
            r4.L = r2
            boolean r5 = r4.x
            if (r5 == 0) goto L7a
            com.google.android.gms.internal.ads.zzgq r5 = r4.q
            int r1 = r5.n
            int r3 = r0.n
            if (r1 != r3) goto L7a
            int r5 = r5.o
            int r0 = r0.o
            if (r5 != r0) goto L7a
            goto L7b
        L7a:
            r2 = 0
        L7b:
            r4.C = r2
            return
        L7e:
            boolean r5 = r4.N
            if (r5 == 0) goto L85
            r4.M = r2
            return
        L85:
            r4.y()
            r4.v()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.kl1.b(com.google.android.gms.internal.ads.zzgq):void");
    }

    @Override // com.google.android.gms.internal.ads.sh1
    public final int d() {
        return 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.vg1
    public void f() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.vg1
    public void g() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.vg1
    public void h() {
        this.q = null;
        try {
            y();
            try {
                if (this.r != null) {
                    this.f7718j.a(this.r);
                }
                try {
                    if (this.s != null && this.s != this.r) {
                        this.f7718j.a(this.s);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    if (this.s != null && this.s != this.r) {
                        this.f7718j.a(this.s);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.r != null) {
                    this.f7718j.a(this.r);
                }
                try {
                    if (this.s != null && this.s != this.r) {
                        this.f7718j.a(this.s);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    if (this.s != null && this.s != this.r) {
                        this.f7718j.a(this.s);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public boolean isReady() {
        if (this.q == null || this.R) {
            return false;
        }
        if (t() || this.I >= 0) {
            return true;
        }
        return this.G != -9223372036854775807L && SystemClock.elapsedRealtime() < this.G;
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public boolean l() {
        return this.Q;
    }

    protected void u() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void v() {
        zzgq zzgqVar;
        if (this.t != null || (zzgqVar = this.q) == null) {
            return;
        }
        this.r = this.s;
        String str = zzgqVar.f11193j;
        jj1<Object> jj1Var = this.r;
        if (jj1Var != null) {
            int b2 = jj1Var.b();
            if (b2 == 0) {
                throw wg1.zza(this.r.c(), e());
            }
            if (b2 == 3 || b2 == 4) {
                this.r.a();
                throw new NoSuchMethodError();
            }
            return;
        }
        if (this.u == null) {
            try {
                this.u = a(this.f7717i, zzgqVar, false);
                hl1 hl1Var = this.u;
                if (this.u == null) {
                    a(new jl1(this.q, (Throwable) null, false, -49999));
                    throw null;
                }
            } catch (pl1 e2) {
                a(new jl1(this.q, (Throwable) e2, false, -49998));
                throw null;
            }
        }
        if (a(this.u)) {
            String str2 = this.u.f7109a;
            this.v = cp1.f6080a < 21 && this.q.f11195l.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str2);
            int i2 = cp1.f6080a;
            this.w = i2 < 18 || (i2 == 18 && ("OMX.SEC.avc.dec".equals(str2) || "OMX.SEC.avc.dec.secure".equals(str2))) || (cp1.f6080a == 19 && cp1.f6083d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str2) || "OMX.Exynos.avc.dec.secure".equals(str2)));
            this.x = cp1.f6080a < 24 && ("OMX.Nvidia.h264.decode".equals(str2) || "OMX.Nvidia.h264.decode.secure".equals(str2)) && ("flounder".equals(cp1.f6081b) || "flounder_lte".equals(cp1.f6081b) || "grouper".equals(cp1.f6081b) || "tilapia".equals(cp1.f6081b));
            this.y = cp1.f6080a <= 17 && ("OMX.rk.video_decoder.avc".equals(str2) || "OMX.allwinner.video.decoder.avc".equals(str2));
            this.z = (cp1.f6080a <= 23 && "OMX.google.vorbis.decoder".equals(str2)) || (cp1.f6080a <= 19 && "hb2000".equals(cp1.f6081b) && ("OMX.amlogic.avc.decoder.awesome".equals(str2) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str2)));
            this.A = cp1.f6080a == 21 && "OMX.google.aac.decoder".equals(str2);
            this.B = cp1.f6080a <= 18 && this.q.v == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str2);
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                String valueOf = String.valueOf(str2);
                zo1.a(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
                this.t = MediaCodec.createByCodecName(str2);
                zo1.a();
                zo1.a("configureCodec");
                a(this.u, this.t, this.q, (MediaCrypto) null);
                zo1.a();
                zo1.a("startCodec");
                this.t.start();
                zo1.a();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                a(str2, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                this.E = this.t.getInputBuffers();
                this.F = this.t.getOutputBuffers();
                this.G = b() == 2 ? SystemClock.elapsedRealtime() + 1000 : -9223372036854775807L;
                this.H = -1;
                this.I = -1;
                this.S = true;
                this.T.f6648a++;
            } catch (Exception e3) {
                a(new jl1(this.q, (Throwable) e3, false, str2));
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaCodec w() {
        return this.t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final hl1 x() {
        return this.u;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void y() {
        this.G = -9223372036854775807L;
        this.H = -1;
        this.I = -1;
        this.R = false;
        this.J = false;
        this.o.clear();
        this.E = null;
        this.F = null;
        this.u = null;
        this.K = false;
        this.N = false;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = false;
        this.B = false;
        this.C = false;
        this.D = false;
        this.O = false;
        this.L = 0;
        this.M = 0;
        this.f7720l.f7091c = null;
        MediaCodec mediaCodec = this.t;
        if (mediaCodec != null) {
            this.T.f6649b++;
            try {
                mediaCodec.stop();
                try {
                    this.t.release();
                    this.t = null;
                    jj1<Object> jj1Var = this.r;
                    if (jj1Var == null || this.s == jj1Var) {
                        return;
                    }
                    try {
                        this.f7718j.a(jj1Var);
                    } finally {
                    }
                } catch (Throwable th) {
                    this.t = null;
                    jj1<Object> jj1Var2 = this.r;
                    if (jj1Var2 != null && this.s != jj1Var2) {
                        try {
                            this.f7718j.a(jj1Var2);
                        } finally {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    this.t.release();
                    this.t = null;
                    jj1<Object> jj1Var3 = this.r;
                    if (jj1Var3 != null && this.s != jj1Var3) {
                        try {
                            this.f7718j.a(jj1Var3);
                        } finally {
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    this.t = null;
                    jj1<Object> jj1Var4 = this.r;
                    if (jj1Var4 != null && this.s != jj1Var4) {
                        try {
                            this.f7718j.a(jj1Var4);
                        } finally {
                        }
                    }
                    throw th3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public hl1 a(ml1 ml1Var, zzgq zzgqVar, boolean z) {
        return ml1Var.a(zzgqVar.f11193j, z);
    }

    private final void a(jl1 jl1Var) {
        throw wg1.zza(jl1Var, e());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.vg1
    public void a(boolean z) {
        this.T = new fj1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.vg1
    public void a(long j2, boolean z) {
        this.P = false;
        this.Q = false;
        if (this.t != null) {
            this.G = -9223372036854775807L;
            this.H = -1;
            this.I = -1;
            this.S = true;
            this.R = false;
            this.J = false;
            this.o.clear();
            this.C = false;
            this.D = false;
            if (!this.w && (!this.z || !this.O)) {
                if (this.M != 0) {
                    y();
                    v();
                } else {
                    this.t.flush();
                    this.N = false;
                }
            } else {
                y();
                v();
            }
            if (!this.K || this.q == null) {
                return;
            }
            this.L = 1;
        }
    }

    private final boolean b(long j2, long j3) {
        boolean a2;
        boolean z;
        if (this.I < 0) {
            if (this.A && this.O) {
                try {
                    this.I = this.t.dequeueOutputBuffer(this.p, 0L);
                } catch (IllegalStateException unused) {
                    A();
                    if (this.Q) {
                        y();
                    }
                    return false;
                }
            } else {
                this.I = this.t.dequeueOutputBuffer(this.p, 0L);
            }
            int i2 = this.I;
            if (i2 < 0) {
                if (i2 != -2) {
                    if (i2 == -3) {
                        this.F = this.t.getOutputBuffers();
                        return true;
                    }
                    if (this.y && (this.P || this.M == 2)) {
                        A();
                    }
                    return false;
                }
                MediaFormat outputFormat = this.t.getOutputFormat();
                if (this.x && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                    this.D = true;
                } else {
                    if (this.B) {
                        outputFormat.setInteger("channel-count", 1);
                    }
                    a(this.t, outputFormat);
                }
                return true;
            }
            if (this.D) {
                this.D = false;
                this.t.releaseOutputBuffer(i2, false);
                this.I = -1;
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.p;
            if ((bufferInfo.flags & 4) != 0) {
                A();
                this.I = -1;
                return false;
            }
            ByteBuffer byteBuffer = this.F[i2];
            if (byteBuffer != null) {
                byteBuffer.position(bufferInfo.offset);
                MediaCodec.BufferInfo bufferInfo2 = this.p;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            long j4 = this.p.presentationTimeUs;
            int size = this.o.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    z = false;
                    break;
                }
                if (this.o.get(i3).longValue() == j4) {
                    this.o.remove(i3);
                    z = true;
                    break;
                }
                i3++;
            }
            this.J = z;
        }
        if (this.A && this.O) {
            try {
                a2 = a(j2, j3, this.t, this.F[this.I], this.I, this.p.flags, this.p.presentationTimeUs, this.J);
            } catch (IllegalStateException unused2) {
                A();
                if (this.Q) {
                    y();
                }
                return false;
            }
        } else {
            MediaCodec mediaCodec = this.t;
            ByteBuffer[] byteBufferArr = this.F;
            int i4 = this.I;
            ByteBuffer byteBuffer2 = byteBufferArr[i4];
            MediaCodec.BufferInfo bufferInfo3 = this.p;
            a2 = a(j2, j3, mediaCodec, byteBuffer2, i4, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.J);
        }
        if (!a2) {
            return false;
        }
        long j5 = this.p.presentationTimeUs;
        this.I = -1;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ph1
    public final void a(long j2, long j3) {
        if (this.Q) {
            u();
            return;
        }
        if (this.q == null) {
            this.m.a();
            int a2 = a(this.n, this.m, true);
            if (a2 != -5) {
                if (a2 == -4) {
                    no1.b(this.m.c());
                    this.P = true;
                    A();
                    return;
                }
                return;
            }
            b(this.n.f8140a);
        }
        v();
        if (this.t != null) {
            zo1.a("drainAndFeed");
            do {
            } while (b(j2, j3));
            do {
            } while (z());
            zo1.a();
        } else {
            b(j2);
            this.m.a();
            int a3 = a(this.n, this.m, false);
            if (a3 == -5) {
                b(this.n.f8140a);
            } else if (a3 == -4) {
                no1.b(this.m.c());
                this.P = true;
                A();
            }
        }
        this.T.a();
    }
}
