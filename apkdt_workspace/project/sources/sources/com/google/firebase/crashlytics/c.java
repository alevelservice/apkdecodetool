package com.google.firebase.crashlytics;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.d.e;
import com.google.firebase.crashlytics.d.f.f;
import com.google.firebase.crashlytics.d.h.m;
import com.google.firebase.crashlytics.d.h.t;
import com.google.firebase.crashlytics.d.h.w;
import com.google.firebase.crashlytics.d.h.y;
import com.google.firebase.crashlytics.d.o.d;
import com.google.firebase.installations.g;
import com.google.firebase.k.a.a;
import e.i.b.b.d.h;
import e.i.b.b.d.k;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: FirebaseCrashlytics.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private final m f14362a;

    /* compiled from: FirebaseCrashlytics.java */
    /* loaded from: classes.dex */
    class a implements Callable<Void> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ e f14363e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ExecutorService f14364f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ d f14365g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ boolean f14366h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ m f14367i;

        a(e eVar, ExecutorService executorService, d dVar, boolean z, m mVar) {
            this.f14363e = eVar;
            this.f14364f = executorService;
            this.f14365g = dVar;
            this.f14366h = z;
            this.f14367i = mVar;
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            this.f14363e.a(this.f14364f, this.f14365g);
            if (!this.f14366h) {
                return null;
            }
            this.f14367i.a(this.f14365g);
            return null;
        }
    }

    private c(@NonNull m mVar) {
        this.f14362a = mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [com.google.firebase.crashlytics.d.f.d, com.google.firebase.crashlytics.d.f.b] */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.firebase.crashlytics.d.f.e] */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.google.firebase.crashlytics.a] */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.firebase.crashlytics.d.f.c, com.google.firebase.crashlytics.d.f.b] */
    @Nullable
    public static c a(@NonNull com.google.firebase.c cVar, @NonNull g gVar, @Nullable com.google.firebase.crashlytics.d.a aVar, @Nullable com.google.firebase.k.a.a aVar2) {
        f fVar;
        com.google.firebase.crashlytics.d.g.c cVar2;
        Context b2 = cVar.b();
        y yVar = new y(b2, b2.getPackageName(), gVar);
        t tVar = new t(cVar);
        com.google.firebase.crashlytics.d.a cVar3 = aVar == null ? new com.google.firebase.crashlytics.d.c() : aVar;
        e eVar = new e(cVar, b2, yVar, tVar);
        if (aVar2 != null) {
            com.google.firebase.crashlytics.d.b.a().a("Firebase Analytics is available.");
            ?? eVar2 = new com.google.firebase.crashlytics.d.f.e(aVar2);
            ?? aVar3 = new com.google.firebase.crashlytics.a();
            if (a(aVar2, (com.google.firebase.crashlytics.a) aVar3) != null) {
                com.google.firebase.crashlytics.d.b.a().a("Firebase Analytics listener registered successfully.");
                ?? dVar = new com.google.firebase.crashlytics.d.f.d();
                ?? cVar4 = new com.google.firebase.crashlytics.d.f.c(eVar2, 500, TimeUnit.MILLISECONDS);
                aVar3.a(dVar);
                aVar3.b(cVar4);
                fVar = cVar4;
                cVar2 = dVar;
            } else {
                com.google.firebase.crashlytics.d.b.a().a("Firebase Analytics listener registration failed.");
                cVar2 = new com.google.firebase.crashlytics.d.g.c();
                fVar = eVar2;
            }
        } else {
            com.google.firebase.crashlytics.d.b.a().a("Firebase Analytics is unavailable.");
            cVar2 = new com.google.firebase.crashlytics.d.g.c();
            fVar = new f();
        }
        m mVar = new m(cVar, yVar, cVar3, tVar, cVar2, fVar, w.a("Crashlytics Exception Handler"));
        if (!eVar.c()) {
            com.google.firebase.crashlytics.d.b.a().b("Unable to start Crashlytics.");
            return null;
        }
        ExecutorService a2 = w.a("com.google.firebase.crashlytics.startup");
        d a3 = eVar.a(b2, cVar, a2);
        k.a(a2, new a(eVar, a2, a3, mVar.b(a3), mVar));
        return new c(mVar);
    }

    @NonNull
    public static c e() {
        c cVar = (c) com.google.firebase.c.k().a(c.class);
        if (cVar != null) {
            return cVar;
        }
        throw new NullPointerException("FirebaseCrashlytics component is not present.");
    }

    public void b(@NonNull String str) {
        this.f14362a.b(str);
    }

    public boolean c() {
        return this.f14362a.c();
    }

    public void d() {
        this.f14362a.g();
    }

    public void b() {
        this.f14362a.b();
    }

    private static a.InterfaceC0139a a(@NonNull com.google.firebase.k.a.a aVar, @NonNull com.google.firebase.crashlytics.a aVar2) {
        a.InterfaceC0139a a2 = aVar.a("clx", aVar2);
        if (a2 == null) {
            com.google.firebase.crashlytics.d.b.a().a("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            a2 = aVar.a("crash", aVar2);
            if (a2 != null) {
                com.google.firebase.crashlytics.d.b.a().d("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
            }
        }
        return a2;
    }

    public void a(@NonNull Throwable th) {
        if (th == null) {
            com.google.firebase.crashlytics.d.b.a().d("Crashlytics is ignoring a request to log a null exception.");
        } else {
            this.f14362a.a(th);
        }
    }

    public void a(@NonNull String str) {
        this.f14362a.a(str);
    }

    public void a(@NonNull String str, @NonNull String str2) {
        this.f14362a.a(str, str2);
    }

    @NonNull
    public h<Boolean> a() {
        return this.f14362a.a();
    }

    public void a(boolean z) {
        this.f14362a.a(Boolean.valueOf(z));
    }

    public void a(@Nullable Boolean bool) {
        this.f14362a.a(bool);
    }
}
