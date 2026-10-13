package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class k30 {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f7605a;

    /* renamed from: b, reason: collision with root package name */
    private final p30 f7606b;

    /* renamed from: c, reason: collision with root package name */
    private final w30 f7607c;

    public k30(tz0 tz0Var, p30 p30Var, w30 w30Var) {
        this.f7605a = tz0Var;
        this.f7606b = p30Var;
        this.f7607c = w30Var;
    }

    public final qz0<l10> a(final vs0 vs0Var, final ns0 ns0Var, final JSONObject jSONObject) {
        qz0 a2;
        final qz0 submit = this.f7605a.submit(new Callable(this, vs0Var, ns0Var, jSONObject) { // from class: com.google.android.gms.internal.ads.j30

            /* renamed from: e, reason: collision with root package name */
            private final k30 f7419e;

            /* renamed from: f, reason: collision with root package name */
            private final vs0 f7420f;

            /* renamed from: g, reason: collision with root package name */
            private final ns0 f7421g;

            /* renamed from: h, reason: collision with root package name */
            private final JSONObject f7422h;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7419e = this;
                this.f7420f = vs0Var;
                this.f7421g = ns0Var;
                this.f7422h = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                vs0 vs0Var2 = this.f7420f;
                ns0 ns0Var2 = this.f7421g;
                JSONObject jSONObject2 = this.f7422h;
                l10 l10Var = new l10();
                l10Var.a(jSONObject2.optInt("template_id", -1));
                l10Var.a(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                l10Var.b(optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null);
                ws0 ws0Var = vs0Var2.f9985a.f9004a;
                if (ws0Var.f10198g.contains(Integer.toString(l10Var.o()))) {
                    if (l10Var.o() == 3) {
                        if (l10Var.e() != null) {
                            if (!ws0Var.f10199h.contains(l10Var.e())) {
                                throw new bg0("Unexpected custom template id in the response.", 0);
                            }
                        } else {
                            throw new bg0("No custom template id for custom template ad response.", 0);
                        }
                    }
                    l10Var.a(jSONObject2.optDouble("rating", -1.0d));
                    String optString = jSONObject2.optString("headline", null);
                    if (ns0Var2.E) {
                        com.google.android.gms.ads.internal.n.c();
                        String e2 = wa.e();
                        StringBuilder sb = new StringBuilder(String.valueOf(e2).length() + 3 + String.valueOf(optString).length());
                        sb.append(e2);
                        sb.append(" : ");
                        sb.append(optString);
                        optString = sb.toString();
                    }
                    l10Var.a("headline", optString);
                    l10Var.a("body", jSONObject2.optString("body", null));
                    l10Var.a("call_to_action", jSONObject2.optString("call_to_action", null));
                    l10Var.a("store", jSONObject2.optString("store", null));
                    l10Var.a("price", jSONObject2.optString("price", null));
                    l10Var.a("advertiser", jSONObject2.optString("advertiser", null));
                    return l10Var;
                }
                int o = l10Var.o();
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Invalid template ID: ");
                sb2.append(o);
                throw new bg0(sb2.toString(), 0);
            }
        });
        final qz0<List<zzaae>> b2 = this.f7606b.b(jSONObject, "images");
        final qz0<zzaae> a3 = this.f7606b.a(jSONObject, "secondary_image");
        final qz0<zzaae> a4 = this.f7606b.a(jSONObject, "app_icon");
        final qz0<zzzz> c2 = this.f7606b.c(jSONObject, "attribution");
        final qz0<fi> a5 = this.f7606b.a(jSONObject);
        final p30 p30Var = this.f7606b;
        if (!jSONObject.optBoolean("enable_omid")) {
            a2 = gz0.a((Object) null);
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                a2 = gz0.a((Object) null);
            } else {
                final String optString = optJSONObject.optString("omid_html");
                if (TextUtils.isEmpty(optString)) {
                    a2 = gz0.a((Object) null);
                } else {
                    a2 = gz0.a(gz0.a((Object) null), new qy0(p30Var, optString) { // from class: com.google.android.gms.internal.ads.t30

                        /* renamed from: a, reason: collision with root package name */
                        private final p30 f9503a;

                        /* renamed from: b, reason: collision with root package name */
                        private final String f9504b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f9503a = p30Var;
                            this.f9504b = optString;
                        }

                        @Override // com.google.android.gms.internal.ads.qy0
                        public final qz0 b(Object obj) {
                            return this.f9503a.a(this.f9504b, obj);
                        }
                    }, yd.f10543d);
                }
            }
        }
        final qz0 qz0Var = a2;
        final qz0<List<b40>> a6 = this.f7607c.a(jSONObject, "custom_assets");
        return gz0.a(submit, b2, a3, a4, c2, a5, qz0Var, a6).a(new Callable(this, submit, b2, a4, a3, c2, jSONObject, a5, qz0Var, a6) { // from class: com.google.android.gms.internal.ads.m30

            /* renamed from: e, reason: collision with root package name */
            private final k30 f8011e;

            /* renamed from: f, reason: collision with root package name */
            private final qz0 f8012f;

            /* renamed from: g, reason: collision with root package name */
            private final qz0 f8013g;

            /* renamed from: h, reason: collision with root package name */
            private final qz0 f8014h;

            /* renamed from: i, reason: collision with root package name */
            private final qz0 f8015i;

            /* renamed from: j, reason: collision with root package name */
            private final qz0 f8016j;

            /* renamed from: k, reason: collision with root package name */
            private final JSONObject f8017k;

            /* renamed from: l, reason: collision with root package name */
            private final qz0 f8018l;
            private final qz0 m;
            private final qz0 n;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8011e = this;
                this.f8012f = submit;
                this.f8013g = b2;
                this.f8014h = a4;
                this.f8015i = a3;
                this.f8016j = c2;
                this.f8017k = jSONObject;
                this.f8018l = a5;
                this.m = qz0Var;
                this.n = a6;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                qz0 qz0Var2 = this.f8012f;
                qz0 qz0Var3 = this.f8013g;
                qz0 qz0Var4 = this.f8014h;
                qz0 qz0Var5 = this.f8015i;
                qz0 qz0Var6 = this.f8016j;
                JSONObject jSONObject2 = this.f8017k;
                qz0 qz0Var7 = this.f8018l;
                qz0 qz0Var8 = this.m;
                qz0 qz0Var9 = this.n;
                l10 l10Var = (l10) qz0Var2.get();
                l10Var.a((List<zzaae>) qz0Var3.get());
                l10Var.a((zzaas) qz0Var4.get());
                l10Var.b((zzaas) qz0Var5.get());
                l10Var.a((zzaak) qz0Var6.get());
                l10Var.b(p30.b(jSONObject2));
                l10Var.a(p30.c(jSONObject2));
                fi fiVar = (fi) qz0Var7.get();
                if (fiVar != null) {
                    l10Var.a(fiVar);
                    l10Var.a(fiVar.getView());
                    l10Var.a(fiVar.zzxj());
                }
                fi fiVar2 = (fi) qz0Var8.get();
                if (fiVar2 != null) {
                    l10Var.b(fiVar2);
                }
                for (b40 b40Var : (List) qz0Var9.get()) {
                    int i2 = b40Var.f5714a;
                    if (i2 == 1) {
                        l10Var.a(b40Var.f5715b, b40Var.f5716c);
                    } else if (i2 == 2) {
                        l10Var.a(b40Var.f5715b, b40Var.f5717d);
                    }
                }
                return l10Var;
            }
        }, this.f7605a);
    }
}
