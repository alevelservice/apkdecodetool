package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.Cipher;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class n61 implements j61<Cipher> {
    @Override // com.google.android.gms.internal.ads.j61
    public final /* synthetic */ Cipher a(String str, Provider provider) {
        if (provider == null) {
            return Cipher.getInstance(str);
        }
        return Cipher.getInstance(str, provider);
    }
}
