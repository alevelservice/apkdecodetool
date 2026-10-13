package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kt0 implements ia, ot {

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private final HashSet<w9> f7750e = new HashSet<>();

    /* renamed from: f, reason: collision with root package name */
    private final Context f7751f;

    /* renamed from: g, reason: collision with root package name */
    private final ka f7752g;

    public kt0(Context context, ka kaVar) {
        this.f7751f = context;
        this.f7752g = kaVar;
    }

    @Override // com.google.android.gms.internal.ads.ia
    public final synchronized void a(HashSet<w9> hashSet) {
        this.f7750e.clear();
        this.f7750e.addAll(hashSet);
    }

    @Override // com.google.android.gms.internal.ads.ot
    public final synchronized void onAdFailedToLoad(int i2) {
        if (i2 != 3) {
            this.f7752g.a(this.f7750e);
        }
    }

    public final Bundle a() {
        return this.f7752g.a(this.f7751f, this);
    }
}
