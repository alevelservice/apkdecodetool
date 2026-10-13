package com.google.android.gms.internal.ads;

import java.security.KeyFactory;
import java.security.Provider;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class p61 implements j61<KeyFactory> {
    @Override // com.google.android.gms.internal.ads.j61
    public final /* synthetic */ KeyFactory a(String str, Provider provider) {
        if (provider == null) {
            return KeyFactory.getInstance(str);
        }
        return KeyFactory.getInstance(str, provider);
    }
}
