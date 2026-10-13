package com.google.firebase.crashlytics.d.h;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SessionReportingCoordinator.java */
/* loaded from: classes.dex */
public class h0 implements o {

    /* renamed from: a, reason: collision with root package name */
    private final p f14427a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.k.g f14428b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.n.c f14429c;

    /* renamed from: d, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.i.b f14430d;

    /* renamed from: e, reason: collision with root package name */
    private final j0 f14431e;

    h0(p pVar, com.google.firebase.crashlytics.d.k.g gVar, com.google.firebase.crashlytics.d.n.c cVar, com.google.firebase.crashlytics.d.i.b bVar, j0 j0Var) {
        this.f14427a = pVar;
        this.f14428b = gVar;
        this.f14429c = cVar;
        this.f14430d = bVar;
        this.f14431e = j0Var;
    }

    public static h0 a(Context context, y yVar, com.google.firebase.crashlytics.d.k.h hVar, b bVar, com.google.firebase.crashlytics.d.i.b bVar2, j0 j0Var, com.google.firebase.crashlytics.d.p.d dVar, com.google.firebase.crashlytics.d.o.e eVar) {
        return new h0(new p(context, yVar, bVar, dVar), new com.google.firebase.crashlytics.d.k.g(new File(hVar.a()), eVar), com.google.firebase.crashlytics.d.n.c.a(context), bVar2, j0Var);
    }

    public void b(@NonNull Throwable th, @NonNull Thread thread, @NonNull String str, long j2) {
        com.google.firebase.crashlytics.d.b.a().a("Persisting non-fatal event for session " + str);
        a(th, thread, str, HummerConstants.HUMMER_ERROR, j2, false);
    }

    public void a(@NonNull String str, long j2) {
        this.f14428b.a(this.f14427a.a(str, j2));
    }

    public void a(@NonNull Throwable th, @NonNull Thread thread, @NonNull String str, long j2) {
        com.google.firebase.crashlytics.d.b.a().a("Persisting fatal event for session " + str);
        a(th, thread, str, "crash", j2, true);
    }

    public void a(@NonNull String str, @NonNull List<c0> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<c0> it = list.iterator();
        while (it.hasNext()) {
            CrashlyticsReport.c.b c2 = it.next().c();
            if (c2 != null) {
                arrayList.add(c2);
            }
        }
        com.google.firebase.crashlytics.d.k.g gVar = this.f14428b;
        CrashlyticsReport.c.a c3 = CrashlyticsReport.c.c();
        c3.a(com.google.firebase.crashlytics.internal.model.v.a(arrayList));
        gVar.a(str, c3.a());
    }

    public void a(@NonNull String str) {
        String b2 = this.f14431e.b();
        if (b2 == null) {
            com.google.firebase.crashlytics.d.b.a().a("Could not persist user ID; no user ID available");
        } else {
            this.f14428b.a(b2, str);
        }
    }

    public void a(long j2, @Nullable String str) {
        this.f14428b.a(str, j2);
    }

    public void a() {
        this.f14428b.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e.i.b.b.d.h<Void> a(@NonNull Executor executor, @NonNull u uVar) {
        if (uVar == u.NONE) {
            com.google.firebase.crashlytics.d.b.a().a("Send via DataTransport disabled. Removing DataTransport reports.");
            this.f14428b.a();
            return e.i.b.b.d.k.a((Object) null);
        }
        List<q> b2 = this.f14428b.b();
        ArrayList arrayList = new ArrayList();
        for (q qVar : b2) {
            if (qVar.a().i() == CrashlyticsReport.e.NATIVE && uVar != u.ALL) {
                com.google.firebase.crashlytics.d.b.a().a("Send native reports via DataTransport disabled. Removing DataTransport reports.");
                this.f14428b.a(qVar.b());
            } else {
                arrayList.add(this.f14429c.a(qVar).a(executor, f0.a(this)));
            }
        }
        return e.i.b.b.d.k.a((Collection<? extends e.i.b.b.d.h<?>>) arrayList);
    }

    private void a(@NonNull Throwable th, @NonNull Thread thread, @NonNull String str, @NonNull String str2, long j2, boolean z) {
        boolean equals = str2.equals("crash");
        CrashlyticsReport.d.AbstractC0121d a2 = this.f14427a.a(th, thread, str2, j2, 4, 8, z);
        CrashlyticsReport.d.AbstractC0121d.b f2 = a2.f();
        String c2 = this.f14430d.c();
        if (c2 != null) {
            CrashlyticsReport.d.AbstractC0121d.AbstractC0132d.a b2 = CrashlyticsReport.d.AbstractC0121d.AbstractC0132d.b();
            b2.a(c2);
            f2.a(b2.a());
        } else {
            com.google.firebase.crashlytics.d.b.a().a("No log data to include with this event.");
        }
        List<CrashlyticsReport.b> a3 = a(this.f14431e.a());
        if (!a3.isEmpty()) {
            CrashlyticsReport.d.AbstractC0121d.a.AbstractC0122a e2 = a2.a().e();
            e2.a(com.google.firebase.crashlytics.internal.model.v.a(a3));
            f2.a(e2.a());
        }
        this.f14428b.a(f2.a(), str, equals);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(@NonNull e.i.b.b.d.h<q> hVar) {
        if (hVar.e()) {
            q b2 = hVar.b();
            com.google.firebase.crashlytics.d.b.a().a("Crashlytics report successfully enqueued to DataTransport: " + b2.b());
            this.f14428b.a(b2.b());
            return true;
        }
        com.google.firebase.crashlytics.d.b.a().a("Crashlytics report could not be enqueued to DataTransport", hVar.a());
        return false;
    }

    @NonNull
    private static List<CrashlyticsReport.b> a(@NonNull Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            CrashlyticsReport.b.a c2 = CrashlyticsReport.b.c();
            c2.a(entry.getKey());
            c2.b(entry.getValue());
            arrayList.add(c2.a());
        }
        Collections.sort(arrayList, g0.a());
        return arrayList;
    }
}
