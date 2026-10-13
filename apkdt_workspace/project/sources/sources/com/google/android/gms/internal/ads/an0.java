package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class an0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final String f5619a;

    public an0(String str) {
        this.f5619a = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(Set<String> set) {
        return set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner");
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        dt0.a(bundle, "omid_v", this.f5619a);
    }
}
