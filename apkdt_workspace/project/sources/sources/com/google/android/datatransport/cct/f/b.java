package com.google.android.datatransport.cct.f;

import com.alipay.mobile.security.zim.api.ZIMFacade;

/* compiled from: AutoBatchedLogRequestEncoder.java */
/* loaded from: classes.dex */
public final class b implements com.google.firebase.m.i.a {

    /* renamed from: a, reason: collision with root package name */
    public static final com.google.firebase.m.i.a f4256a = new b();

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes.dex */
    private static final class a implements com.google.firebase.m.e<com.google.android.datatransport.cct.f.a> {

        /* renamed from: a, reason: collision with root package name */
        static final a f4257a = new a();

        /* renamed from: b, reason: collision with root package name */
        private static final com.google.firebase.m.d f4258b = com.google.firebase.m.d.a("sdkVersion");

        /* renamed from: c, reason: collision with root package name */
        private static final com.google.firebase.m.d f4259c = com.google.firebase.m.d.a("model");

        /* renamed from: d, reason: collision with root package name */
        private static final com.google.firebase.m.d f4260d = com.google.firebase.m.d.a("hardware");

        /* renamed from: e, reason: collision with root package name */
        private static final com.google.firebase.m.d f4261e = com.google.firebase.m.d.a("device");

        /* renamed from: f, reason: collision with root package name */
        private static final com.google.firebase.m.d f4262f = com.google.firebase.m.d.a("product");

        /* renamed from: g, reason: collision with root package name */
        private static final com.google.firebase.m.d f4263g = com.google.firebase.m.d.a("osBuild");

        /* renamed from: h, reason: collision with root package name */
        private static final com.google.firebase.m.d f4264h = com.google.firebase.m.d.a("manufacturer");

        /* renamed from: i, reason: collision with root package name */
        private static final com.google.firebase.m.d f4265i = com.google.firebase.m.d.a("fingerprint");

        /* renamed from: j, reason: collision with root package name */
        private static final com.google.firebase.m.d f4266j = com.google.firebase.m.d.a(ZIMFacade.KEY_LOCALE);

        /* renamed from: k, reason: collision with root package name */
        private static final com.google.firebase.m.d f4267k = com.google.firebase.m.d.a("country");

        /* renamed from: l, reason: collision with root package name */
        private static final com.google.firebase.m.d f4268l = com.google.firebase.m.d.a("mccMnc");
        private static final com.google.firebase.m.d m = com.google.firebase.m.d.a("applicationBuild");

        private a() {
        }

        @Override // com.google.firebase.m.e
        public void a(com.google.android.datatransport.cct.f.a aVar, com.google.firebase.m.f fVar) {
            fVar.a(f4258b, aVar.l());
            fVar.a(f4259c, aVar.i());
            fVar.a(f4260d, aVar.e());
            fVar.a(f4261e, aVar.c());
            fVar.a(f4262f, aVar.k());
            fVar.a(f4263g, aVar.j());
            fVar.a(f4264h, aVar.g());
            fVar.a(f4265i, aVar.d());
            fVar.a(f4266j, aVar.f());
            fVar.a(f4267k, aVar.b());
            fVar.a(f4268l, aVar.h());
            fVar.a(m, aVar.a());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* renamed from: com.google.android.datatransport.cct.f.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0074b implements com.google.firebase.m.e<j> {

        /* renamed from: a, reason: collision with root package name */
        static final C0074b f4269a = new C0074b();

        /* renamed from: b, reason: collision with root package name */
        private static final com.google.firebase.m.d f4270b = com.google.firebase.m.d.a("logRequest");

        private C0074b() {
        }

        @Override // com.google.firebase.m.e
        public void a(j jVar, com.google.firebase.m.f fVar) {
            fVar.a(f4270b, jVar.a());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes.dex */
    private static final class c implements com.google.firebase.m.e<k> {

        /* renamed from: a, reason: collision with root package name */
        static final c f4271a = new c();

        /* renamed from: b, reason: collision with root package name */
        private static final com.google.firebase.m.d f4272b = com.google.firebase.m.d.a("clientType");

        /* renamed from: c, reason: collision with root package name */
        private static final com.google.firebase.m.d f4273c = com.google.firebase.m.d.a("androidClientInfo");

        private c() {
        }

        @Override // com.google.firebase.m.e
        public void a(k kVar, com.google.firebase.m.f fVar) {
            fVar.a(f4272b, kVar.b());
            fVar.a(f4273c, kVar.a());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes.dex */
    private static final class d implements com.google.firebase.m.e<l> {

        /* renamed from: a, reason: collision with root package name */
        static final d f4274a = new d();

        /* renamed from: b, reason: collision with root package name */
        private static final com.google.firebase.m.d f4275b = com.google.firebase.m.d.a("eventTimeMs");

        /* renamed from: c, reason: collision with root package name */
        private static final com.google.firebase.m.d f4276c = com.google.firebase.m.d.a("eventCode");

        /* renamed from: d, reason: collision with root package name */
        private static final com.google.firebase.m.d f4277d = com.google.firebase.m.d.a("eventUptimeMs");

        /* renamed from: e, reason: collision with root package name */
        private static final com.google.firebase.m.d f4278e = com.google.firebase.m.d.a("sourceExtension");

        /* renamed from: f, reason: collision with root package name */
        private static final com.google.firebase.m.d f4279f = com.google.firebase.m.d.a("sourceExtensionJsonProto3");

        /* renamed from: g, reason: collision with root package name */
        private static final com.google.firebase.m.d f4280g = com.google.firebase.m.d.a("timezoneOffsetSeconds");

        /* renamed from: h, reason: collision with root package name */
        private static final com.google.firebase.m.d f4281h = com.google.firebase.m.d.a("networkConnectionInfo");

        private d() {
        }

        @Override // com.google.firebase.m.e
        public void a(l lVar, com.google.firebase.m.f fVar) {
            fVar.a(f4275b, lVar.b());
            fVar.a(f4276c, lVar.a());
            fVar.a(f4277d, lVar.c());
            fVar.a(f4278e, lVar.e());
            fVar.a(f4279f, lVar.f());
            fVar.a(f4280g, lVar.g());
            fVar.a(f4281h, lVar.d());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes.dex */
    private static final class e implements com.google.firebase.m.e<m> {

        /* renamed from: a, reason: collision with root package name */
        static final e f4282a = new e();

        /* renamed from: b, reason: collision with root package name */
        private static final com.google.firebase.m.d f4283b = com.google.firebase.m.d.a("requestTimeMs");

        /* renamed from: c, reason: collision with root package name */
        private static final com.google.firebase.m.d f4284c = com.google.firebase.m.d.a("requestUptimeMs");

        /* renamed from: d, reason: collision with root package name */
        private static final com.google.firebase.m.d f4285d = com.google.firebase.m.d.a("clientInfo");

        /* renamed from: e, reason: collision with root package name */
        private static final com.google.firebase.m.d f4286e = com.google.firebase.m.d.a("logSource");

        /* renamed from: f, reason: collision with root package name */
        private static final com.google.firebase.m.d f4287f = com.google.firebase.m.d.a("logSourceName");

        /* renamed from: g, reason: collision with root package name */
        private static final com.google.firebase.m.d f4288g = com.google.firebase.m.d.a("logEvent");

        /* renamed from: h, reason: collision with root package name */
        private static final com.google.firebase.m.d f4289h = com.google.firebase.m.d.a("qosTier");

        private e() {
        }

        @Override // com.google.firebase.m.e
        public void a(m mVar, com.google.firebase.m.f fVar) {
            fVar.a(f4283b, mVar.f());
            fVar.a(f4284c, mVar.g());
            fVar.a(f4285d, mVar.a());
            fVar.a(f4286e, mVar.c());
            fVar.a(f4287f, mVar.d());
            fVar.a(f4288g, mVar.b());
            fVar.a(f4289h, mVar.e());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes.dex */
    private static final class f implements com.google.firebase.m.e<o> {

        /* renamed from: a, reason: collision with root package name */
        static final f f4290a = new f();

        /* renamed from: b, reason: collision with root package name */
        private static final com.google.firebase.m.d f4291b = com.google.firebase.m.d.a("networkType");

        /* renamed from: c, reason: collision with root package name */
        private static final com.google.firebase.m.d f4292c = com.google.firebase.m.d.a("mobileSubtype");

        private f() {
        }

        @Override // com.google.firebase.m.e
        public void a(o oVar, com.google.firebase.m.f fVar) {
            fVar.a(f4291b, oVar.b());
            fVar.a(f4292c, oVar.a());
        }
    }

    private b() {
    }

    @Override // com.google.firebase.m.i.a
    public void a(com.google.firebase.m.i.b<?> bVar) {
        bVar.a(j.class, C0074b.f4269a);
        bVar.a(com.google.android.datatransport.cct.f.d.class, C0074b.f4269a);
        bVar.a(m.class, e.f4282a);
        bVar.a(g.class, e.f4282a);
        bVar.a(k.class, c.f4271a);
        bVar.a(com.google.android.datatransport.cct.f.e.class, c.f4271a);
        bVar.a(com.google.android.datatransport.cct.f.a.class, a.f4257a);
        bVar.a(com.google.android.datatransport.cct.f.c.class, a.f4257a);
        bVar.a(l.class, d.f4274a);
        bVar.a(com.google.android.datatransport.cct.f.f.class, d.f4274a);
        bVar.a(o.class, f.f4290a);
        bVar.a(i.class, f.f4290a);
    }
}
