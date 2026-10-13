package com.google.android.gms.internal.clearcut;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b0 extends f0 {
    private final int zzfm;
    private final int zzfn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(byte[] bArr, int i2, int i3) {
        super(bArr);
        y.zzb(i2, i2 + i3, bArr.length);
        this.zzfm = i2;
        this.zzfn = i3;
    }

    @Override // com.google.android.gms.internal.clearcut.f0, com.google.android.gms.internal.clearcut.y
    public final int size() {
        return this.zzfn;
    }

    @Override // com.google.android.gms.internal.clearcut.f0
    protected final int zzac() {
        return this.zzfm;
    }

    @Override // com.google.android.gms.internal.clearcut.f0, com.google.android.gms.internal.clearcut.y
    public final byte zzj(int i2) {
        int size = size();
        if (((size - (i2 + 1)) | i2) >= 0) {
            return this.zzfp[this.zzfm + i2];
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
}
