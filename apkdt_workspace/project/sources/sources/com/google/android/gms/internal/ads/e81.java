package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public class e81 extends f81 {
    protected final byte[] zzhfu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e81(byte[] bArr) {
        if (bArr != null) {
            this.zzhfu = bArr;
            return;
        }
        throw new NullPointerException();
    }

    @Override // com.google.android.gms.internal.ads.t71
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof t71) || size() != ((t71) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof e81) {
            e81 e81Var = (e81) obj;
            int zzaxl = zzaxl();
            int zzaxl2 = e81Var.zzaxl();
            if (zzaxl == 0 || zzaxl2 == 0 || zzaxl == zzaxl2) {
                return zza(e81Var, 0, size());
            }
            return false;
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.ads.t71
    public int size() {
        return this.zzhfu.length;
    }

    @Override // com.google.android.gms.internal.ads.t71
    protected void zza(byte[] bArr, int i2, int i3, int i4) {
        System.arraycopy(this.zzhfu, 0, bArr, 0, i4);
    }

    @Override // com.google.android.gms.internal.ads.t71
    public final boolean zzaxj() {
        int zzaxm = zzaxm();
        return fc1.a(this.zzhfu, zzaxm, size() + zzaxm);
    }

    @Override // com.google.android.gms.internal.ads.t71
    public final g81 zzaxk() {
        return g81.a(this.zzhfu, zzaxm(), size(), true);
    }

    protected int zzaxm() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.t71
    public byte zzfn(int i2) {
        return this.zzhfu[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.t71
    public byte zzfo(int i2) {
        return this.zzhfu[i2];
    }

    @Override // com.google.android.gms.internal.ads.t71
    protected final int zzg(int i2, int i3, int i4) {
        return f91.a(i2, this.zzhfu, zzaxm(), i4);
    }

    @Override // com.google.android.gms.internal.ads.t71
    public final t71 zzy(int i2, int i3) {
        int zzh = t71.zzh(0, i3, size());
        if (zzh == 0) {
            return t71.zzhfn;
        }
        return new a81(this.zzhfu, zzaxm(), zzh);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.t71
    public final void zza(u71 u71Var) {
        u71Var.a(this.zzhfu, zzaxm(), size());
    }

    @Override // com.google.android.gms.internal.ads.t71
    protected final String zza(Charset charset) {
        return new String(this.zzhfu, zzaxm(), size(), charset);
    }

    @Override // com.google.android.gms.internal.ads.f81
    final boolean zza(t71 t71Var, int i2, int i3) {
        if (i3 <= t71Var.size()) {
            if (i3 <= t71Var.size()) {
                if (t71Var instanceof e81) {
                    e81 e81Var = (e81) t71Var;
                    byte[] bArr = this.zzhfu;
                    byte[] bArr2 = e81Var.zzhfu;
                    int zzaxm = zzaxm() + i3;
                    int zzaxm2 = zzaxm();
                    int zzaxm3 = e81Var.zzaxm();
                    while (zzaxm2 < zzaxm) {
                        if (bArr[zzaxm2] != bArr2[zzaxm3]) {
                            return false;
                        }
                        zzaxm2++;
                        zzaxm3++;
                    }
                    return true;
                }
                return t71Var.zzy(0, i3).equals(zzy(0, i3));
            }
            int size = t71Var.size();
            StringBuilder sb = new StringBuilder(59);
            sb.append("Ran off end of other: 0, ");
            sb.append(i3);
            sb.append(", ");
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        int size2 = size();
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Length too large: ");
        sb2.append(i3);
        sb2.append(size2);
        throw new IllegalArgumentException(sb2.toString());
    }
}
