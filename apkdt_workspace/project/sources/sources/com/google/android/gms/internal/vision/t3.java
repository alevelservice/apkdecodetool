package com.google.android.gms.internal.vision;

import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public class t3 extends u3 {
    protected final byte[] zzse;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t3(byte[] bArr) {
        if (bArr != null) {
            this.zzse = bArr;
            return;
        }
        throw new NullPointerException();
    }

    @Override // com.google.android.gms.internal.vision.j3
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j3) || size() != ((j3) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof t3) {
            t3 t3Var = (t3) obj;
            int zzet = zzet();
            int zzet2 = t3Var.zzet();
            if (zzet == 0 || zzet2 == 0 || zzet == zzet2) {
                return zza(t3Var, 0, size());
            }
            return false;
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.vision.j3
    public int size() {
        return this.zzse.length;
    }

    @Override // com.google.android.gms.internal.vision.j3
    protected void zza(byte[] bArr, int i2, int i3, int i4) {
        System.arraycopy(this.zzse, 0, bArr, 0, i4);
    }

    @Override // com.google.android.gms.internal.vision.j3
    public byte zzan(int i2) {
        return this.zzse[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.j3
    public byte zzao(int i2) {
        return this.zzse[i2];
    }

    @Override // com.google.android.gms.internal.vision.j3
    protected final int zzb(int i2, int i3, int i4) {
        return t4.a(i2, this.zzse, zzeu(), i4);
    }

    @Override // com.google.android.gms.internal.vision.j3
    public final boolean zzes() {
        int zzeu = zzeu();
        return r7.a(this.zzse, zzeu, size() + zzeu);
    }

    protected int zzeu() {
        return 0;
    }

    @Override // com.google.android.gms.internal.vision.j3
    public final j3 zzf(int i2, int i3) {
        int zzc = j3.zzc(0, i3, size());
        if (zzc == 0) {
            return j3.zzrx;
        }
        return new q3(this.zzse, zzeu(), zzc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.j3
    public final void zza(k3 k3Var) {
        k3Var.a(this.zzse, zzeu(), size());
    }

    @Override // com.google.android.gms.internal.vision.j3
    protected final String zza(Charset charset) {
        return new String(this.zzse, zzeu(), size(), charset);
    }

    @Override // com.google.android.gms.internal.vision.u3
    final boolean zza(j3 j3Var, int i2, int i3) {
        if (i3 <= j3Var.size()) {
            if (i3 <= j3Var.size()) {
                if (j3Var instanceof t3) {
                    t3 t3Var = (t3) j3Var;
                    byte[] bArr = this.zzse;
                    byte[] bArr2 = t3Var.zzse;
                    int zzeu = zzeu() + i3;
                    int zzeu2 = zzeu();
                    int zzeu3 = t3Var.zzeu();
                    while (zzeu2 < zzeu) {
                        if (bArr[zzeu2] != bArr2[zzeu3]) {
                            return false;
                        }
                        zzeu2++;
                        zzeu3++;
                    }
                    return true;
                }
                return j3Var.zzf(0, i3).equals(zzf(0, i3));
            }
            int size = j3Var.size();
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
