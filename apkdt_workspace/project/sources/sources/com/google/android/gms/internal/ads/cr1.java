package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public abstract class cr1 {

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private static MessageDigest f6103b;

    /* renamed from: a, reason: collision with root package name */
    protected Object f6104a = new Object();

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final MessageDigest a() {
        synchronized (this.f6104a) {
            if (f6103b != null) {
                return f6103b;
            }
            for (int i2 = 0; i2 < 2; i2++) {
                try {
                    f6103b = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return f6103b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] a(String str);
}
