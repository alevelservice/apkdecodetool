package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class q3 extends t3 {
    private final int zzsb;
    private final int zzsc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q3(byte[] bArr, int i2, int i3) {
        super(bArr);
        j3.zzc(i2, i2 + i3, bArr.length);
        this.zzsb = i2;
        this.zzsc = i3;
    }

    @Override // com.google.android.gms.internal.vision.t3, com.google.android.gms.internal.vision.j3
    public final int size() {
        return this.zzsc;
    }

    @Override // com.google.android.gms.internal.vision.t3, com.google.android.gms.internal.vision.j3
    protected final void zza(byte[] bArr, int i2, int i3, int i4) {
        System.arraycopy(this.zzse, zzeu(), bArr, 0, i4);
    }

    @Override // com.google.android.gms.internal.vision.t3, com.google.android.gms.internal.vision.j3
    public final byte zzan(int i2) {
        int size = size();
        if (((size - (i2 + 1)) | i2) >= 0) {
            return this.zzse[this.zzsb + i2];
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

    @Override // com.google.android.gms.internal.vision.t3, com.google.android.gms.internal.vision.j3
    final byte zzao(int i2) {
        return this.zzse[this.zzsb + i2];
    }

    @Override // com.google.android.gms.internal.vision.t3
    protected final int zzeu() {
        return this.zzsb;
    }
}
