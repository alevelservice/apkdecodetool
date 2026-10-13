package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wa0 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f10071a;

    /* renamed from: b, reason: collision with root package name */
    private final zzawv f10072b;

    /* renamed from: c, reason: collision with root package name */
    private final ws0 f10073c;

    /* renamed from: d, reason: collision with root package name */
    private final Executor f10074d;

    public wa0(Context context, zzawv zzawvVar, ws0 ws0Var, Executor executor) {
        this.f10071a = context;
        this.f10072b = zzawvVar;
        this.f10073c = ws0Var;
        this.f10074d = executor;
    }

    public final qz0<vs0> a() {
        c4 b2 = com.google.android.gms.ads.internal.n.p().b(this.f10071a, this.f10072b);
        x3<JSONObject> x3Var = b4.f5712b;
        final t3 a2 = b2.a("google.afma.response.normalize", x3Var, x3Var);
        final zztj zztjVar = this.f10073c.f10195d.w;
        return gz0.a(gz0.a(gz0.a(gz0.a(""), new qy0(this, zztjVar) { // from class: com.google.android.gms.internal.ads.va0

            /* renamed from: a, reason: collision with root package name */
            private final zztj f9886a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9886a = zztjVar;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                zztj zztjVar2 = this.f9886a;
                String str = zztjVar2.f11233e;
                String str2 = zztjVar2.f11234f;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("headers", new JSONObject());
                jSONObject3.put("body", str);
                jSONObject2.put("base_url", "");
                jSONObject2.put("signals", new JSONObject(str2));
                jSONObject.put("request", jSONObject2);
                jSONObject.put("response", jSONObject3);
                jSONObject.put("flags", new JSONObject());
                return gz0.a(jSONObject);
            }
        }, this.f10074d), new qy0(a2) { // from class: com.google.android.gms.internal.ads.ya0

            /* renamed from: a, reason: collision with root package name */
            private final t3 f10522a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10522a = a2;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f10522a.a((JSONObject) obj);
            }
        }, this.f10074d), new qy0(this) { // from class: com.google.android.gms.internal.ads.xa0

            /* renamed from: a, reason: collision with root package name */
            private final wa0 f10299a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10299a = this;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f10299a.a((JSONObject) obj);
            }
        }, this.f10074d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(JSONObject jSONObject) {
        return gz0.a(new vs0(new qs0(this.f10073c), ts0.a(new StringReader(jSONObject.toString()))));
    }
}
