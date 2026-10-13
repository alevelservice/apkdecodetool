package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class a81 extends e81 {
    private final int zzhfr;
    private final int zzhfs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a81(byte[] bArr, int i2, int i3) {
        super(bArr);
        t71.zzh(i2, i2 + i3, bArr.length);
        this.zzhfr = i2;
        this.zzhfs = i3;
    }

    @Override // com.google.android.gms.internal.ads.e81, com.google.android.gms.internal.ads.t71
    public final int size() {
        return this.zzhfs;
    }

    @Override // com.google.android.gms.internal.ads.e81, com.google.android.gms.internal.ads.t71
    protected final void zza(byte[] bArr, int i2, int i3, int i4) {
        System.arraycopy(this.zzhfu, zzaxm(), bArr, 0, i4);
    }

    @Override // com.google.android.gms.internal.ads.e81
    protected final int zzaxm() {
        return this.zzhfr;
    }

    @Override // com.google.android.gms.internal.ads.e81, com.google.android.gms.internal.ads.t71
    public final byte zzfn(int i2) {
        int size = size();
        if (((size - (i2 + 1)) | i2) >= 0) {
            return this.zzhfu[this.zzhfr + i2];
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
    @Override // com.google.android.gms.internal.ads.e81, com.google.android.gms.internal.ads.t71
    public final byte zzfo(int i2) {
        return this.zzhfu[this.zzhfr + i2];
    }
}
