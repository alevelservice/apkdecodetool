package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d3 extends a3 {
    protected final byte[] zzado;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d3(byte[] bArr) {
        if (bArr != null) {
            this.zzado = bArr;
            return;
        }
        throw new NullPointerException();
    }

    @Override // com.google.android.gms.internal.measurement.t2
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof t2) || size() != ((t2) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof d3) {
            d3 d3Var = (d3) obj;
            int zzsc = zzsc();
            int zzsc2 = d3Var.zzsc();
            if (zzsc == 0 || zzsc2 == 0 || zzsc == zzsc2) {
                return zza(d3Var, 0, size());
            }
            return false;
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.measurement.t2
    public int size() {
        return this.zzado.length;
    }

    @Override // com.google.android.gms.internal.measurement.t2
    public final t2 zza(int i2, int i3) {
        int zzb = t2.zzb(0, i3, size());
        if (zzb == 0) {
            return t2.zzadh;
        }
        return new w2(this.zzado, zzsd(), zzb);
    }

    @Override // com.google.android.gms.internal.measurement.t2
    public byte zzaq(int i2) {
        return this.zzado[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.t2
    public byte zzar(int i2) {
        return this.zzado[i2];
    }

    @Override // com.google.android.gms.internal.measurement.t2
    public final boolean zzsb() {
        int zzsd = zzsd();
        return a7.a(this.zzado, zzsd, size() + zzsd);
    }

    protected int zzsd() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.t2
    public final void zza(q2 q2Var) {
        q2Var.a(this.zzado, zzsd(), size());
    }

    @Override // com.google.android.gms.internal.measurement.t2
    protected final String zza(Charset charset) {
        return new String(this.zzado, zzsd(), size(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.a3
    final boolean zza(t2 t2Var, int i2, int i3) {
        if (i3 <= t2Var.size()) {
            if (i3 <= t2Var.size()) {
                if (t2Var instanceof d3) {
                    d3 d3Var = (d3) t2Var;
                    byte[] bArr = this.zzado;
                    byte[] bArr2 = d3Var.zzado;
                    int zzsd = zzsd() + i3;
                    int zzsd2 = zzsd();
                    int zzsd3 = d3Var.zzsd();
                    while (zzsd2 < zzsd) {
                        if (bArr[zzsd2] != bArr2[zzsd3]) {
                            return false;
                        }
                        zzsd2++;
                        zzsd3++;
                    }
                    return true;
                }
                return t2Var.zza(0, i3).equals(zza(0, i3));
            }
            int size = t2Var.size();
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

    @Override // com.google.android.gms.internal.measurement.t2
    protected final int zza(int i2, int i3, int i4) {
        return c4.a(i2, this.zzado, zzsd(), i4);
    }
}
