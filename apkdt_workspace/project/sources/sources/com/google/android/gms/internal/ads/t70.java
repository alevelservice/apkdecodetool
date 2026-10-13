package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class t70 implements oe1<Set<ox<fv0>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<String> f9526a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f9527b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Executor> f9528c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<Map<wu0, y70>> f9529d;

    public t70(af1<String> af1Var, af1<Context> af1Var2, af1<Executor> af1Var3, af1<Map<wu0, y70>> af1Var4) {
        this.f9526a = af1Var;
        this.f9527b = af1Var2;
        this.f9528c = af1Var3;
        this.f9529d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set emptySet;
        final String str = this.f9526a.get();
        Context context = this.f9527b.get();
        Executor executor = this.f9528c.get();
        Map<wu0, y70> map = this.f9529d.get();
        if (((Boolean) mu1.e().a(aw1.I2)).booleanValue()) {
            ks1 ks1Var = new ks1(new ps1(context));
            ks1Var.a(new js1(str) { // from class: com.google.android.gms.internal.ads.v70

                /* renamed from: a, reason: collision with root package name */
                private final String f9881a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9881a = str;
                }

                @Override // com.google.android.gms.internal.ads.js1
                public final void a(pt1 pt1Var) {
                    pt1Var.f8781c = this.f9881a;
                }
            });
            emptySet = Collections.singleton(new ox(new w70(ks1Var, map), executor));
        } else {
            emptySet = Collections.emptySet();
        }
        ue1.a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
