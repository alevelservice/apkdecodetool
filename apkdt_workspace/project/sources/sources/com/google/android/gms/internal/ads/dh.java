package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class dh extends bf {

    /* renamed from: c, reason: collision with root package name */
    static final dh f6220c = new dh();

    dh() {
    }

    @Override // com.google.android.gms.internal.ads.bf
    public final ci a(String str, byte[] bArr, String str2) {
        if ("moov".equals(str)) {
            return new bk();
        }
        if ("mvhd".equals(str)) {
            return new vm();
        }
        return new vl(str);
    }
}
