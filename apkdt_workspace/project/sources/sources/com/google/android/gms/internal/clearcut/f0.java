package com.google.android.gms.internal.clearcut;

import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f0 extends e0 {
    protected final byte[] zzfp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(byte[] bArr) {
        this.zzfp = bArr;
    }

    @Override // com.google.android.gms.internal.clearcut.y
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y) || size() != ((y) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return obj.equals(this);
        }
        f0 f0Var = (f0) obj;
        int zzab = zzab();
        int zzab2 = f0Var.zzab();
        if (zzab == 0 || zzab2 == 0 || zzab == zzab2) {
            return zza(f0Var, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.clearcut.y
    public int size() {
        return this.zzfp.length;
    }

    @Override // com.google.android.gms.internal.clearcut.y
    protected final int zza(int i2, int i3, int i4) {
        return f1.a(i2, this.zzfp, zzac(), i4);
    }

    @Override // com.google.android.gms.internal.clearcut.y
    public final y zza(int i2, int i3) {
        int zzb = y.zzb(0, i3, size());
        return zzb == 0 ? y.zzfi : new b0(this.zzfp, zzac(), zzb);
    }

    @Override // com.google.android.gms.internal.clearcut.y
    protected final String zza(Charset charset) {
        return new String(this.zzfp, zzac(), size(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.y
    public final void zza(x xVar) {
        xVar.a(this.zzfp, zzac(), size());
    }

    @Override // com.google.android.gms.internal.clearcut.e0
    final boolean zza(y yVar, int i2, int i3) {
        if (i3 > yVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i3);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i3 > yVar.size()) {
            int size2 = yVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i3);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(yVar instanceof f0)) {
            return yVar.zza(0, i3).equals(zza(0, i3));
        }
        f0 f0Var = (f0) yVar;
        byte[] bArr = this.zzfp;
        byte[] bArr2 = f0Var.zzfp;
        int zzac = zzac() + i3;
        int zzac2 = zzac();
        int zzac3 = f0Var.zzac();
        while (zzac2 < zzac) {
            if (bArr[zzac2] != bArr2[zzac3]) {
                return false;
            }
            zzac2++;
            zzac3++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.y
    public final boolean zzaa() {
        int zzac = zzac();
        return a4.a(this.zzfp, zzac, size() + zzac);
    }

    protected int zzac() {
        return 0;
    }

    @Override // com.google.android.gms.internal.clearcut.y
    public byte zzj(int i2) {
        return this.zzfp[i2];
    }
}
