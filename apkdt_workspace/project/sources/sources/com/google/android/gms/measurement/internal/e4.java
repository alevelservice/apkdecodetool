package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.a0;
import com.google.android.gms.internal.measurement.c0;
import com.google.android.gms.internal.measurement.z;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public final class e4 extends h8 implements b9 {

    /* renamed from: j, reason: collision with root package name */
    @VisibleForTesting
    private static int f12860j = 65535;

    /* renamed from: k, reason: collision with root package name */
    @VisibleForTesting
    private static int f12861k = 2;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, Map<String, String>> f12862d;

    /* renamed from: e, reason: collision with root package name */
    private final Map<String, Map<String, Boolean>> f12863e;

    /* renamed from: f, reason: collision with root package name */
    private final Map<String, Map<String, Boolean>> f12864f;

    /* renamed from: g, reason: collision with root package name */
    private final Map<String, com.google.android.gms.internal.measurement.z0> f12865g;

    /* renamed from: h, reason: collision with root package name */
    private final Map<String, Map<String, Integer>> f12866h;

    /* renamed from: i, reason: collision with root package name */
    private final Map<String, String> f12867i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e4(g8 g8Var) {
        super(g8Var);
        this.f12862d = new a.e.a();
        this.f12863e = new a.e.a();
        this.f12864f = new a.e.a();
        this.f12865g = new a.e.a();
        this.f12867i = new a.e.a();
        this.f12866h = new a.e.a();
    }

    @WorkerThread
    private final void i(String str) {
        q();
        g();
        com.google.android.gms.common.internal.m.b(str);
        if (this.f12865g.get(str) == null) {
            byte[] d2 = m().d(str);
            if (d2 == null) {
                this.f12862d.put(str, null);
                this.f12863e.put(str, null);
                this.f12864f.put(str, null);
                this.f12865g.put(str, null);
                this.f12867i.put(str, null);
                this.f12866h.put(str, null);
                return;
            }
            com.google.android.gms.internal.measurement.z0 a2 = a(str, d2);
            this.f12862d.put(str, a(a2));
            a(str, a2);
            this.f12865g.put(str, a2);
            this.f12867i.put(str, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final com.google.android.gms.internal.measurement.z0 a(String str) {
        q();
        g();
        com.google.android.gms.common.internal.m.b(str);
        i(str);
        return this.f12865g.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final String b(String str) {
        g();
        return this.f12867i.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void c(String str) {
        g();
        this.f12867i.put(str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void d(String str) {
        g();
        this.f12865g.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean e(String str) {
        Boolean bool;
        g();
        com.google.android.gms.internal.measurement.z0 a2 = a(str);
        if (a2 == null || (bool = a2.f12232j) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final long f(String str) {
        String a2 = a(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(a2)) {
            return 0L;
        }
        try {
            return Long.parseLong(a2);
        } catch (NumberFormatException e2) {
            zzab().t().a("Unable to parse timezone offset. appId", f3.a(str), e2);
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g(String str) {
        return "1".equals(a(str, "measurement.upload.blacklist_internal"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h(String str) {
        return "1".equals(a(str, "measurement.upload.blacklist_public"));
    }

    @Override // com.google.android.gms.measurement.internal.h8
    protected final boolean r() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean b(String str, String str2) {
        Boolean bool;
        g();
        i(str);
        if (g(str) && r8.h(str2)) {
            return true;
        }
        if (h(str) && r8.e(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f12863e.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean c(String str, String str2) {
        Boolean bool;
        g();
        i(str);
        if ("ecommerce_purchase".equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f12864f.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final int d(String str, String str2) {
        Integer num;
        g();
        i(str);
        Map<String, Integer> map = this.f12866h.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.measurement.internal.b9
    @WorkerThread
    public final String a(String str, String str2) {
        g();
        i(str);
        Map<String, String> map = this.f12862d.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    private static Map<String, String> a(com.google.android.gms.internal.measurement.z0 z0Var) {
        com.google.android.gms.internal.measurement.j0[] j0VarArr;
        a.e.a aVar = new a.e.a();
        if (z0Var != null && (j0VarArr = z0Var.f12228f) != null) {
            for (com.google.android.gms.internal.measurement.j0 j0Var : j0VarArr) {
                if (j0Var != null) {
                    aVar.put(j0Var.n(), j0Var.o());
                }
            }
        }
        return aVar;
    }

    private final void a(String str, com.google.android.gms.internal.measurement.z0 z0Var) {
        com.google.android.gms.internal.measurement.a1[] a1VarArr;
        a.e.a aVar = new a.e.a();
        a.e.a aVar2 = new a.e.a();
        a.e.a aVar3 = new a.e.a();
        if (z0Var != null && (a1VarArr = z0Var.f12229g) != null) {
            for (com.google.android.gms.internal.measurement.a1 a1Var : a1VarArr) {
                if (TextUtils.isEmpty(a1Var.f11737c)) {
                    zzab().t().a("EventConfig contained null event name");
                } else {
                    String a2 = j5.a(a1Var.f11737c);
                    if (!TextUtils.isEmpty(a2)) {
                        a1Var.f11737c = a2;
                    }
                    aVar.put(a1Var.f11737c, a1Var.f11738d);
                    aVar2.put(a1Var.f11737c, a1Var.f11739e);
                    Integer num = a1Var.f11740f;
                    if (num != null) {
                        if (num.intValue() >= f12861k && a1Var.f11740f.intValue() <= f12860j) {
                            aVar3.put(a1Var.f11737c, a1Var.f11740f);
                        } else {
                            zzab().t().a("Invalid sampling rate. Event name, sample rate", a1Var.f11737c, a1Var.f11740f);
                        }
                    }
                }
            }
        }
        this.f12863e.put(str, aVar);
        this.f12864f.put(str, aVar2);
        this.f12866h.put(str, aVar3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final boolean a(String str, byte[] bArr, String str2) {
        byte[] bArr2;
        boolean z;
        q();
        g();
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.internal.measurement.z0 a2 = a(str, bArr);
        if (a2 == null) {
            return false;
        }
        a(str, a2);
        this.f12865g.put(str, a2);
        this.f12867i.put(str, str2);
        this.f12862d.put(str, a(a2));
        x8 l2 = l();
        com.google.android.gms.internal.measurement.y0[] y0VarArr = a2.f12230h;
        com.google.android.gms.common.internal.m.a(y0VarArr);
        for (com.google.android.gms.internal.measurement.y0 y0Var : y0VarArr) {
            if (y0Var.f12213e != null) {
                int i2 = 0;
                while (true) {
                    com.google.android.gms.internal.measurement.z[] zVarArr = y0Var.f12213e;
                    if (i2 >= zVarArr.length) {
                        break;
                    }
                    z.a i3 = zVarArr[i2].i();
                    z.a aVar = (z.a) i3.clone();
                    String a3 = j5.a(i3.h());
                    if (a3 != null) {
                        aVar.a(a3);
                        z = true;
                    } else {
                        z = false;
                    }
                    boolean z2 = z;
                    for (int i4 = 0; i4 < i3.i(); i4++) {
                        com.google.android.gms.internal.measurement.a0 a4 = i3.a(i4);
                        String a5 = i5.a(a4.v());
                        if (a5 != null) {
                            a0.a i5 = a4.i();
                            i5.a(a5);
                            aVar.a(i4, (com.google.android.gms.internal.measurement.a0) i5.t());
                            z2 = true;
                        }
                    }
                    if (z2) {
                        y0Var.f12213e[i2] = (com.google.android.gms.internal.measurement.z) aVar.t();
                    }
                    i2++;
                }
            }
            if (y0Var.f12212d != null) {
                int i6 = 0;
                while (true) {
                    com.google.android.gms.internal.measurement.c0[] c0VarArr = y0Var.f12212d;
                    if (i6 < c0VarArr.length) {
                        com.google.android.gms.internal.measurement.c0 c0Var = c0VarArr[i6];
                        String a6 = l5.a(c0Var.o());
                        if (a6 != null) {
                            com.google.android.gms.internal.measurement.c0[] c0VarArr2 = y0Var.f12212d;
                            c0.a i7 = c0Var.i();
                            i7.a(a6);
                            c0VarArr2[i6] = (com.google.android.gms.internal.measurement.c0) i7.t();
                        }
                        i6++;
                    }
                }
            }
        }
        l2.m().a(str, y0VarArr);
        try {
            a2.f12230h = null;
            bArr2 = new byte[a2.b()];
            a2.a(com.google.android.gms.internal.measurement.r7.a(bArr2, 0, bArr2.length));
        } catch (IOException e2) {
            zzab().t().a("Unable to serialize reduced-size config. Storing full config instead. appId", f3.a(str), e2);
            bArr2 = bArr;
        }
        e9 m = m();
        com.google.android.gms.common.internal.m.b(str);
        m.g();
        m.q();
        new ContentValues().put("remote_config", bArr2);
        try {
            if (m.u().update("apps", r0, "app_id = ?", new String[]{str}) == 0) {
                m.zzab().q().a("Failed to update remote config (got 0). appId", f3.a(str));
            }
        } catch (SQLiteException e3) {
            m.zzab().q().a("Error storing remote config. appId", f3.a(str), e3);
        }
        return true;
    }

    @WorkerThread
    private final com.google.android.gms.internal.measurement.z0 a(String str, byte[] bArr) {
        if (bArr == null) {
            return new com.google.android.gms.internal.measurement.z0();
        }
        com.google.android.gms.internal.measurement.o7 a2 = com.google.android.gms.internal.measurement.o7.a(bArr, 0, bArr.length);
        com.google.android.gms.internal.measurement.z0 z0Var = new com.google.android.gms.internal.measurement.z0();
        try {
            z0Var.a(a2);
            zzab().y().a("Parsed config. version, gmp_app_id", z0Var.f12225c, z0Var.f12226d);
            return z0Var;
        } catch (IOException e2) {
            zzab().t().a("Unable to merge remote config. appId", f3.a(str), e2);
            return new com.google.android.gms.internal.measurement.z0();
        }
    }
}
