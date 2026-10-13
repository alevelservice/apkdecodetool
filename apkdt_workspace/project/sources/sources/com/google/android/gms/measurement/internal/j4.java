package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzp;
import com.google.android.gms.internal.measurement.zzx;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class j4 implements h5 {
    private static volatile j4 G;
    private volatile Boolean A;

    @VisibleForTesting
    private Boolean B;

    @VisibleForTesting
    private Boolean C;
    private int D;
    private final long F;

    /* renamed from: a, reason: collision with root package name */
    private final Context f13008a;

    /* renamed from: b, reason: collision with root package name */
    private final String f13009b;

    /* renamed from: c, reason: collision with root package name */
    private final String f13010c;

    /* renamed from: d, reason: collision with root package name */
    private final String f13011d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f13012e;

    /* renamed from: f, reason: collision with root package name */
    private final y8 f13013f;

    /* renamed from: g, reason: collision with root package name */
    private final z8 f13014g;

    /* renamed from: h, reason: collision with root package name */
    private final o3 f13015h;

    /* renamed from: i, reason: collision with root package name */
    private final f3 f13016i;

    /* renamed from: j, reason: collision with root package name */
    private final d4 f13017j;

    /* renamed from: k, reason: collision with root package name */
    private final v7 f13018k;

    /* renamed from: l, reason: collision with root package name */
    private final r8 f13019l;
    private final d3 m;
    private final com.google.android.gms.common.util.e n;
    private final p6 o;
    private final p5 p;
    private final a q;
    private final k6 r;
    private b3 s;
    private u6 t;
    private d u;
    private y2 v;
    private u3 w;
    private Boolean y;
    private long z;
    private boolean x = false;
    private AtomicInteger E = new AtomicInteger(0);

    private j4(m5 m5Var) {
        Bundle bundle;
        boolean z = false;
        com.google.android.gms.common.internal.m.a(m5Var);
        this.f13013f = new y8(m5Var.f13077a);
        j.a(this.f13013f);
        this.f13008a = m5Var.f13077a;
        this.f13009b = m5Var.f13078b;
        this.f13010c = m5Var.f13079c;
        this.f13011d = m5Var.f13080d;
        this.f13012e = m5Var.f13084h;
        this.A = m5Var.f13081e;
        zzx zzxVar = m5Var.f13083g;
        if (zzxVar != null && (bundle = zzxVar.f12254k) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.B = (Boolean) obj;
            }
            Object obj2 = zzxVar.f12254k.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.C = (Boolean) obj2;
            }
        }
        com.google.android.gms.internal.measurement.p1.a(this.f13008a);
        this.n = com.google.android.gms.common.util.h.d();
        this.F = this.n.a();
        this.f13014g = new z8(this);
        o3 o3Var = new o3(this);
        o3Var.k();
        this.f13015h = o3Var;
        f3 f3Var = new f3(this);
        f3Var.k();
        this.f13016i = f3Var;
        r8 r8Var = new r8(this);
        r8Var.k();
        this.f13019l = r8Var;
        d3 d3Var = new d3(this);
        d3Var.k();
        this.m = d3Var;
        this.q = new a(this);
        p6 p6Var = new p6(this);
        p6Var.s();
        this.o = p6Var;
        p5 p5Var = new p5(this);
        p5Var.s();
        this.p = p5Var;
        v7 v7Var = new v7(this);
        v7Var.s();
        this.f13018k = v7Var;
        k6 k6Var = new k6(this);
        k6Var.k();
        this.r = k6Var;
        d4 d4Var = new d4(this);
        d4Var.k();
        this.f13017j = d4Var;
        zzx zzxVar2 = m5Var.f13083g;
        if (zzxVar2 != null && zzxVar2.f12249f != 0) {
            z = true;
        }
        boolean z2 = !z;
        if (this.f13008a.getApplicationContext() instanceof Application) {
            p5 v = v();
            if (v.getContext().getApplicationContext() instanceof Application) {
                Application application = (Application) v.getContext().getApplicationContext();
                if (v.f13144c == null) {
                    v.f13144c = new i6(v, null);
                }
                if (z2) {
                    application.unregisterActivityLifecycleCallbacks(v.f13144c);
                    application.registerActivityLifecycleCallbacks(v.f13144c);
                    v.zzab().y().a("Registered activity lifecycle callback");
                }
            }
        } else {
            zzab().t().a("Application context is not an Application");
        }
        this.f13017j.a(new k4(this, m5Var));
    }

    private final void E() {
        if (!this.x) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    private final k6 F() {
        b(this.r);
        return this.r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void a(m5 m5Var) {
        h3 w;
        String concat;
        b().g();
        z8.r();
        d dVar = new d(this);
        dVar.k();
        this.u = dVar;
        y2 y2Var = new y2(this, m5Var.f13082f);
        y2Var.s();
        this.v = y2Var;
        b3 b3Var = new b3(this);
        b3Var.s();
        this.s = b3Var;
        u6 u6Var = new u6(this);
        u6Var.s();
        this.t = u6Var;
        this.f13019l.n();
        this.f13015h.n();
        this.w = new u3(this);
        this.v.v();
        zzab().w().a("App measurement is starting up, version", Long.valueOf(this.f13014g.k()));
        zzab().w().a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String z = y2Var.z();
        if (TextUtils.isEmpty(this.f13009b)) {
            if (D().d(z)) {
                w = zzab().w();
                concat = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
            } else {
                w = zzab().w();
                String valueOf = String.valueOf(z);
                concat = valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
            }
            w.a(concat);
        }
        zzab().x().a("Debug-level message logging enabled");
        if (this.D != this.E.get()) {
            zzab().q().a("Not all components initialized", Integer.valueOf(this.D), Integer.valueOf(this.E.get()));
        }
        this.x = true;
    }

    public final v7 A() {
        b(this.f13018k);
        return this.f13018k;
    }

    public final d B() {
        b(this.u);
        return this.u;
    }

    public final d3 C() {
        a((f5) this.m);
        return this.m;
    }

    public final r8 D() {
        a((f5) this.f13019l);
        return this.f13019l;
    }

    @Override // com.google.android.gms.measurement.internal.h5
    public final d4 b() {
        b(this.f13017j);
        return this.f13017j;
    }

    @WorkerThread
    public final boolean c() {
        boolean z;
        b().g();
        E();
        if (this.f13014g.a(j.l0)) {
            if (this.f13014g.m()) {
                return false;
            }
            Boolean bool = this.C;
            if (bool != null && bool.booleanValue()) {
                return false;
            }
            Boolean u = e().u();
            if (u != null) {
                return u.booleanValue();
            }
            Boolean n = this.f13014g.n();
            if (n != null) {
                return n.booleanValue();
            }
            Boolean bool2 = this.B;
            if (bool2 != null) {
                return bool2.booleanValue();
            }
            if (com.google.android.gms.common.api.internal.h.b()) {
                return false;
            }
            if (!this.f13014g.a(j.g0) || this.A == null) {
                return true;
            }
            return this.A.booleanValue();
        }
        if (this.f13014g.m()) {
            return false;
        }
        Boolean n2 = this.f13014g.n();
        if (n2 != null) {
            z = n2.booleanValue();
        } else {
            z = !com.google.android.gms.common.api.internal.h.b();
            if (z && this.A != null && j.g0.a(null).booleanValue()) {
                z = this.A.booleanValue();
            }
        }
        return e().c(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void d() {
        b().g();
        if (e().f13114e.a() == 0) {
            e().f13114e.a(this.n.a());
        }
        if (Long.valueOf(e().f13119j.a()).longValue() == 0) {
            zzab().y().a("Persisting first open", Long.valueOf(this.F));
            e().f13119j.a(this.F);
        }
        if (!r()) {
            if (c()) {
                if (!D().c("android.permission.INTERNET")) {
                    zzab().q().a("App is missing INTERNET permission");
                }
                if (!D().c("android.permission.ACCESS_NETWORK_STATE")) {
                    zzab().q().a("App is missing ACCESS_NETWORK_STATE permission");
                }
                if (!com.google.android.gms.common.o.c.a(this.f13008a).a() && !this.f13014g.q()) {
                    if (!z3.a(this.f13008a)) {
                        zzab().q().a("AppMeasurementReceiver not registered/enabled");
                    }
                    if (!r8.a(this.f13008a, false)) {
                        zzab().q().a("AppMeasurementService not registered/enabled");
                    }
                }
                zzab().q().a("Uploading is not possible. App measurement disabled");
            }
        } else {
            if (!TextUtils.isEmpty(w().y()) || !TextUtils.isEmpty(w().A())) {
                D();
                if (r8.a(w().y(), e().q(), w().A(), e().r())) {
                    zzab().w().a("Rechecking which service to use due to a GMP App Id change");
                    e().t();
                    z().y();
                    this.t.y();
                    this.t.D();
                    e().f13119j.a(this.F);
                    e().f13121l.a(null);
                }
                e().c(w().y());
                e().d(w().A());
            }
            v().a(e().f13121l.a());
            if (!TextUtils.isEmpty(w().y()) || !TextUtils.isEmpty(w().A())) {
                boolean c2 = c();
                if (!e().x() && !this.f13014g.m()) {
                    e().d(!c2);
                }
                if (c2) {
                    v().I();
                }
                x().a(new AtomicReference<>());
            }
        }
        e().t.a(this.f13014g.a(j.t0));
        e().u.a(this.f13014g.a(j.u0));
    }

    public final o3 e() {
        a((f5) this.f13015h);
        return this.f13015h;
    }

    public final z8 f() {
        return this.f13014g;
    }

    public final f3 g() {
        f3 f3Var = this.f13016i;
        if (f3Var == null || !f3Var.l()) {
            return null;
        }
        return this.f13016i;
    }

    @Override // com.google.android.gms.measurement.internal.h5
    public final Context getContext() {
        return this.f13008a;
    }

    public final u3 h() {
        return this.w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final d4 i() {
        return this.f13017j;
    }

    public final boolean j() {
        return TextUtils.isEmpty(this.f13009b);
    }

    public final String k() {
        return this.f13009b;
    }

    public final String l() {
        return this.f13010c;
    }

    public final String m() {
        return this.f13011d;
    }

    public final boolean n() {
        return this.f13012e;
    }

    @WorkerThread
    public final boolean o() {
        return this.A != null && this.A.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long p() {
        Long valueOf = Long.valueOf(e().f13119j.a());
        if (valueOf.longValue() == 0) {
            return this.F;
        }
        return Math.min(this.F, valueOf.longValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void q() {
        this.E.incrementAndGet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final boolean r() {
        E();
        b().g();
        Boolean bool = this.y;
        if (bool == null || this.z == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.n.c() - this.z) > 1000)) {
            this.z = this.n.c();
            boolean z = true;
            this.y = Boolean.valueOf(D().c("android.permission.INTERNET") && D().c("android.permission.ACCESS_NETWORK_STATE") && (com.google.android.gms.common.o.c.a(this.f13008a).a() || this.f13014g.q() || (z3.a(this.f13008a) && r8.a(this.f13008a, false))));
            if (this.y.booleanValue()) {
                if (!D().d(w().y(), w().A()) && TextUtils.isEmpty(w().A())) {
                    z = false;
                }
                this.y = Boolean.valueOf(z);
            }
        }
        return this.y.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void s() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void t() {
    }

    public final a u() {
        a aVar = this.q;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException("Component not created");
    }

    public final p5 v() {
        b(this.p);
        return this.p;
    }

    public final y2 w() {
        b(this.v);
        return this.v;
    }

    public final u6 x() {
        b(this.t);
        return this.t;
    }

    public final p6 y() {
        b(this.o);
        return this.o;
    }

    public final b3 z() {
        b(this.s);
        return this.s;
    }

    @Override // com.google.android.gms.measurement.internal.h5
    public final f3 zzab() {
        b(this.f13016i);
        return this.f13016i;
    }

    @Override // com.google.android.gms.measurement.internal.h5
    public final y8 zzae() {
        return this.f13013f;
    }

    private static void b(e5 e5Var) {
        if (e5Var != null) {
            if (e5Var.l()) {
                return;
            }
            String valueOf = String.valueOf(e5Var.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    private static void b(z4 z4Var) {
        if (z4Var != null) {
            if (z4Var.t()) {
                return;
            }
            String valueOf = String.valueOf(z4Var.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
        throw new IllegalStateException("Component not created");
    }

    @Override // com.google.android.gms.measurement.internal.h5
    public final com.google.android.gms.common.util.e a() {
        return this.n;
    }

    @VisibleForTesting
    public static j4 a(Context context, String str, String str2, Bundle bundle) {
        return a(context, new zzx(0L, 0L, true, null, null, null, bundle));
    }

    public static j4 a(Context context, zzx zzxVar) {
        Bundle bundle;
        if (zzxVar != null && (zzxVar.f12252i == null || zzxVar.f12253j == null)) {
            zzxVar = new zzx(zzxVar.f12248e, zzxVar.f12249f, zzxVar.f12250g, zzxVar.f12251h, null, null, zzxVar.f12254k);
        }
        com.google.android.gms.common.internal.m.a(context);
        com.google.android.gms.common.internal.m.a(context.getApplicationContext());
        if (G == null) {
            synchronized (j4.class) {
                if (G == null) {
                    G = new j4(new m5(context, zzxVar));
                }
            }
        } else if (zzxVar != null && (bundle = zzxVar.f12254k) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            G.a(zzxVar.f12254k.getBoolean("dataCollectionDefaultEnabled"));
        }
        return G;
    }

    private static void a(f5 f5Var) {
        if (f5Var == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(boolean z) {
        this.A = Boolean.valueOf(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(e5 e5Var) {
        this.D++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(z4 z4Var) {
        this.D++;
    }

    @WorkerThread
    public final void a(@NonNull final zzp zzpVar) {
        b().g();
        b(F());
        String z = w().z();
        Pair<String, Boolean> a2 = e().a(z);
        if (this.f13014g.o().booleanValue() && !((Boolean) a2.second).booleanValue()) {
            if (!F().q()) {
                zzab().t().a("Network is not available for Deferred Deep Link request. Skipping");
                D().a(zzpVar, "");
                return;
            }
            URL a3 = D().a(w().d().k(), z, (String) a2.first);
            k6 F = F();
            j6 j6Var = new j6(this, zzpVar) { // from class: com.google.android.gms.measurement.internal.i4

                /* renamed from: a, reason: collision with root package name */
                private final j4 f12979a;

                /* renamed from: b, reason: collision with root package name */
                private final zzp f12980b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12979a = this;
                    this.f12980b = zzpVar;
                }

                @Override // com.google.android.gms.measurement.internal.j6
                public final void a(String str, int i2, Throwable th, byte[] bArr, Map map) {
                    this.f12979a.a(this.f12980b, str, i2, th, bArr, map);
                }
            };
            F.g();
            F.m();
            com.google.android.gms.common.internal.m.a(a3);
            com.google.android.gms.common.internal.m.a(j6Var);
            F.b().b(new m6(F, z, a3, null, null, j6Var));
            return;
        }
        zzab().x().a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
        D().a(zzpVar, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(zzp zzpVar, String str, int i2, Throwable th, byte[] bArr, Map map) {
        List<ResolveInfo> queryIntentActivities;
        boolean z = true;
        if (!((i2 == 200 || i2 == 204 || i2 == 304) && th == null)) {
            zzab().t().a("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
            D().a(zzpVar, "");
            return;
        }
        if (bArr.length == 0) {
            D().a(zzpVar, "");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            String optString = jSONObject.optString("deeplink", "");
            String optString2 = jSONObject.optString("gclid", "");
            r8 D = D();
            D.e();
            if (TextUtils.isEmpty(optString) || (queryIntentActivities = D.getContext().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) == null || queryIntentActivities.isEmpty()) {
                z = false;
            }
            if (!z) {
                zzab().t().a("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                D().a(zzpVar, "");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("deeplink", optString);
            bundle.putString("gclid", optString2);
            this.p.b("auto", "_cmp", bundle);
            D().a(zzpVar, optString);
        } catch (JSONException e2) {
            zzab().q().a("Failed to parse the Deferred Deep Link response. exception", e2);
            D().a(zzpVar, "");
        }
    }
}
