package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class hl extends cp0 {

    /* renamed from: a, reason: collision with root package name */
    private final kq0 f7097a;

    /* renamed from: b, reason: collision with root package name */
    private af1<yo0> f7098b;

    /* renamed from: c, reason: collision with root package name */
    private af1<String> f7099c;

    /* renamed from: d, reason: collision with root package name */
    private af1<ip0> f7100d;

    /* renamed from: e, reason: collision with root package name */
    private af1<np0> f7101e;

    /* renamed from: f, reason: collision with root package name */
    private af1<wp0> f7102f;

    /* renamed from: g, reason: collision with root package name */
    private af1<Boolean> f7103g;

    /* renamed from: h, reason: collision with root package name */
    private af1<ApplicationInfo> f7104h;

    /* renamed from: i, reason: collision with root package name */
    private af1<bq0> f7105i;

    /* renamed from: j, reason: collision with root package name */
    private af1<fq0> f7106j;

    /* renamed from: k, reason: collision with root package name */
    private af1<vq0> f7107k;

    /* renamed from: l, reason: collision with root package name */
    private af1<String> f7108l;
    private af1<y70> m;
    private af1<y70> n;
    private af1<y70> o;
    private af1<y70> p;
    private af1<Map<wu0, y70>> q;
    private af1<Set<ox<fv0>>> r;
    private af1<Set<ox<fv0>>> s;
    private af1 t;
    private af1<zu0> u;
    private final /* synthetic */ bl v;

    private hl(bl blVar, kq0 kq0Var) {
        af1 af1Var;
        af1 af1Var2;
        af1 af1Var3;
        af1 af1Var4;
        af1 af1Var5;
        af1 af1Var6;
        af1 af1Var7;
        af1 af1Var8;
        af1 af1Var9;
        this.v = blVar;
        this.f7097a = kq0Var;
        tm a2 = tm.a();
        af1Var = this.v.f5790i;
        af1Var2 = this.v.f5786e;
        this.f7098b = new dp0(a2, af1Var, af1Var2, cu0.a());
        this.f7099c = new jq0(kq0Var);
        xk a3 = xk.a();
        af1Var3 = this.v.f5790i;
        this.f7100d = new lp0(a3, af1Var3, this.f7099c, cu0.a());
        pm a4 = pm.a();
        cu0 a5 = cu0.a();
        af1Var4 = this.v.f5790i;
        this.f7101e = new pp0(a4, a5, af1Var4);
        this.f7102f = new yp0(om.a(), cu0.a(), this.f7099c);
        this.f7103g = new mq0(kq0Var);
        this.f7104h = new nq0(kq0Var);
        rm a6 = rm.a();
        af1Var5 = this.v.f5786e;
        this.f7105i = new dq0(a6, af1Var5, this.f7103g, this.f7104h);
        qm a7 = qm.a();
        af1Var6 = this.v.f5786e;
        af1Var7 = this.v.f5790i;
        this.f7106j = new hq0(a7, af1Var6, af1Var7);
        this.f7107k = new xq0(cu0.a());
        this.f7108l = new pq0(kq0Var);
        this.m = pe1.a(s70.a());
        this.n = pe1.a(p70.a());
        this.o = pe1.a(r70.a());
        this.p = pe1.a(u70.a());
        se1 a8 = qe1.a(4);
        a8.a(wu0.GMS_SIGNALS, this.m);
        se1 se1Var = a8;
        se1Var.a(wu0.BUILD_URL, this.n);
        se1 se1Var2 = se1Var;
        se1Var2.a(wu0.HTTP, this.o);
        se1 se1Var3 = se1Var2;
        se1Var3.a(wu0.PRE_PROCESS, this.p);
        this.q = se1Var3.a();
        af1<String> af1Var10 = this.f7108l;
        af1Var8 = this.v.f5790i;
        this.r = pe1.a(new t70(af1Var10, af1Var8, cu0.a(), this.q));
        ye1 a9 = we1.a(0, 1);
        a9.b(this.r);
        this.s = a9.a();
        this.t = hv0.a(this.s);
        cu0 a10 = cu0.a();
        af1Var9 = this.v.f5786e;
        this.u = pe1.a(ev0.a(a10, af1Var9, this.t));
    }

    private final aq0 d() {
        nv1 a2 = mm.a();
        tz0 b2 = cu0.b();
        List<String> e2 = this.f7097a.e();
        ue1.a(e2, "Cannot return null from a non-@Nullable @Provides method");
        return new aq0(a2, b2, e2);
    }

    private final ep0 e() {
        x9 b2 = tm.b();
        tz0 b3 = cu0.b();
        String b4 = this.f7097a.b();
        ue1.a(b4, "Cannot return null from a non-@Nullable @Provides method");
        return new ep0(b2, b3, b4, this.f7097a.c());
    }

    @Override // com.google.android.gms.internal.ads.cp0
    public final no0<JSONObject> a() {
        af1 af1Var;
        af1 af1Var2;
        af1 af1Var3;
        af1 af1Var4;
        lk lkVar;
        af1 af1Var5;
        lk lkVar2;
        af1 af1Var6;
        af1 af1Var7;
        af1 af1Var8;
        lk lkVar3;
        lk lkVar4;
        af1 af1Var9;
        tz0 b2 = cu0.b();
        wp0 wp0Var = new wp0(om.b(), cu0.b(), jq0.a(this.f7097a));
        af1Var = this.v.f5786e;
        en0 en0Var = new en0(wp0Var, 0L, (ScheduledExecutorService) af1Var.get());
        ue1.a(en0Var, "Cannot return null from a non-@Nullable @Provides method");
        en0 en0Var2 = en0Var;
        s4 b3 = rm.b();
        af1Var2 = this.v.f5786e;
        bq0 bq0Var = new bq0(b3, (ScheduledExecutorService) af1Var2.get(), this.f7097a.d(), nq0.a(this.f7097a));
        af1Var3 = this.v.f5786e;
        en0 en0Var3 = new en0(bq0Var, ((Long) mu1.e().a(aw1.Y1)).longValue(), (ScheduledExecutorService) af1Var3.get());
        ue1.a(en0Var3, "Cannot return null from a non-@Nullable @Provides method");
        s6 b4 = qm.b();
        af1Var4 = this.v.f5786e;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) af1Var4.get();
        lkVar = this.v.f5783b;
        fq0 fq0Var = new fq0(b4, scheduledExecutorService, ok.a(lkVar));
        af1Var5 = this.v.f5786e;
        en0 en0Var4 = new en0(fq0Var, ((Long) mu1.e().a(aw1.i2)).longValue(), (ScheduledExecutorService) af1Var5.get());
        ue1.a(en0Var4, "Cannot return null from a non-@Nullable @Provides method");
        x9 b5 = tm.b();
        lkVar2 = this.v.f5783b;
        Context a2 = ok.a(lkVar2);
        af1Var6 = this.v.f5786e;
        yo0 yo0Var = new yo0(b5, a2, (ScheduledExecutorService) af1Var6.get(), cu0.b());
        af1Var7 = this.v.f5786e;
        en0 en0Var5 = new en0(yo0Var, 0L, (ScheduledExecutorService) af1Var7.get());
        ue1.a(en0Var5, "Cannot return null from a non-@Nullable @Provides method");
        vq0 vq0Var = new vq0(cu0.b());
        af1Var8 = this.v.f5786e;
        en0 en0Var6 = new en0(vq0Var, 0L, (ScheduledExecutorService) af1Var8.get());
        ue1.a(en0Var6, "Cannot return null from a non-@Nullable @Provides method");
        ko0<? extends lo0<JSONObject>> a3 = qq0.a();
        lkVar3 = this.v.f5783b;
        as1 b6 = pm.b();
        tz0 b7 = cu0.b();
        lkVar4 = this.v.f5783b;
        af1Var9 = this.v.w;
        return new no0<>(b2, mx0.zza(en0Var2, en0Var3, en0Var4, en0Var5, en0Var6, a3, new ip0(null, ok.a(lkVar3), jq0.a(this.f7097a), cu0.b()), new np0(b6, b7, ok.a(lkVar4)), d(), e(), (ko0) af1Var9.get()));
    }

    @Override // com.google.android.gms.internal.ads.cp0
    public final no0<JSONObject> b() {
        af1 af1Var;
        af1Var = this.v.w;
        return tq0.a(af1Var.get(), e(), d(), pe1.b(this.f7098b), pe1.b(this.f7100d), pe1.b(this.f7101e), pe1.b(this.f7102f), pe1.b(this.f7105i), pe1.b(this.f7106j), pe1.b(this.f7107k), cu0.b());
    }

    @Override // com.google.android.gms.internal.ads.cp0
    public final zu0 c() {
        return this.u.get();
    }
}
