package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fo implements oe1<JSONObject> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ns0> f6696a;

    private fo(af1<ns0> af1Var) {
        this.f6696a = af1Var;
    }

    public static fo a(af1<ns0> af1Var) {
        return new fo(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    @Nullable
    public final /* synthetic */ Object get() {
        return co.a(this.f6696a.get());
    }
}
