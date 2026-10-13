package com.google.android.gms.internal.ads;

import java.security.SecureRandom;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class w61 {

    /* renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<SecureRandom> f10037a = new y61();

    /* JADX INFO: Access modifiers changed from: private */
    public static SecureRandom a() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }

    public static byte[] a(int i2) {
        byte[] bArr = new byte[i2];
        f10037a.get().nextBytes(bArr);
        return bArr;
    }
}
