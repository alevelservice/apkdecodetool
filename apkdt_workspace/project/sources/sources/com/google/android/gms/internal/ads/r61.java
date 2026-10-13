package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.Mac;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class r61 implements j61<Mac> {
    @Override // com.google.android.gms.internal.ads.j61
    public final /* synthetic */ Mac a(String str, Provider provider) {
        if (provider == null) {
            return Mac.getInstance(str);
        }
        return Mac.getInstance(str, provider);
    }
}
