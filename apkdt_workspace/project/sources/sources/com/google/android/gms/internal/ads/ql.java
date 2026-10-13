package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ql implements eq {

    /* renamed from: a, reason: collision with root package name */
    private af1<vs0> f8946a;

    /* renamed from: b, reason: collision with root package name */
    private af1<ns0> f8947b;

    /* renamed from: c, reason: collision with root package name */
    private af1<Set<ox<vt>>> f8948c;

    /* renamed from: d, reason: collision with root package name */
    private af1<yt> f8949d;

    /* renamed from: e, reason: collision with root package name */
    private af1<Set<ox<qu>>> f8950e;

    /* renamed from: f, reason: collision with root package name */
    private af1<pu> f8951f;

    /* renamed from: g, reason: collision with root package name */
    private af1<String> f8952g;

    /* renamed from: h, reason: collision with root package name */
    private af1<rq> f8953h;

    /* renamed from: i, reason: collision with root package name */
    private af1<zzack> f8954i;

    /* renamed from: j, reason: collision with root package name */
    private af1<Runnable> f8955j;

    /* renamed from: k, reason: collision with root package name */
    private af1<zp> f8956k;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ ol f8957l;

    private ql(ol olVar, lr lrVar, dq dqVar) {
        af1 af1Var;
        this.f8957l = olVar;
        this.f8946a = mr.a(lrVar);
        this.f8947b = kr.a(lrVar);
        ye1 a2 = we1.a(0, 2);
        a2.b(ol.z(this.f8957l));
        a2.b(ol.y(this.f8957l));
        this.f8948c = a2.a();
        this.f8949d = pe1.a(bu.a(this.f8948c));
        ye1 a3 = we1.a(4, 3);
        a3.a(ol.v(this.f8957l));
        a3.a(ol.u(this.f8957l));
        a3.a(ol.t(this.f8957l));
        a3.b(ol.g(this.f8957l));
        a3.b(ol.f(this.f8957l));
        a3.b(ol.e(this.f8957l));
        a3.a(ol.q(this.f8957l));
        this.f8950e = a3.a();
        this.f8951f = pe1.a(ru.a(this.f8950e));
        this.f8952g = nr.a(lrVar);
        this.f8953h = is.a(this.f8946a, this.f8947b, this.f8949d, this.f8951f, this.f8952g);
        this.f8954i = new fq(dqVar);
        this.f8955j = new gq(dqVar);
        af1<rq> af1Var2 = this.f8953h;
        af1<zzack> af1Var3 = this.f8954i;
        af1<Runnable> af1Var4 = this.f8955j;
        af1Var = this.f8957l.h2.f5784c;
        this.f8956k = pe1.a(new iq(af1Var2, af1Var3, af1Var4, af1Var));
    }

    @Override // com.google.android.gms.internal.ads.eq
    public final uo a() {
        zp zpVar = this.f8956k.get();
        ue1.a(zpVar, "Cannot return null from a non-@Nullable @Provides method");
        return zpVar;
    }
}
