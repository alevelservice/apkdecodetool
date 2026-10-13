package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(16)
/* loaded from: classes.dex */
public final class ui1 extends kl1 implements ro1 {
    private final ci1 V;
    private final li1 W;
    private boolean X;
    private boolean Y;
    private MediaFormat Z;
    private int a0;
    private int b0;
    private long c0;
    private boolean d0;

    public ui1(ml1 ml1Var) {
        this(ml1Var, null, true);
    }

    public static void a(int i2, long j2, long j3) {
    }

    public static void b(int i2) {
    }

    public static void z() {
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final int a(ml1 ml1Var, zzgq zzgqVar) {
        int i2;
        int i3;
        String str = zzgqVar.f11193j;
        if (!qo1.a(str)) {
            return 0;
        }
        int i4 = cp1.f6080a >= 21 ? 16 : 0;
        if (a(str) && ml1Var.a() != null) {
            return i4 | 4 | 3;
        }
        hl1 a2 = ml1Var.a(str, false);
        boolean z = true;
        if (a2 == null) {
            return 1;
        }
        if (cp1.f6080a >= 21 && (((i2 = zzgqVar.w) != -1 && !a2.a(i2)) || ((i3 = zzgqVar.v) != -1 && !a2.b(i3)))) {
            z = false;
        }
        return i4 | 4 | (z ? 3 : 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1
    public final void b(zzgq zzgqVar) {
        super.b(zzgqVar);
        this.V.a(zzgqVar);
        this.a0 = "audio/raw".equals(zzgqVar.f11193j) ? zzgqVar.x : 2;
        this.b0 = zzgqVar.v;
    }

    @Override // com.google.android.gms.internal.ads.ro1
    public final qh1 c() {
        return this.W.i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.vg1
    public final void f() {
        super.f();
        this.W.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.vg1
    public final void g() {
        this.W.a();
        super.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.vg1
    public final void h() {
        try {
            this.W.c();
            try {
                super.h();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.h();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.ph1
    public final boolean isReady() {
        return this.W.h() || super.isReady();
    }

    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.ph1
    public final boolean l() {
        return super.l() && this.W.e();
    }

    @Override // com.google.android.gms.internal.ads.vg1, com.google.android.gms.internal.ads.ph1
    public final ro1 n() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final void u() {
        try {
            this.W.g();
        } catch (ti1 e2) {
            throw wg1.zza(e2, e());
        }
    }

    private ui1(ml1 ml1Var, lj1<Object> lj1Var, boolean z) {
        this(ml1Var, null, true, null, null);
    }

    private ui1(ml1 ml1Var, lj1<Object> lj1Var, boolean z, Handler handler, di1 di1Var) {
        this(ml1Var, null, true, null, null, null, new bi1[0]);
    }

    private ui1(ml1 ml1Var, lj1<Object> lj1Var, boolean z, Handler handler, di1 di1Var, yh1 yh1Var, bi1... bi1VarArr) {
        super(1, ml1Var, lj1Var, z);
        this.W = new li1(null, bi1VarArr, new xi1(this));
        this.V = new ci1(null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1
    public final hl1 a(ml1 ml1Var, zzgq zzgqVar, boolean z) {
        hl1 a2;
        if (a(zzgqVar.f11193j) && (a2 = ml1Var.a()) != null) {
            this.X = true;
            return a2;
        }
        this.X = false;
        return super.a(ml1Var, zzgqVar, z);
    }

    private final boolean a(String str) {
        return this.W.a(str);
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final void a(hl1 hl1Var, MediaCodec mediaCodec, zzgq zzgqVar, MediaCrypto mediaCrypto) {
        this.Y = cp1.f6080a < 24 && "OMX.SEC.aac.dec".equals(hl1Var.f7109a) && "samsung".equals(cp1.f6082c) && (cp1.f6081b.startsWith("zeroflte") || cp1.f6081b.startsWith("herolte") || cp1.f6081b.startsWith("heroqlte"));
        if (this.X) {
            this.Z = zzgqVar.b();
            this.Z.setString("mime", "audio/raw");
            mediaCodec.configure(this.Z, (Surface) null, (MediaCrypto) null, 0);
            this.Z.setString("mime", zzgqVar.f11193j);
            return;
        }
        mediaCodec.configure(zzgqVar.b(), (Surface) null, (MediaCrypto) null, 0);
        this.Z = null;
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final void a(String str, long j2, long j3) {
        this.V.a(str, j2, j3);
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int[] iArr;
        int i2;
        boolean z = this.Z != null;
        String string = z ? this.Z.getString("mime") : "audio/raw";
        if (z) {
            mediaFormat = this.Z;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (this.Y && integer == 6 && (i2 = this.b0) < 6) {
            iArr = new int[i2];
            for (int i3 = 0; i3 < this.b0; i3++) {
                iArr[i3] = i3;
            }
        } else {
            iArr = null;
        }
        try {
            this.W.a(string, integer, integer2, this.a0, 0, iArr);
        } catch (pi1 e2) {
            throw wg1.zza(e2, e());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.vg1
    public final void a(boolean z) {
        super.a(z);
        this.V.a(this.T);
        int i2 = j().f9135a;
        if (i2 != 0) {
            this.W.b(i2);
        } else {
            this.W.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.kl1, com.google.android.gms.internal.ads.vg1
    public final void a(long j2, boolean z) {
        super.a(j2, z);
        this.W.d();
        this.c0 = j2;
        this.d0 = true;
    }

    @Override // com.google.android.gms.internal.ads.ro1
    public final long a() {
        long a2 = this.W.a(l());
        if (a2 != Long.MIN_VALUE) {
            if (!this.d0) {
                a2 = Math.max(this.c0, a2);
            }
            this.c0 = a2;
            this.d0 = false;
        }
        return this.c0;
    }

    @Override // com.google.android.gms.internal.ads.ro1
    public final qh1 a(qh1 qh1Var) {
        return this.W.a(qh1Var);
    }

    @Override // com.google.android.gms.internal.ads.kl1
    protected final boolean a(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z) {
        if (this.X && (i3 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i2, false);
            return true;
        }
        if (z) {
            mediaCodec.releaseOutputBuffer(i2, false);
            this.T.f6652e++;
            this.W.f();
            return true;
        }
        try {
            if (!this.W.a(byteBuffer, j4)) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i2, false);
            this.T.f6651d++;
            return true;
        } catch (oi1 | ti1 e2) {
            throw wg1.zza(e2, e());
        }
    }

    @Override // com.google.android.gms.internal.ads.vg1, com.google.android.gms.internal.ads.bh1
    public final void a(int i2, Object obj) {
        if (i2 == 2) {
            this.W.a(((Float) obj).floatValue());
        } else if (i2 != 3) {
            super.a(i2, obj);
        } else {
            this.W.a(((Integer) obj).intValue());
        }
    }

    public static /* synthetic */ boolean a(ui1 ui1Var, boolean z) {
        ui1Var.d0 = true;
        return true;
    }
}
