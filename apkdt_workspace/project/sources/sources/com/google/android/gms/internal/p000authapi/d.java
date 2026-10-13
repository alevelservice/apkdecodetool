package com.google.android.gms.internal.p000authapi;

import android.util.Base64;
import java.util.Random;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private static final Random f11308a = new Random();

    public static String a() {
        byte[] bArr = new byte[16];
        f11308a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
