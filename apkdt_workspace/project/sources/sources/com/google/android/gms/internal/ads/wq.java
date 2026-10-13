package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wq<AdT> implements tq<AdT> {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, ad0<AdT>> f10171a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public wq(Map<String, ad0<AdT>> map) {
        this.f10171a = map;
    }

    @Override // com.google.android.gms.internal.ads.tq
    @Nullable
    public final ad0<AdT> a(int i2, String str) {
        return this.f10171a.get(str);
    }
}
