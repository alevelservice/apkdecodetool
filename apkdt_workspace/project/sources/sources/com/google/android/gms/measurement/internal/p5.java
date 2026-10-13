package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class p5 extends z4 {

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    protected i6 f13144c;

    /* renamed from: d, reason: collision with root package name */
    private k5 f13145d;

    /* renamed from: e, reason: collision with root package name */
    private final Set<n5> f13146e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f13147f;

    /* renamed from: g, reason: collision with root package name */
    private final AtomicReference<String> f13148g;

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    protected boolean f13149h;

    /* JADX INFO: Access modifiers changed from: protected */
    public p5(j4 j4Var) {
        super(j4Var);
        this.f13146e = new CopyOnWriteArraySet();
        this.f13149h = true;
        this.f13148g = new AtomicReference<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void J() {
        if (d().e(n().z(), j.k0)) {
            g();
            String a2 = c().s.a();
            if (a2 != null) {
                if ("unset".equals(a2)) {
                    a("app", "_npa", (Object) null, a().a());
                } else {
                    a("app", "_npa", Long.valueOf("true".equals(a2) ? 1L : 0L), a().a());
                }
            }
        }
        if (this.f12908a.c() && this.f13149h) {
            zzab().x().a("Recording app launch after enabling measurement for the first time (FE)");
            I();
        } else {
            zzab().x().a("Updating Scion state (FE)");
            o().C();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void c(boolean z) {
        g();
        e();
        u();
        zzab().x().a("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        c().a(z);
        J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void d(Bundle bundle) {
        g();
        u();
        com.google.android.gms.common.internal.m.a(bundle);
        com.google.android.gms.common.internal.m.b(bundle.getString("name"));
        if (!this.f12908a.c()) {
            zzab().x().a("Conditional property not cleared since collection is disabled");
            return;
        }
        try {
            o().a(new zzq(bundle.getString("app_id"), bundle.getString("origin"), new zzjn(bundle.getString("name"), 0L, null, null), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), j().a(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), bundle.getLong("creation_timestamp"), true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }

    @Nullable
    public final String A() {
        if (this.f12908a.k() != null) {
            return this.f12908a.k();
        }
        try {
            return com.google.android.gms.common.api.internal.h.a();
        } catch (IllegalStateException e2) {
            this.f12908a.zzab().q().a("getGoogleAppId failed with exception", e2);
            return null;
        }
    }

    @Nullable
    public final String B() {
        e();
        return this.f13148g.get();
    }

    public final void C() {
        if (getContext().getApplicationContext() instanceof Application) {
            ((Application) getContext().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f13144c);
        }
    }

    public final Boolean D() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) b().a(atomicReference, 15000L, "boolean test flag value", new o5(this, atomicReference));
    }

    public final String E() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) b().a(atomicReference, 15000L, "String test flag value", new w5(this, atomicReference));
    }

    public final Long F() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) b().a(atomicReference, 15000L, "long test flag value", new z5(this, atomicReference));
    }

    public final Integer G() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) b().a(atomicReference, 15000L, "int test flag value", new c6(this, atomicReference));
    }

    public final Double H() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) b().a(atomicReference, 15000L, "double test flag value", new b6(this, atomicReference));
    }

    @WorkerThread
    public final void I() {
        g();
        e();
        u();
        if (this.f12908a.r()) {
            o().B();
            this.f13149h = false;
            String v = c().v();
            if (TextUtils.isEmpty(v)) {
                return;
            }
            h().m();
            if (v.equals(Build.VERSION.RELEASE)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", v);
            b("auto", "_ou", bundle);
        }
    }

    public final void a(boolean z) {
        u();
        e();
        b().a(new e6(this, z));
    }

    public final void b(boolean z) {
        u();
        e();
        b().a(new d6(this, z));
    }

    @Override // com.google.android.gms.measurement.internal.z4
    protected final boolean w() {
        return false;
    }

    @Nullable
    public final String y() {
        q6 z = this.f12908a.y().z();
        if (z != null) {
            return z.f13173b;
        }
        return null;
    }

    @Nullable
    public final String z() {
        q6 z = this.f12908a.y().z();
        if (z != null) {
            return z.f13172a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(String str, String str2, long j2, Bundle bundle) {
        e();
        g();
        a(str, str2, j2, bundle, true, this.f13145d == null || r8.h(str2), false, null);
    }

    public final void b(long j2) {
        e();
        b().a(new g6(this, j2));
    }

    public final void c(long j2) {
        e();
        b().a(new f6(this, j2));
    }

    public final void b(String str, String str2, Bundle bundle) {
        a(str, str2, bundle, true, true, a().a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void a(String str, String str2, long j2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        String str4;
        String str5;
        String str6;
        q6 q6Var;
        int i2;
        int i3;
        long j3;
        ArrayList arrayList;
        String str7;
        Bundle bundle2;
        Class<?> cls;
        List<String> B;
        com.google.android.gms.common.internal.m.b(str);
        if (!d().e(str3, j.p0)) {
            com.google.android.gms.common.internal.m.b(str2);
        }
        com.google.android.gms.common.internal.m.a(bundle);
        g();
        u();
        if (!this.f12908a.c()) {
            zzab().x().a("Event not sent since app measurement is disabled");
            return;
        }
        if (d().e(n().z(), j.w0) && (B = n().B()) != null && !B.contains(str2)) {
            zzab().x().a("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.f13147f) {
            this.f13147f = true;
            try {
                if (!this.f12908a.n()) {
                    cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, getContext().getClassLoader());
                } else {
                    cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService");
                }
                try {
                    cls.getDeclaredMethod("initialize", Context.class).invoke(null, getContext());
                } catch (Exception e2) {
                    zzab().t().a("Failed to invoke Tag Manager's initialize() method", e2);
                }
            } catch (ClassNotFoundException unused) {
                zzab().w().a("Tag Manager is not found and thus will not be used");
            }
        }
        if (d().e(n().z(), j.D0) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
            a("auto", "_lgclid", bundle.getString("gclid"), a().a());
        }
        if (z3) {
            zzae();
            if (!"_iap".equals(str2)) {
                r8 D = this.f12908a.D();
                int i4 = 2;
                if (D.b("event", str2)) {
                    if (!D.a("event", j5.f13020a, str2)) {
                        i4 = 13;
                    } else if (D.a("event", 40, str2)) {
                        i4 = 0;
                    }
                }
                if (i4 != 0) {
                    zzab().s().a("Invalid public event name. Event will not be logged (FE)", i().a(str2));
                    this.f12908a.D();
                    this.f12908a.D().a(i4, "_ev", r8.a(str2, 40, true), str2 != null ? str2.length() : 0);
                    return;
                }
            }
        }
        zzae();
        q6 y = p().y();
        if (y != null && !bundle.containsKey("_sc")) {
            y.f13175d = true;
        }
        p6.a(y, bundle, z && z3);
        boolean equals = "am".equals(str);
        boolean h2 = r8.h(str2);
        if (z && this.f13145d != null && !h2 && !equals) {
            zzab().x().a("Passing event to registered event handler (FE)", i().a(str2), i().a(bundle));
            this.f13145d.a(str, str2, bundle, j2);
            return;
        }
        if (this.f12908a.r()) {
            int a2 = j().a(str2);
            if (a2 != 0) {
                zzab().s().a("Invalid event name. Event will not be logged (FE)", i().a(str2));
                j();
                this.f12908a.D().a(str3, a2, "_ev", r8.a(str2, 40, true), str2 != null ? str2.length() : 0);
                return;
            }
            List<String> a3 = com.google.android.gms.common.util.f.a((Object[]) new String[]{"_o", "_sn", "_sc", "_si"});
            String str8 = str2;
            Bundle a4 = j().a(str3, str2, bundle, a3, z3, true);
            q6 q6Var2 = (a4 != null && a4.containsKey("_sc") && a4.containsKey("_si")) ? new q6(a4.getString("_sn"), a4.getString("_sc"), Long.valueOf(a4.getLong("_si")).longValue()) : null;
            q6 q6Var3 = q6Var2 == null ? y : q6Var2;
            String str9 = "_ae";
            if (d().r(str3)) {
                zzae();
                if (p().y() != null && "_ae".equals(str8)) {
                    long A = r().A();
                    if (A > 0) {
                        j().a(a4, A);
                    }
                }
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(a4);
            long nextLong = j().r().nextLong();
            if (d().e(n().z(), j.d0) && c().v.a() > 0 && c().a(j2) && c().y.a()) {
                zzab().y().a("Current session is expired, remove the session number and Id");
                if (d().e(n().z(), j.Z)) {
                    str4 = "_o";
                    a("auto", "_sid", (Object) null, a().a());
                } else {
                    str4 = "_o";
                }
                if (d().e(n().z(), j.a0)) {
                    a("auto", "_sno", (Object) null, a().a());
                }
            } else {
                str4 = "_o";
            }
            if (d().q(n().z()) && a4.getLong("extend_session", 0L) == 1) {
                zzab().y().a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                this.f12908a.A().a(j2, true);
            }
            String[] strArr = (String[]) a4.keySet().toArray(new String[bundle.size()]);
            Arrays.sort(strArr);
            int length = strArr.length;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                String str10 = "_eid";
                if (i5 >= length) {
                    break;
                }
                String str11 = strArr[i5];
                Object obj = a4.get(str11);
                j();
                String[] strArr2 = strArr;
                Bundle[] a5 = r8.a(obj);
                if (a5 != null) {
                    i2 = length;
                    a4.putInt(str11, a5.length);
                    int i7 = 0;
                    while (i7 < a5.length) {
                        Bundle bundle3 = a5[i7];
                        p6.a(q6Var3, bundle3, true);
                        String str12 = str10;
                        int i8 = i7;
                        long j4 = nextLong;
                        ArrayList arrayList3 = arrayList2;
                        Bundle a6 = j().a(str3, "_ep", bundle3, a3, z3, false);
                        a6.putString("_en", str8);
                        a6.putLong(str12, j4);
                        a6.putString("_gn", str11);
                        a6.putInt("_ll", a5.length);
                        a6.putInt("_i", i8);
                        arrayList3.add(a6);
                        a4 = a4;
                        nextLong = j4;
                        arrayList2 = arrayList3;
                        i7 = i8 + 1;
                        i5 = i5;
                        q6Var3 = q6Var3;
                        i6 = i6;
                        str9 = str9;
                        str10 = str12;
                    }
                    q6Var = q6Var3;
                    i3 = i5;
                    j3 = nextLong;
                    arrayList = arrayList2;
                    str7 = str9;
                    bundle2 = a4;
                    i6 += a5.length;
                } else {
                    q6Var = q6Var3;
                    i2 = length;
                    i3 = i5;
                    j3 = nextLong;
                    arrayList = arrayList2;
                    str7 = str9;
                    bundle2 = a4;
                }
                a4 = bundle2;
                nextLong = j3;
                arrayList2 = arrayList;
                length = i2;
                q6Var3 = q6Var;
                str9 = str7;
                i5 = i3 + 1;
                strArr = strArr2;
            }
            int i9 = i6;
            long j5 = nextLong;
            ArrayList arrayList4 = arrayList2;
            String str13 = str9;
            Bundle bundle4 = a4;
            if (i9 != 0) {
                bundle4.putLong("_eid", j5);
                bundle4.putInt("_epc", i9);
            }
            int i10 = 0;
            while (i10 < arrayList4.size()) {
                Bundle bundle5 = (Bundle) arrayList4.get(i10);
                if (i10 != 0) {
                    str5 = "_ep";
                    str6 = str8;
                } else {
                    str5 = str8;
                    str6 = str5;
                }
                String str14 = str4;
                bundle5.putString(str14, str);
                if (z2) {
                    bundle5 = j().a(bundle5);
                }
                Bundle bundle6 = bundle5;
                zzab().x().a("Logging event (FE)", i().a(str6), i().a(bundle6));
                ArrayList arrayList5 = arrayList4;
                o().a(new zzai(str5, new zzah(bundle6), str, j2), str3);
                if (!equals) {
                    Iterator<n5> it = this.f13146e.iterator();
                    while (it.hasNext()) {
                        it.next().onEvent(str, str2, new Bundle(bundle6), j2);
                    }
                }
                i10++;
                str8 = str6;
                str4 = str14;
                arrayList4 = arrayList5;
            }
            String str15 = str8;
            zzae();
            if (p().y() == null || !str13.equals(str15)) {
                return;
            }
            r().a(true, true);
        }
    }

    private final void b(String str, String str2, long j2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        b().a(new r5(this, str, str2, j2, r8.b(bundle), z, z2, z3, str3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void c(String str, String str2, Bundle bundle) {
        e();
        g();
        a(str, str2, a().a(), bundle);
    }

    public final void b(n5 n5Var) {
        e();
        u();
        com.google.android.gms.common.internal.m.a(n5Var);
        if (this.f13146e.remove(n5Var)) {
            return;
        }
        zzab().t().a("OnEventListener had not been registered");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void c(Bundle bundle) {
        g();
        u();
        com.google.android.gms.common.internal.m.a(bundle);
        com.google.android.gms.common.internal.m.b(bundle.getString("name"));
        com.google.android.gms.common.internal.m.b(bundle.getString("origin"));
        com.google.android.gms.common.internal.m.a(bundle.get(HummerConstants.VALUE));
        if (!this.f12908a.c()) {
            zzab().x().a("Conditional property not sent since collection is disabled");
            return;
        }
        zzjn zzjnVar = new zzjn(bundle.getString("name"), bundle.getLong("triggered_timestamp"), bundle.get(HummerConstants.VALUE), bundle.getString("origin"));
        try {
            zzai a2 = j().a(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), bundle.getString("origin"), 0L, true, false);
            o().a(new zzq(bundle.getString("app_id"), bundle.getString("origin"), zzjnVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), j().a(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), bundle.getString("origin"), 0L, true, false), bundle.getLong("trigger_timeout"), a2, bundle.getLong("time_to_live"), j().a(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), 0L, true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }

    public final void b(Bundle bundle) {
        com.google.android.gms.common.internal.m.a(bundle);
        com.google.android.gms.common.internal.m.b(bundle.getString("app_id"));
        k();
        throw null;
    }

    private final void b(Bundle bundle, long j2) {
        com.google.android.gms.common.internal.m.a(bundle);
        g5.a(bundle, "app_id", String.class, null);
        g5.a(bundle, "origin", String.class, null);
        g5.a(bundle, "name", String.class, null);
        g5.a(bundle, HummerConstants.VALUE, Object.class, null);
        g5.a(bundle, "trigger_event_name", String.class, null);
        g5.a(bundle, "trigger_timeout", Long.class, 0L);
        g5.a(bundle, "timed_out_event_name", String.class, null);
        g5.a(bundle, "timed_out_event_params", Bundle.class, null);
        g5.a(bundle, "triggered_event_name", String.class, null);
        g5.a(bundle, "triggered_event_params", Bundle.class, null);
        g5.a(bundle, "time_to_live", Long.class, 0L);
        g5.a(bundle, "expired_event_name", String.class, null);
        g5.a(bundle, "expired_event_params", Bundle.class, null);
        com.google.android.gms.common.internal.m.b(bundle.getString("name"));
        com.google.android.gms.common.internal.m.b(bundle.getString("origin"));
        com.google.android.gms.common.internal.m.a(bundle.get(HummerConstants.VALUE));
        bundle.putLong("creation_timestamp", j2);
        String string = bundle.getString("name");
        Object obj = bundle.get(HummerConstants.VALUE);
        if (j().b(string) != 0) {
            zzab().q().a("Invalid conditional user property name", i().c(string));
            return;
        }
        if (j().b(string, obj) != 0) {
            zzab().q().a("Invalid conditional user property value", i().c(string), obj);
            return;
        }
        Object c2 = j().c(string, obj);
        if (c2 == null) {
            zzab().q().a("Unable to normalize conditional user property value", i().c(string), obj);
            return;
        }
        g5.a(bundle, c2);
        long j3 = bundle.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle.getString("trigger_event_name")) && (j3 > 15552000000L || j3 < 1)) {
            zzab().q().a("Invalid conditional user property timeout", i().c(string), Long.valueOf(j3));
            return;
        }
        long j4 = bundle.getLong("time_to_live");
        if (j4 <= 15552000000L && j4 >= 1) {
            b().a(new v5(this, bundle));
        } else {
            zzab().q().a("Invalid conditional user property time to live", i().c(string), Long.valueOf(j4));
        }
    }

    private final void b(String str, String str2, String str3, Bundle bundle) {
        long a2 = a().a();
        com.google.android.gms.common.internal.m.b(str2);
        Bundle bundle2 = new Bundle();
        if (str != null) {
            bundle2.putString("app_id", str);
        }
        bundle2.putString("name", str2);
        bundle2.putLong("creation_timestamp", a2);
        if (str3 != null) {
            bundle2.putString("expired_event_name", str3);
            bundle2.putBundle("expired_event_params", bundle);
        }
        b().a(new u5(this, bundle2));
    }

    public final ArrayList<Bundle> b(String str, String str2) {
        e();
        return b((String) null, str, str2);
    }

    @VisibleForTesting
    private final ArrayList<Bundle> b(String str, String str2, String str3) {
        if (b().q()) {
            zzab().q().a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        }
        if (y8.a()) {
            zzab().q().a("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.f12908a.b().a(new x5(this, atomicReference, str, str2, str3));
            try {
                atomicReference.wait(5000L);
            } catch (InterruptedException e2) {
                zzab().t().a("Interrupted waiting for get conditional user properties", str, e2);
            }
        }
        List list = (List) atomicReference.get();
        if (list == null) {
            zzab().t().a("Timed out waiting for get conditional user properties", str);
            return new ArrayList<>();
        }
        return r8.b((List<zzq>) list);
    }

    @VisibleForTesting
    private final Map<String, Object> b(String str, String str2, String str3, boolean z) {
        if (b().q()) {
            zzab().q().a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        if (y8.a()) {
            zzab().q().a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.f12908a.b().a(new a6(this, atomicReference, str, str2, str3, z));
            try {
                atomicReference.wait(5000L);
            } catch (InterruptedException e2) {
                zzab().t().a("Interrupted waiting for get user properties", e2);
            }
        }
        List<zzjn> list = (List) atomicReference.get();
        if (list == null) {
            zzab().t().a("Timed out waiting for get user properties");
            return Collections.emptyMap();
        }
        a.e.a aVar = new a.e.a(list.size());
        for (zzjn zzjnVar : list) {
            aVar.put(zzjnVar.f13385f, zzjnVar.j());
        }
        return aVar;
    }

    public final void a(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2) {
        e();
        b(str == null ? "app" : str, str2, j2, bundle == null ? new Bundle() : bundle, z2, !z2 || this.f13145d == null || r8.h(str2), !z, null);
    }

    public final void a(String str, String str2, Object obj, boolean z) {
        a(str, str2, obj, z, a().a());
    }

    public final void a(String str, String str2, Object obj, boolean z, long j2) {
        if (str == null) {
            str = "app";
        }
        String str3 = str;
        int i2 = 6;
        if (z) {
            i2 = j().b(str2);
        } else {
            r8 j3 = j();
            if (j3.b("user property", str2)) {
                if (!j3.a("user property", l5.f13058a, str2)) {
                    i2 = 15;
                } else if (j3.a("user property", 24, str2)) {
                    i2 = 0;
                }
            }
        }
        if (i2 != 0) {
            j();
            this.f12908a.D().a(i2, "_ev", r8.a(str2, 24, true), str2 != null ? str2.length() : 0);
            return;
        }
        if (obj != null) {
            int b2 = j().b(str2, obj);
            if (b2 != 0) {
                j();
                this.f12908a.D().a(b2, "_ev", r8.a(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0);
                return;
            } else {
                Object c2 = j().c(str2, obj);
                if (c2 != null) {
                    a(str3, str2, j2, c2);
                    return;
                }
                return;
            }
        }
        a(str3, str2, j2, (Object) null);
    }

    private final void a(String str, String str2, long j2, Object obj) {
        b().a(new q5(this, str, str2, obj, j2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008f  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            r8 = this;
            com.google.android.gms.common.internal.m.b(r9)
            com.google.android.gms.common.internal.m.b(r10)
            r8.g()
            r8.e()
            r8.u()
            com.google.android.gms.measurement.internal.z8 r0 = r8.d()
            com.google.android.gms.measurement.internal.y2 r1 = r8.n()
            java.lang.String r1 = r1.z()
            com.google.android.gms.measurement.internal.w2<java.lang.Boolean> r2 = com.google.android.gms.measurement.internal.j.k0
            boolean r0 = r0.e(r1, r2)
            java.lang.String r1 = "_npa"
            if (r0 == 0) goto L77
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L77
            boolean r0 = r11 instanceof java.lang.String
            if (r0 == 0) goto L67
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L67
            java.util.Locale r10 = java.util.Locale.ENGLISH
            java.lang.String r10 = r0.toLowerCase(r10)
            java.lang.String r11 = "false"
            boolean r10 = r11.equals(r10)
            r2 = 1
            if (r10 == 0) goto L4c
            r4 = r2
            goto L4e
        L4c:
            r4 = 0
        L4e:
            java.lang.Long r10 = java.lang.Long.valueOf(r4)
            com.google.android.gms.measurement.internal.o3 r0 = r8.c()
            com.google.android.gms.measurement.internal.v3 r0 = r0.s
            long r4 = r10.longValue()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L62
            java.lang.String r11 = "true"
        L62:
            r0.a(r11)
            r6 = r10
            goto L75
        L67:
            if (r11 != 0) goto L77
            com.google.android.gms.measurement.internal.o3 r10 = r8.c()
            com.google.android.gms.measurement.internal.v3 r10 = r10.s
            java.lang.String r0 = "unset"
            r10.a(r0)
            r6 = r11
        L75:
            r3 = r1
            goto L79
        L77:
            r3 = r10
            r6 = r11
        L79:
            com.google.android.gms.measurement.internal.j4 r10 = r8.f12908a
            boolean r10 = r10.c()
            if (r10 != 0) goto L8f
            com.google.android.gms.measurement.internal.f3 r9 = r8.zzab()
            com.google.android.gms.measurement.internal.h3 r9 = r9.x()
            java.lang.String r10 = "User property not set since app measurement is disabled"
            r9.a(r10)
            return
        L8f:
            com.google.android.gms.measurement.internal.j4 r10 = r8.f12908a
            boolean r10 = r10.r()
            if (r10 != 0) goto L98
            return
        L98:
            com.google.android.gms.measurement.internal.f3 r10 = r8.zzab()
            com.google.android.gms.measurement.internal.h3 r10 = r10.x()
            com.google.android.gms.measurement.internal.d3 r11 = r8.i()
            java.lang.String r11 = r11.a(r3)
            java.lang.String r0 = "Setting user property (FE)"
            r10.a(r0, r11, r6)
            com.google.android.gms.measurement.internal.zzjn r10 = new com.google.android.gms.measurement.internal.zzjn
            r2 = r10
            r4 = r12
            r7 = r9
            r2.<init>(r3, r4, r6, r7)
            com.google.android.gms.measurement.internal.u6 r9 = r8.o()
            r9.a(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.p5.a(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(@Nullable String str) {
        this.f13148g.set(str);
    }

    public final void a(long j2) {
        a((String) null);
        b().a(new t5(this, j2));
    }

    @WorkerThread
    public final void a(k5 k5Var) {
        k5 k5Var2;
        g();
        e();
        u();
        if (k5Var != null && k5Var != (k5Var2 = this.f13145d)) {
            com.google.android.gms.common.internal.m.b(k5Var2 == null, "EventInterceptor already set.");
        }
        this.f13145d = k5Var;
    }

    public final void a(n5 n5Var) {
        e();
        u();
        com.google.android.gms.common.internal.m.a(n5Var);
        if (this.f13146e.add(n5Var)) {
            return;
        }
        zzab().t().a("OnEventListener already registered");
    }

    public final void a(Bundle bundle) {
        a(bundle, a().a());
    }

    public final void a(Bundle bundle, long j2) {
        com.google.android.gms.common.internal.m.a(bundle);
        e();
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            zzab().t().a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        b(bundle2, j2);
    }

    public final void a(String str, String str2, Bundle bundle) {
        e();
        b((String) null, str, str2, bundle);
    }

    public final void a(String str, String str2, String str3, Bundle bundle) {
        com.google.android.gms.common.internal.m.b(str);
        k();
        throw null;
    }

    public final ArrayList<Bundle> a(String str, String str2, String str3) {
        com.google.android.gms.common.internal.m.b(str);
        k();
        throw null;
    }

    public final Map<String, Object> a(String str, String str2, boolean z) {
        e();
        return b((String) null, str, str2, z);
    }

    public final Map<String, Object> a(String str, String str2, String str3, boolean z) {
        com.google.android.gms.common.internal.m.b(str);
        k();
        throw null;
    }
}
