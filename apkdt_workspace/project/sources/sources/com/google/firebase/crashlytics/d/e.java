package com.google.firebase.crashlytics.d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.google.firebase.crashlytics.d.h.m;
import com.google.firebase.crashlytics.d.h.t;
import com.google.firebase.crashlytics.d.h.v;
import com.google.firebase.crashlytics.d.h.y;
import com.google.firebase.crashlytics.d.o.j.f;
import e.i.b.b.d.g;
import e.i.b.b.d.h;
import java.util.concurrent.Executor;

/* compiled from: Onboarding.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.j.c f14372a = new com.google.firebase.crashlytics.d.j.c();

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.c f14373b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f14374c;

    /* renamed from: d, reason: collision with root package name */
    private PackageManager f14375d;

    /* renamed from: e, reason: collision with root package name */
    private String f14376e;

    /* renamed from: f, reason: collision with root package name */
    private PackageInfo f14377f;

    /* renamed from: g, reason: collision with root package name */
    private String f14378g;

    /* renamed from: h, reason: collision with root package name */
    private String f14379h;

    /* renamed from: i, reason: collision with root package name */
    private String f14380i;

    /* renamed from: j, reason: collision with root package name */
    private String f14381j;

    /* renamed from: k, reason: collision with root package name */
    private String f14382k;

    /* renamed from: l, reason: collision with root package name */
    private y f14383l;
    private t m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Onboarding.java */
    /* loaded from: classes.dex */
    public class a implements g<com.google.firebase.crashlytics.d.o.i.b, Void> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f14384a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.google.firebase.crashlytics.d.o.d f14385b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Executor f14386c;

        a(String str, com.google.firebase.crashlytics.d.o.d dVar, Executor executor) {
            this.f14384a = str;
            this.f14385b = dVar;
            this.f14386c = executor;
        }

        @Override // e.i.b.b.d.g
        @NonNull
        public h<Void> a(@Nullable com.google.firebase.crashlytics.d.o.i.b bVar) {
            try {
                e.this.a(bVar, this.f14384a, this.f14385b, this.f14386c, true);
                return null;
            } catch (Exception e2) {
                com.google.firebase.crashlytics.d.b.a().b("Error performing auto configuration.", e2);
                throw e2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Onboarding.java */
    /* loaded from: classes.dex */
    public class b implements g<Void, com.google.firebase.crashlytics.d.o.i.b> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.google.firebase.crashlytics.d.o.d f14388a;

        b(e eVar, com.google.firebase.crashlytics.d.o.d dVar) {
            this.f14388a = dVar;
        }

        @Override // e.i.b.b.d.g
        @NonNull
        public h<com.google.firebase.crashlytics.d.o.i.b> a(@Nullable Void r1) {
            return this.f14388a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Onboarding.java */
    /* loaded from: classes.dex */
    public class c implements e.i.b.b.d.a<Void, Object> {
        c(e eVar) {
        }

        @Override // e.i.b.b.d.a
        public Object a(@NonNull h<Void> hVar) {
            if (hVar.e()) {
                return null;
            }
            com.google.firebase.crashlytics.d.b.a().b("Error fetching settings.", hVar.a());
            return null;
        }
    }

    public e(com.google.firebase.c cVar, Context context, y yVar, t tVar) {
        this.f14373b = cVar;
        this.f14374c = context;
        this.f14383l = yVar;
        this.m = tVar;
    }

    private boolean b(com.google.firebase.crashlytics.d.o.i.b bVar, String str, boolean z) {
        return new f(b(), bVar.f14709b, this.f14372a, e()).a(a(bVar.f14712e, str), z);
    }

    private y d() {
        return this.f14383l;
    }

    private static String e() {
        return m.i();
    }

    public boolean c() {
        try {
            this.f14380i = this.f14383l.c();
            this.f14375d = this.f14374c.getPackageManager();
            this.f14376e = this.f14374c.getPackageName();
            this.f14377f = this.f14375d.getPackageInfo(this.f14376e, 0);
            this.f14378g = Integer.toString(this.f14377f.versionCode);
            this.f14379h = this.f14377f.versionName == null ? "0.0" : this.f14377f.versionName;
            this.f14381j = this.f14375d.getApplicationLabel(this.f14374c.getApplicationInfo()).toString();
            this.f14382k = Integer.toString(this.f14374c.getApplicationInfo().targetSdkVersion);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            com.google.firebase.crashlytics.d.b.a().b("Failed init", e2);
            return false;
        }
    }

    public Context a() {
        return this.f14374c;
    }

    public void a(Executor executor, com.google.firebase.crashlytics.d.o.d dVar) {
        this.m.c().a(executor, new b(this, dVar)).a(executor, new a(this.f14373b.d().b(), dVar, executor));
    }

    String b() {
        return com.google.firebase.crashlytics.d.h.h.b(this.f14374c, "com.crashlytics.ApiEndpoint");
    }

    public com.google.firebase.crashlytics.d.o.d a(Context context, com.google.firebase.c cVar, Executor executor) {
        com.google.firebase.crashlytics.d.o.d a2 = com.google.firebase.crashlytics.d.o.d.a(context, cVar.d().b(), this.f14383l, this.f14372a, this.f14378g, this.f14379h, b(), this.m);
        a2.a(executor).a(executor, new c(this));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.google.firebase.crashlytics.d.o.i.b bVar, String str, com.google.firebase.crashlytics.d.o.d dVar, Executor executor, boolean z) {
        if ("new".equals(bVar.f14708a)) {
            if (a(bVar, str, z)) {
                dVar.a(com.google.firebase.crashlytics.d.o.c.SKIP_CACHE_LOOKUP, executor);
                return;
            } else {
                com.google.firebase.crashlytics.d.b.a().b("Failed to create app with Crashlytics service.", null);
                return;
            }
        }
        if ("configured".equals(bVar.f14708a)) {
            dVar.a(com.google.firebase.crashlytics.d.o.c.SKIP_CACHE_LOOKUP, executor);
        } else if (bVar.f14713f) {
            com.google.firebase.crashlytics.d.b.a().a("Server says an update is required - forcing a full App update.");
            b(bVar, str, z);
        }
    }

    private boolean a(com.google.firebase.crashlytics.d.o.i.b bVar, String str, boolean z) {
        return new com.google.firebase.crashlytics.d.o.j.c(b(), bVar.f14709b, this.f14372a, e()).a(a(bVar.f14712e, str), z);
    }

    private com.google.firebase.crashlytics.d.o.i.a a(String str, String str2) {
        return new com.google.firebase.crashlytics.d.o.i.a(str, str2, d().b(), this.f14379h, this.f14378g, com.google.firebase.crashlytics.d.h.h.a(com.google.firebase.crashlytics.d.h.h.e(a()), str2, this.f14379h, this.f14378g), this.f14381j, v.determineFrom(this.f14380i).getId(), this.f14382k, ZimPlatform.REASON_0);
    }
}
