package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Signature;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class s61 implements j61<Signature> {
    @Override // com.google.android.gms.internal.ads.j61
    public final /* synthetic */ Signature a(String str, Provider provider) {
        if (provider == null) {
            return Signature.getInstance(str);
        }
        return Signature.getInstance(str, provider);
    }
}
