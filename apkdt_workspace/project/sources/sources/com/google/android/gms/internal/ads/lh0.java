package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class lh0 implements Runnable {
    private lh0() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            nf0.a(MessageDigest.getInstance("MD5"));
        } catch (NoSuchAlgorithmException unused) {
        } finally {
            nf0.f8331e.countDown();
        }
    }
}
