package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class li1 {
    private long A;
    private long B;
    private boolean C;
    private long D;
    private Method E;
    private int F;
    private long G;
    private long H;
    private int I;
    private long J;
    private long K;
    private int L;
    private int M;
    private long N;
    private long O;
    private long P;
    private float Q;
    private bi1[] R;
    private ByteBuffer[] S;
    private ByteBuffer T;
    private ByteBuffer U;
    private byte[] V;
    private int W;
    private int X;
    private boolean Y;
    private boolean Z;
    private int a0;

    /* renamed from: b, reason: collision with root package name */
    private final si1 f7898b;
    private boolean b0;

    /* renamed from: c, reason: collision with root package name */
    private final cj1 f7899c;
    private boolean c0;

    /* renamed from: d, reason: collision with root package name */
    private final bi1[] f7900d;
    private long d0;

    /* renamed from: e, reason: collision with root package name */
    private final ri1 f7901e;

    /* renamed from: g, reason: collision with root package name */
    private final long[] f7903g;

    /* renamed from: h, reason: collision with root package name */
    private final ni1 f7904h;

    /* renamed from: i, reason: collision with root package name */
    private final LinkedList<qi1> f7905i;

    /* renamed from: j, reason: collision with root package name */
    private AudioTrack f7906j;

    /* renamed from: k, reason: collision with root package name */
    private int f7907k;

    /* renamed from: l, reason: collision with root package name */
    private int f7908l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private int q;
    private long r;
    private qh1 s;
    private qh1 t;
    private long u;
    private long v;
    private ByteBuffer w;
    private int x;
    private int y;
    private int z;

    /* renamed from: a, reason: collision with root package name */
    private final yh1 f7897a = null;

    /* renamed from: f, reason: collision with root package name */
    private final ConditionVariable f7902f = new ConditionVariable(true);

    public li1(yh1 yh1Var, bi1[] bi1VarArr, ri1 ri1Var) {
        ki1 ki1Var = null;
        this.f7901e = ri1Var;
        if (cp1.f6080a >= 18) {
            try {
                this.E = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        if (cp1.f6080a >= 19) {
            this.f7904h = new mi1();
        } else {
            this.f7904h = new ni1(ki1Var);
        }
        this.f7898b = new si1();
        this.f7899c = new cj1();
        this.f7900d = new bi1[bi1VarArr.length + 3];
        this.f7900d[0] = new aj1();
        bi1[] bi1VarArr2 = this.f7900d;
        bi1VarArr2[1] = this.f7898b;
        System.arraycopy(bi1VarArr, 0, bi1VarArr2, 2, bi1VarArr.length);
        this.f7900d[bi1VarArr.length + 2] = this.f7899c;
        this.f7903g = new long[10];
        this.Q = 1.0f;
        this.M = 0;
        this.o = 3;
        this.a0 = 0;
        this.t = qh1.f8911d;
        this.X = -1;
        this.R = new bi1[0];
        this.S = new ByteBuffer[0];
        this.f7905i = new LinkedList<>();
    }

    private final boolean k() {
        return this.f7906j != null;
    }

    private final void l() {
        ArrayList arrayList = new ArrayList();
        for (bi1 bi1Var : this.f7900d) {
            if (bi1Var.i()) {
                arrayList.add(bi1Var);
            } else {
                bi1Var.flush();
            }
        }
        int size = arrayList.size();
        this.R = (bi1[]) arrayList.toArray(new bi1[size]);
        this.S = new ByteBuffer[size];
        for (int i2 = 0; i2 < size; i2++) {
            bi1 bi1Var2 = this.R[i2];
            bi1Var2.flush();
            this.S[i2] = bi1Var2.j();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0032 -> B:7:0x0012). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m() {
        /*
            r9 = this;
            int r0 = r9.X
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L14
            boolean r0 = r9.p
            if (r0 == 0) goto Lf
            com.google.android.gms.internal.ads.bi1[] r0 = r9.R
            int r0 = r0.length
            goto L10
        Lf:
            r0 = 0
        L10:
            r9.X = r0
        L12:
            r0 = 1
            goto L15
        L14:
            r0 = 0
        L15:
            int r4 = r9.X
            com.google.android.gms.internal.ads.bi1[] r5 = r9.R
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L38
            r4 = r5[r4]
            if (r0 == 0) goto L28
            r4.m()
        L28:
            r9.a(r7)
            boolean r0 = r4.l()
            if (r0 != 0) goto L32
            return r3
        L32:
            int r0 = r9.X
            int r0 = r0 + r2
            r9.X = r0
            goto L12
        L38:
            java.nio.ByteBuffer r0 = r9.U
            if (r0 == 0) goto L44
            r9.b(r0, r7)
            java.nio.ByteBuffer r0 = r9.U
            if (r0 == 0) goto L44
            return r3
        L44:
            r9.X = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.li1.m():boolean");
    }

    private final void n() {
        if (k()) {
            if (cp1.f6080a >= 21) {
                this.f7906j.setVolume(this.Q);
                return;
            }
            AudioTrack audioTrack = this.f7906j;
            float f2 = this.Q;
            audioTrack.setStereoVolume(f2, f2);
        }
    }

    private final long o() {
        return this.p ? this.K : this.J / this.I;
    }

    private final void p() {
        this.A = 0L;
        this.z = 0;
        this.y = 0;
        this.B = 0L;
        this.C = false;
        this.D = 0L;
    }

    private final boolean q() {
        if (cp1.f6080a >= 23) {
            return false;
        }
        int i2 = this.n;
        return i2 == 5 || i2 == 6;
    }

    public final boolean a(String str) {
        yh1 yh1Var = this.f7897a;
        return yh1Var != null && yh1Var.a(b(str));
    }

    public final void b() {
        this.Z = true;
        if (k()) {
            this.O = System.nanoTime() / 1000;
            this.f7906j.play();
        }
    }

    public final void c() {
        d();
        for (bi1 bi1Var : this.f7900d) {
            bi1Var.a();
        }
        this.a0 = 0;
        this.Z = false;
    }

    public final void d() {
        if (k()) {
            this.G = 0L;
            this.H = 0L;
            this.J = 0L;
            this.K = 0L;
            this.L = 0;
            qh1 qh1Var = this.s;
            if (qh1Var != null) {
                this.t = qh1Var;
                this.s = null;
            } else if (!this.f7905i.isEmpty()) {
                this.t = qi1.a(this.f7905i.getLast());
            }
            this.f7905i.clear();
            this.u = 0L;
            this.v = 0L;
            this.T = null;
            this.U = null;
            int i2 = 0;
            while (true) {
                bi1[] bi1VarArr = this.R;
                if (i2 >= bi1VarArr.length) {
                    break;
                }
                bi1 bi1Var = bi1VarArr[i2];
                bi1Var.flush();
                this.S[i2] = bi1Var.j();
                i2++;
            }
            this.Y = false;
            this.X = -1;
            this.w = null;
            this.x = 0;
            this.M = 0;
            this.P = 0L;
            p();
            if (this.f7906j.getPlayState() == 3) {
                this.f7906j.pause();
            }
            AudioTrack audioTrack = this.f7906j;
            this.f7906j = null;
            this.f7904h.a(null, false);
            this.f7902f.close();
            new ki1(this, audioTrack).start();
        }
    }

    public final boolean e() {
        if (k()) {
            return this.Y && !h();
        }
        return true;
    }

    public final void f() {
        if (this.M == 1) {
            this.M = 2;
        }
    }

    public final void g() {
        if (!this.Y && k() && m()) {
            this.f7904h.a(o());
            this.x = 0;
            this.Y = true;
        }
    }

    public final boolean h() {
        if (k()) {
            if (o() <= this.f7904h.e()) {
                if (q() && this.f7906j.getPlayState() == 2 && this.f7906j.getPlaybackHeadPosition() == 0) {
                }
            }
            return true;
        }
        return false;
    }

    public final qh1 i() {
        return this.t;
    }

    public final void j() {
        if (this.b0) {
            this.b0 = false;
            this.a0 = 0;
            d();
        }
    }

    public final long a(boolean z) {
        long j2;
        long j3;
        long j4;
        long j5;
        if (!(k() && this.M != 0)) {
            return Long.MIN_VALUE;
        }
        if (this.f7906j.getPlayState() == 3) {
            long f2 = this.f7904h.f();
            if (f2 != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - this.B >= 30000) {
                    long[] jArr = this.f7903g;
                    int i2 = this.y;
                    jArr[i2] = f2 - nanoTime;
                    this.y = (i2 + 1) % 10;
                    int i3 = this.z;
                    if (i3 < 10) {
                        this.z = i3 + 1;
                    }
                    this.B = nanoTime;
                    this.A = 0L;
                    int i4 = 0;
                    while (true) {
                        int i5 = this.z;
                        if (i4 >= i5) {
                            break;
                        }
                        this.A += this.f7903g[i4] / i5;
                        i4++;
                    }
                }
                if (!q() && nanoTime - this.D >= 500000) {
                    this.C = this.f7904h.b();
                    if (this.C) {
                        long c2 = this.f7904h.c() / 1000;
                        long d2 = this.f7904h.d();
                        if (c2 < this.O) {
                            this.C = false;
                        } else if (Math.abs(c2 - nanoTime) > 5000000) {
                            StringBuilder sb = new StringBuilder(136);
                            sb.append("Spurious audio timestamp (system clock mismatch): ");
                            sb.append(d2);
                            sb.append(", ");
                            sb.append(c2);
                            sb.append(", ");
                            sb.append(nanoTime);
                            sb.append(", ");
                            sb.append(f2);
                            sb.toString();
                            this.C = false;
                        } else if (Math.abs(b(d2) - f2) > 5000000) {
                            StringBuilder sb2 = new StringBuilder(138);
                            sb2.append("Spurious audio timestamp (frame position mismatch): ");
                            sb2.append(d2);
                            sb2.append(", ");
                            sb2.append(c2);
                            sb2.append(", ");
                            sb2.append(nanoTime);
                            sb2.append(", ");
                            sb2.append(f2);
                            sb2.toString();
                            this.C = false;
                        }
                    }
                    if (this.E != null && !this.p) {
                        try {
                            this.P = (((Integer) r1.invoke(this.f7906j, null)).intValue() * 1000) - this.r;
                            this.P = Math.max(this.P, 0L);
                            if (this.P > 5000000) {
                                long j6 = this.P;
                                StringBuilder sb3 = new StringBuilder(61);
                                sb3.append("Ignoring impossibly large audio latency: ");
                                sb3.append(j6);
                                sb3.toString();
                                this.P = 0L;
                            }
                        } catch (Exception unused) {
                            this.E = null;
                        }
                    }
                    this.D = nanoTime;
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        if (this.C) {
            j2 = b(this.f7904h.d() + c(nanoTime2 - (this.f7904h.c() / 1000)));
        } else {
            if (this.z == 0) {
                j2 = this.f7904h.f();
            } else {
                j2 = nanoTime2 + this.A;
            }
            if (!z) {
                j2 -= this.P;
            }
        }
        long j7 = this.N;
        while (!this.f7905i.isEmpty() && j2 >= qi1.b(this.f7905i.getFirst())) {
            qi1 remove = this.f7905i.remove();
            this.t = qi1.a(remove);
            this.v = qi1.b(remove);
            this.u = qi1.c(remove) - this.N;
        }
        if (this.t.f8912a == 1.0f) {
            j5 = (j2 + this.u) - this.v;
        } else {
            if (this.f7905i.isEmpty() && this.f7899c.c() >= 1024) {
                j3 = this.u;
                j4 = cp1.a(j2 - this.v, this.f7899c.b(), this.f7899c.c());
            } else {
                j3 = this.u;
                double d3 = this.t.f8912a;
                double d4 = j2 - this.v;
                Double.isNaN(d3);
                Double.isNaN(d4);
                j4 = (long) (d3 * d4);
            }
            j5 = j4 + j3;
        }
        return j7 + j5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d9, code lost:
    
        if (r11 < r10) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean b(java.nio.ByteBuffer r9, long r10) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.li1.b(java.nio.ByteBuffer, long):boolean");
    }

    private final long c(long j2) {
        return (j2 * this.f7907k) / 1000000;
    }

    public final void b(int i2) {
        no1.b(cp1.f6080a >= 21);
        if (this.b0 && this.a0 == i2) {
            return;
        }
        this.b0 = true;
        this.a0 = i2;
        d();
    }

    private final long b(long j2) {
        return (j2 * 1000000) / this.f7907k;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int b(String str) {
        char c2;
        switch (str.hashCode()) {
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            return 5;
        }
        if (c2 == 1) {
            return 6;
        }
        if (c2 != 2) {
            return c2 != 3 ? 0 : 8;
        }
        return 7;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r8, int r9, int r10, int r11, int r12, int[] r13) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.li1.a(java.lang.String, int, int, int, int, int[]):void");
    }

    public final boolean a(ByteBuffer byteBuffer, long j2) {
        int i2;
        int a2;
        ByteBuffer byteBuffer2 = this.T;
        no1.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!k()) {
            this.f7902f.block();
            if (this.b0) {
                this.f7906j = new AudioTrack(new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(16).build(), new AudioFormat.Builder().setChannelMask(this.f7908l).setEncoding(this.n).setSampleRate(this.f7907k).build(), this.q, 1, this.a0);
            } else {
                int i3 = this.a0;
                if (i3 == 0) {
                    this.f7906j = new AudioTrack(this.o, this.f7907k, this.f7908l, this.n, this.q, 1);
                } else {
                    this.f7906j = new AudioTrack(this.o, this.f7907k, this.f7908l, this.n, this.q, 1, i3);
                }
            }
            int state = this.f7906j.getState();
            if (state == 1) {
                int audioSessionId = this.f7906j.getAudioSessionId();
                if (this.a0 != audioSessionId) {
                    this.a0 = audioSessionId;
                    this.f7901e.a(audioSessionId);
                }
                this.f7904h.a(this.f7906j, q());
                n();
                this.c0 = false;
                if (this.Z) {
                    b();
                }
            } else {
                try {
                    this.f7906j.release();
                } catch (Exception unused) {
                } finally {
                    this.f7906j = null;
                }
                throw new oi1(state, this.f7907k, this.f7908l, this.q);
            }
        }
        if (q()) {
            if (this.f7906j.getPlayState() == 2) {
                this.c0 = false;
                return false;
            }
            if (this.f7906j.getPlayState() == 1 && this.f7904h.e() != 0) {
                return false;
            }
        }
        boolean z = this.c0;
        this.c0 = h();
        if (z && !this.c0 && this.f7906j.getPlayState() != 1) {
            this.f7901e.a(this.q, xg1.a(this.r), SystemClock.elapsedRealtime() - this.d0);
        }
        if (this.T == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.p && this.L == 0) {
                int i4 = this.n;
                if (i4 == 7 || i4 == 8) {
                    a2 = wi1.a(byteBuffer);
                } else if (i4 == 5) {
                    a2 = zh1.a();
                } else if (i4 == 6) {
                    a2 = zh1.a(byteBuffer);
                } else {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unexpected audio encoding: ");
                    sb.append(i4);
                    throw new IllegalStateException(sb.toString());
                }
                this.L = a2;
            }
            if (this.s != null) {
                if (!m()) {
                    return false;
                }
                this.f7905i.add(new qi1(this.s, Math.max(0L, j2), b(o()), null));
                this.s = null;
                l();
            }
            if (this.M == 0) {
                this.N = Math.max(0L, j2);
                this.M = 1;
            } else {
                long b2 = this.N + b(this.p ? this.H : this.G / this.F);
                if (this.M != 1 || Math.abs(b2 - j2) <= 200000) {
                    i2 = 2;
                } else {
                    StringBuilder sb2 = new StringBuilder(80);
                    sb2.append("Discontinuity detected [expected ");
                    sb2.append(b2);
                    sb2.append(", got ");
                    sb2.append(j2);
                    sb2.append("]");
                    sb2.toString();
                    i2 = 2;
                    this.M = 2;
                }
                if (this.M == i2) {
                    this.N += j2 - b2;
                    this.M = 1;
                    this.f7901e.a();
                }
            }
            if (this.p) {
                this.H += this.L;
            } else {
                this.G += byteBuffer.remaining();
            }
            this.T = byteBuffer;
        }
        if (this.p) {
            b(this.T, j2);
        } else {
            a(j2);
        }
        if (this.T.hasRemaining()) {
            return false;
        }
        this.T = null;
        return true;
    }

    private final void a(long j2) {
        ByteBuffer byteBuffer;
        int length = this.R.length;
        int i2 = length;
        while (i2 >= 0) {
            if (i2 > 0) {
                byteBuffer = this.S[i2 - 1];
            } else {
                byteBuffer = this.T;
                if (byteBuffer == null) {
                    byteBuffer = bi1.f5779a;
                }
            }
            if (i2 == length) {
                b(byteBuffer, j2);
            } else {
                bi1 bi1Var = this.R[i2];
                bi1Var.a(byteBuffer);
                ByteBuffer j3 = bi1Var.j();
                this.S[i2] = j3;
                if (j3.hasRemaining()) {
                    i2++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i2--;
            }
        }
    }

    public final qh1 a(qh1 qh1Var) {
        if (this.p) {
            this.t = qh1.f8911d;
            return this.t;
        }
        float a2 = this.f7899c.a(qh1Var.f8912a);
        cj1 cj1Var = this.f7899c;
        float f2 = qh1Var.f8913b;
        cj1Var.b(f2);
        qh1 qh1Var2 = new qh1(a2, f2);
        qh1 qh1Var3 = this.s;
        if (qh1Var3 == null) {
            if (!this.f7905i.isEmpty()) {
                qh1Var3 = qi1.a(this.f7905i.getLast());
            } else {
                qh1Var3 = this.t;
            }
        }
        if (!qh1Var2.equals(qh1Var3)) {
            if (k()) {
                this.s = qh1Var2;
            } else {
                this.t = qh1Var2;
            }
        }
        return this.t;
    }

    public final void a(int i2) {
        if (this.o == i2) {
            return;
        }
        this.o = i2;
        if (this.b0) {
            return;
        }
        d();
        this.a0 = 0;
    }

    public final void a(float f2) {
        if (this.Q != f2) {
            this.Q = f2;
            n();
        }
    }

    public final void a() {
        this.Z = false;
        if (k()) {
            p();
            this.f7904h.a();
        }
    }
}
