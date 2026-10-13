package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ef0 implements bf0<d10> {

    /* renamed from: a, reason: collision with root package name */
    private final f00 f6411a;

    /* renamed from: b, reason: collision with root package name */
    private final tz0 f6412b;

    /* renamed from: c, reason: collision with root package name */
    private final k30 f6413c;

    public ef0(f00 f00Var, tz0 tz0Var, k30 k30Var) {
        this.f6411a = f00Var;
        this.f6412b = tz0Var;
        this.f6413c = k30Var;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<List<qz0<d10>>> a(final vs0 vs0Var, final ns0 ns0Var) {
        qz0<y40> a2 = this.f6411a.c().a();
        this.f6411a.c().a(a2);
        return gz0.a(gz0.a(a2, new qy0(this, ns0Var) { // from class: com.google.android.gms.internal.ads.df0

            /* renamed from: a, reason: collision with root package name */
            private final ef0 f6211a;

            /* renamed from: b, reason: collision with root package name */
            private final ns0 f6212b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6211a = this;
                this.f6212b = ns0Var;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f6211a.a(this.f6212b, (y40) obj);
            }
        }, this.f6412b), new qy0(this, vs0Var, ns0Var) { // from class: com.google.android.gms.internal.ads.gf0

            /* renamed from: a, reason: collision with root package name */
            private final ef0 f6863a;

            /* renamed from: b, reason: collision with root package name */
            private final vs0 f6864b;

            /* renamed from: c, reason: collision with root package name */
            private final ns0 f6865c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6863a = this;
                this.f6864b = vs0Var;
                this.f6865c = ns0Var;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f6863a.a(this.f6864b, this.f6865c, (JSONArray) obj);
            }
        }, this.f6412b);
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final boolean b(vs0 vs0Var, ns0 ns0Var) {
        rs0 rs0Var = ns0Var.p;
        return (rs0Var == null || rs0Var.f9225c == null) ? false : true;
    }

    private final qz0<d10> a(final vs0 vs0Var, final ns0 ns0Var, final JSONObject jSONObject) {
        final qz0<y40> a2 = this.f6411a.c().a();
        final qz0<l10> a3 = this.f6413c.a(vs0Var, ns0Var, jSONObject);
        return gz0.a(a2, a3).a(new Callable(this, a3, a2, vs0Var, ns0Var, jSONObject) { // from class: com.google.android.gms.internal.ads.hf0

            /* renamed from: e, reason: collision with root package name */
            private final ef0 f7054e;

            /* renamed from: f, reason: collision with root package name */
            private final qz0 f7055f;

            /* renamed from: g, reason: collision with root package name */
            private final qz0 f7056g;

            /* renamed from: h, reason: collision with root package name */
            private final vs0 f7057h;

            /* renamed from: i, reason: collision with root package name */
            private final ns0 f7058i;

            /* renamed from: j, reason: collision with root package name */
            private final JSONObject f7059j;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7054e = this;
                this.f7055f = a3;
                this.f7056g = a2;
                this.f7057h = vs0Var;
                this.f7058i = ns0Var;
                this.f7059j = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f7054e.a(this.f7055f, this.f7056g, this.f7057h, this.f7058i, this.f7059j);
            }
        }, this.f6412b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ d10 a(qz0 qz0Var, qz0 qz0Var2, vs0 vs0Var, ns0 ns0Var, JSONObject jSONObject) {
        l10 l10Var = (l10) qz0Var.get();
        y40 y40Var = (y40) qz0Var2.get();
        n10 a2 = this.f6411a.a(new lr(vs0Var, ns0Var, null), new y10(l10Var), new s00(jSONObject, y40Var));
        a2.h().a();
        a2.i().a(y40Var);
        a2.j().a(l10Var.t());
        return a2.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(vs0 vs0Var, ns0 ns0Var, JSONArray jSONArray) {
        if (jSONArray.length() == 0) {
            return gz0.a((Throwable) new t90(3));
        }
        if (vs0Var.f9985a.f9004a.f10202k > 1) {
            int length = jSONArray.length();
            this.f6411a.c().a(Math.min(length, vs0Var.f9985a.f9004a.f10202k));
            ArrayList arrayList = new ArrayList(vs0Var.f9985a.f9004a.f10202k);
            for (int i2 = 0; i2 < vs0Var.f9985a.f9004a.f10202k; i2++) {
                if (i2 < length) {
                    arrayList.add(a(vs0Var, ns0Var, jSONArray.getJSONObject(i2)));
                } else {
                    arrayList.add(gz0.a((Throwable) new t90(3)));
                }
            }
            return gz0.a(arrayList);
        }
        return gz0.a(a(vs0Var, ns0Var, jSONArray.getJSONObject(0)), if0.f7280a, this.f6412b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(ns0 ns0Var, y40 y40Var) {
        JSONObject a2 = nc.a("isNonagon", (Object) true);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("response", ns0Var.p.f9225c);
        jSONObject.put("sdk_params", a2);
        return gz0.a(y40Var.a("google.afma.nativeAds.preProcessJson", jSONObject), ff0.f6634a, this.f6412b);
    }
}
