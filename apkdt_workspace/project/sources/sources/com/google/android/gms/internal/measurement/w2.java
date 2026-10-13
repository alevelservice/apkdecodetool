package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w2 extends d3 {
    private final int zzadl;
    private final int zzadm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w2(byte[] bArr, int i2, int i3) {
        super(bArr);
        t2.zzb(i2, i2 + i3, bArr.length);
        this.zzadl = i2;
        this.zzadm = i3;
    }

    @Override // com.google.android.gms.internal.measurement.d3, com.google.android.gms.internal.measurement.t2
    public final int size() {
        return this.zzadm;
    }

    @Override // com.google.android.gms.internal.measurement.d3, com.google.android.gms.internal.measurement.t2
    public final byte zzaq(int i2) {
        int size = size();
        if (((size - (i2 + 1)) | i2) >= 0) {
            return this.zzado[this.zzadl + i2];
        }
        if (i2 < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i2);
        sb2.append(", ");
        sb2.append(size);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.d3, com.google.android.gms.internal.measurement.t2
    public final byte zzar(int i2) {
        return this.zzado[this.zzadl + i2];
    }

    @Override // com.google.android.gms.internal.measurement.d3
    protected final int zzsd() {
        return this.zzadl;
    }
}
