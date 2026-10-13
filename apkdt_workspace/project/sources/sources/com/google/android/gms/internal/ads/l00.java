package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class l00 implements oe1<tq<uo>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<mk> f7784a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ws.a> f7785b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<hw> f7786c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<b00> f7787d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<kv> f7788e;

    public l00(af1<mk> af1Var, af1<ws.a> af1Var2, af1<hw> af1Var3, af1<b00> af1Var4, af1<kv> af1Var5) {
        this.f7784a = af1Var;
        this.f7785b = af1Var2;
        this.f7786c = af1Var3;
        this.f7787d = af1Var4;
        this.f7788e = af1Var5;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        mk mkVar = this.f7784a.get();
        ws.a aVar = this.f7785b.get();
        hw hwVar = this.f7786c.get();
        b00 b00Var = this.f7787d.get();
        kv kvVar = this.f7788e.get();
        tp h2 = mkVar.h();
        h2.b(aVar.a());
        h2.e(hwVar);
        h2.a(b00Var);
        h2.a(new ai0(null));
        h2.a(new lq(kvVar));
        h2.b(new qo(null));
        tq<uo> c2 = h2.e().c();
        ue1.a(c2, "Cannot return null from a non-@Nullable @Provides method");
        return c2;
    }
}
