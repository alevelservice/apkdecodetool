package com.google.android.gms.common;

import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
abstract class zzf extends zzd {

    /* renamed from: g, reason: collision with root package name */
    private static final WeakReference<byte[]> f5441g = new WeakReference<>(null);

    /* renamed from: f, reason: collision with root package name */
    private WeakReference<byte[]> f5442f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(byte[] bArr) {
        super(bArr);
        this.f5442f = f5441g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.zzd
    public final byte[] getBytes() {
        byte[] bArr;
        synchronized (this) {
            bArr = this.f5442f.get();
            if (bArr == null) {
                bArr = zzd();
                this.f5442f = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    protected abstract byte[] zzd();
}
