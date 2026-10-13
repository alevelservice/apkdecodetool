package com.google.firebase.crashlytics.internal.model;

import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import com.zoloz.builder.plugin.HummerFoundationLite;

/* compiled from: AutoCrashlyticsReportEncoder.java */
/* loaded from: classes.dex */
public final class a implements com.google.firebase.m.i.a {

    /* renamed from: a, reason: collision with root package name */
    public static final com.google.firebase.m.i.a f14748a = new a();

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* renamed from: com.google.firebase.crashlytics.internal.model.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0133a implements com.google.firebase.m.e<CrashlyticsReport.b> {

        /* renamed from: a, reason: collision with root package name */
        static final C0133a f14749a = new C0133a();

        private C0133a() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.b bVar, com.google.firebase.m.f fVar) {
            fVar.a("key", bVar.a());
            fVar.a(HummerConstants.VALUE, bVar.b());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class b implements com.google.firebase.m.e<CrashlyticsReport> {

        /* renamed from: a, reason: collision with root package name */
        static final b f14750a = new b();

        private b() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport crashlyticsReport, com.google.firebase.m.f fVar) {
            fVar.a("sdkVersion", crashlyticsReport.g());
            fVar.a("gmpAppId", crashlyticsReport.c());
            fVar.a("platform", crashlyticsReport.f());
            fVar.a("installationUuid", crashlyticsReport.d());
            fVar.a("buildVersion", crashlyticsReport.a());
            fVar.a("displayVersion", crashlyticsReport.b());
            fVar.a("session", crashlyticsReport.h());
            fVar.a("ndkPayload", crashlyticsReport.e());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class c implements com.google.firebase.m.e<CrashlyticsReport.c> {

        /* renamed from: a, reason: collision with root package name */
        static final c f14751a = new c();

        private c() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.c cVar, com.google.firebase.m.f fVar) {
            fVar.a("files", cVar.a());
            fVar.a("orgId", cVar.b());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class d implements com.google.firebase.m.e<CrashlyticsReport.c.b> {

        /* renamed from: a, reason: collision with root package name */
        static final d f14752a = new d();

        private d() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.c.b bVar, com.google.firebase.m.f fVar) {
            fVar.a("filename", bVar.b());
            fVar.a("contents", bVar.a());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class e implements com.google.firebase.m.e<CrashlyticsReport.d.a> {

        /* renamed from: a, reason: collision with root package name */
        static final e f14753a = new e();

        private e() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.a aVar, com.google.firebase.m.f fVar) {
            fVar.a("identifier", aVar.d());
            fVar.a("version", aVar.g());
            fVar.a("displayVersion", aVar.c());
            fVar.a("organization", aVar.f());
            fVar.a("installationUuid", aVar.e());
            fVar.a("developmentPlatform", aVar.a());
            fVar.a("developmentPlatformVersion", aVar.b());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class f implements com.google.firebase.m.e<CrashlyticsReport.d.a.b> {

        /* renamed from: a, reason: collision with root package name */
        static final f f14754a = new f();

        private f() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.a.b bVar, com.google.firebase.m.f fVar) {
            fVar.a("clsId", bVar.a());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class g implements com.google.firebase.m.e<CrashlyticsReport.d.c> {

        /* renamed from: a, reason: collision with root package name */
        static final g f14755a = new g();

        private g() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.c cVar, com.google.firebase.m.f fVar) {
            fVar.a("arch", cVar.a());
            fVar.a("model", cVar.e());
            fVar.a("cores", cVar.b());
            fVar.a("ram", cVar.g());
            fVar.a("diskSpace", cVar.c());
            fVar.a("simulator", cVar.i());
            fVar.a("state", cVar.h());
            fVar.a("manufacturer", cVar.d());
            fVar.a("modelClass", cVar.f());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class h implements com.google.firebase.m.e<CrashlyticsReport.d> {

        /* renamed from: a, reason: collision with root package name */
        static final h f14756a = new h();

        private h() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d dVar, com.google.firebase.m.f fVar) {
            fVar.a("generator", dVar.e());
            fVar.a("identifier", dVar.h());
            fVar.a("startedAt", dVar.j());
            fVar.a("endedAt", dVar.c());
            fVar.a("crashed", dVar.l());
            fVar.a("app", dVar.a());
            fVar.a("user", dVar.k());
            fVar.a("os", dVar.i());
            fVar.a("device", dVar.b());
            fVar.a("events", dVar.d());
            fVar.a("generatorType", dVar.f());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class i implements com.google.firebase.m.e<CrashlyticsReport.d.AbstractC0121d.a> {

        /* renamed from: a, reason: collision with root package name */
        static final i f14757a = new i();

        private i() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.AbstractC0121d.a aVar, com.google.firebase.m.f fVar) {
            fVar.a("execution", aVar.c());
            fVar.a("customAttributes", aVar.b());
            fVar.a("background", aVar.a());
            fVar.a("uiOrientation", aVar.d());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class j implements com.google.firebase.m.e<CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a> {

        /* renamed from: a, reason: collision with root package name */
        static final j f14758a = new j();

        private j() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a abstractC0123a, com.google.firebase.m.f fVar) {
            fVar.a("baseAddress", abstractC0123a.a());
            fVar.a("size", abstractC0123a.c());
            fVar.a("name", abstractC0123a.b());
            fVar.a("uuid", abstractC0123a.e());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class k implements com.google.firebase.m.e<CrashlyticsReport.d.AbstractC0121d.a.b> {

        /* renamed from: a, reason: collision with root package name */
        static final k f14759a = new k();

        private k() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.AbstractC0121d.a.b bVar, com.google.firebase.m.f fVar) {
            fVar.a("threads", bVar.d());
            fVar.a(HummerConstants.NORMAL_EXCEPTION, bVar.b());
            fVar.a("signal", bVar.c());
            fVar.a("binaries", bVar.a());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class l implements com.google.firebase.m.e<CrashlyticsReport.d.AbstractC0121d.a.b.c> {

        /* renamed from: a, reason: collision with root package name */
        static final l f14760a = new l();

        private l() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.AbstractC0121d.a.b.c cVar, com.google.firebase.m.f fVar) {
            fVar.a("type", cVar.e());
            fVar.a(ZdocRecordService.REASON, cVar.d());
            fVar.a("frames", cVar.b());
            fVar.a("causedBy", cVar.a());
            fVar.a("overflowCount", cVar.c());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class m implements com.google.firebase.m.e<CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d> {

        /* renamed from: a, reason: collision with root package name */
        static final m f14761a = new m();

        private m() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d abstractC0127d, com.google.firebase.m.f fVar) {
            fVar.a("name", abstractC0127d.c());
            fVar.a(HummerConstants.CODE, abstractC0127d.b());
            fVar.a("address", abstractC0127d.a());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class n implements com.google.firebase.m.e<CrashlyticsReport.d.AbstractC0121d.a.b.e> {

        /* renamed from: a, reason: collision with root package name */
        static final n f14762a = new n();

        private n() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.AbstractC0121d.a.b.e eVar, com.google.firebase.m.f fVar) {
            fVar.a("name", eVar.c());
            fVar.a("importance", eVar.b());
            fVar.a("frames", eVar.a());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class o implements com.google.firebase.m.e<CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b> {

        /* renamed from: a, reason: collision with root package name */
        static final o f14763a = new o();

        private o() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b abstractC0130b, com.google.firebase.m.f fVar) {
            fVar.a("pc", abstractC0130b.d());
            fVar.a("symbol", abstractC0130b.e());
            fVar.a("file", abstractC0130b.a());
            fVar.a("offset", abstractC0130b.c());
            fVar.a("importance", abstractC0130b.b());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class p implements com.google.firebase.m.e<CrashlyticsReport.d.AbstractC0121d.c> {

        /* renamed from: a, reason: collision with root package name */
        static final p f14764a = new p();

        private p() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.AbstractC0121d.c cVar, com.google.firebase.m.f fVar) {
            fVar.a("batteryLevel", cVar.a());
            fVar.a("batteryVelocity", cVar.b());
            fVar.a("proximityOn", cVar.f());
            fVar.a("orientation", cVar.d());
            fVar.a("ramUsed", cVar.e());
            fVar.a("diskUsed", cVar.c());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class q implements com.google.firebase.m.e<CrashlyticsReport.d.AbstractC0121d> {

        /* renamed from: a, reason: collision with root package name */
        static final q f14765a = new q();

        private q() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.AbstractC0121d abstractC0121d, com.google.firebase.m.f fVar) {
            fVar.a("timestamp", abstractC0121d.d());
            fVar.a("type", abstractC0121d.e());
            fVar.a("app", abstractC0121d.a());
            fVar.a("device", abstractC0121d.b());
            fVar.a(HummerFoundationLite.HUMMER_FOUNDATION_LOG, abstractC0121d.c());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class r implements com.google.firebase.m.e<CrashlyticsReport.d.AbstractC0121d.AbstractC0132d> {

        /* renamed from: a, reason: collision with root package name */
        static final r f14766a = new r();

        private r() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.AbstractC0121d.AbstractC0132d abstractC0132d, com.google.firebase.m.f fVar) {
            fVar.a("content", abstractC0132d.a());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class s implements com.google.firebase.m.e<CrashlyticsReport.d.e> {

        /* renamed from: a, reason: collision with root package name */
        static final s f14767a = new s();

        private s() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.e eVar, com.google.firebase.m.f fVar) {
            fVar.a("platform", eVar.b());
            fVar.a("version", eVar.c());
            fVar.a("buildVersion", eVar.a());
            fVar.a("jailbroken", eVar.d());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes.dex */
    private static final class t implements com.google.firebase.m.e<CrashlyticsReport.d.f> {

        /* renamed from: a, reason: collision with root package name */
        static final t f14768a = new t();

        private t() {
        }

        @Override // com.google.firebase.m.e
        public void a(CrashlyticsReport.d.f fVar, com.google.firebase.m.f fVar2) {
            fVar2.a("identifier", fVar.a());
        }
    }

    private a() {
    }

    @Override // com.google.firebase.m.i.a
    public void a(com.google.firebase.m.i.b<?> bVar) {
        bVar.a(CrashlyticsReport.class, b.f14750a);
        bVar.a(com.google.firebase.crashlytics.internal.model.b.class, b.f14750a);
        bVar.a(CrashlyticsReport.d.class, h.f14756a);
        bVar.a(com.google.firebase.crashlytics.internal.model.f.class, h.f14756a);
        bVar.a(CrashlyticsReport.d.a.class, e.f14753a);
        bVar.a(com.google.firebase.crashlytics.internal.model.g.class, e.f14753a);
        bVar.a(CrashlyticsReport.d.a.b.class, f.f14754a);
        bVar.a(com.google.firebase.crashlytics.internal.model.h.class, f.f14754a);
        bVar.a(CrashlyticsReport.d.f.class, t.f14768a);
        bVar.a(u.class, t.f14768a);
        bVar.a(CrashlyticsReport.d.e.class, s.f14767a);
        bVar.a(com.google.firebase.crashlytics.internal.model.t.class, s.f14767a);
        bVar.a(CrashlyticsReport.d.c.class, g.f14755a);
        bVar.a(com.google.firebase.crashlytics.internal.model.i.class, g.f14755a);
        bVar.a(CrashlyticsReport.d.AbstractC0121d.class, q.f14765a);
        bVar.a(com.google.firebase.crashlytics.internal.model.j.class, q.f14765a);
        bVar.a(CrashlyticsReport.d.AbstractC0121d.a.class, i.f14757a);
        bVar.a(com.google.firebase.crashlytics.internal.model.k.class, i.f14757a);
        bVar.a(CrashlyticsReport.d.AbstractC0121d.a.b.class, k.f14759a);
        bVar.a(com.google.firebase.crashlytics.internal.model.l.class, k.f14759a);
        bVar.a(CrashlyticsReport.d.AbstractC0121d.a.b.e.class, n.f14762a);
        bVar.a(com.google.firebase.crashlytics.internal.model.p.class, n.f14762a);
        bVar.a(CrashlyticsReport.d.AbstractC0121d.a.b.e.AbstractC0130b.class, o.f14763a);
        bVar.a(com.google.firebase.crashlytics.internal.model.q.class, o.f14763a);
        bVar.a(CrashlyticsReport.d.AbstractC0121d.a.b.c.class, l.f14760a);
        bVar.a(com.google.firebase.crashlytics.internal.model.n.class, l.f14760a);
        bVar.a(CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0127d.class, m.f14761a);
        bVar.a(com.google.firebase.crashlytics.internal.model.o.class, m.f14761a);
        bVar.a(CrashlyticsReport.d.AbstractC0121d.a.b.AbstractC0123a.class, j.f14758a);
        bVar.a(com.google.firebase.crashlytics.internal.model.m.class, j.f14758a);
        bVar.a(CrashlyticsReport.b.class, C0133a.f14749a);
        bVar.a(com.google.firebase.crashlytics.internal.model.c.class, C0133a.f14749a);
        bVar.a(CrashlyticsReport.d.AbstractC0121d.c.class, p.f14764a);
        bVar.a(com.google.firebase.crashlytics.internal.model.r.class, p.f14764a);
        bVar.a(CrashlyticsReport.d.AbstractC0121d.AbstractC0132d.class, r.f14766a);
        bVar.a(com.google.firebase.crashlytics.internal.model.s.class, r.f14766a);
        bVar.a(CrashlyticsReport.c.class, c.f14751a);
        bVar.a(com.google.firebase.crashlytics.internal.model.d.class, c.f14751a);
        bVar.a(CrashlyticsReport.c.b.class, d.f14752a);
        bVar.a(com.google.firebase.crashlytics.internal.model.e.class, d.f14752a);
    }
}
