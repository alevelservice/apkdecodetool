package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.Provider;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class q61 implements j61<MessageDigest> {
    @Override // com.google.android.gms.internal.ads.j61
    public final /* synthetic */ MessageDigest a(String str, Provider provider) {
        if (provider == null) {
            return MessageDigest.getInstance(str);
        }
        return MessageDigest.getInstance(str, provider);
    }
}
