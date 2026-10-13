package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.bio.workspace.Env;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class r7 extends t7 {

    /* renamed from: a, reason: collision with root package name */
    private final Object f9047a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final Context f9048b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private SharedPreferences f9049c;

    /* renamed from: d, reason: collision with root package name */
    private final t3<JSONObject, JSONObject> f9050d;

    public r7(Context context, t3<JSONObject, JSONObject> t3Var) {
        this.f9048b = context.getApplicationContext();
        this.f9050d = t3Var;
    }

    @Override // com.google.android.gms.internal.ads.t7
    public final qz0<Void> a() {
        synchronized (this.f9047a) {
            if (this.f9049c == null) {
                this.f9049c = this.f9048b.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (com.google.android.gms.ads.internal.n.j().a() - this.f9049c.getLong("js_last_update", 0L) < ((Long) mu1.e().a(aw1.M1)).longValue()) {
            return gz0.a((Object) null);
        }
        return gz0.a(this.f9050d.a(a(this.f9048b)), new pw0(this) { // from class: com.google.android.gms.internal.ads.u7

            /* renamed from: a, reason: collision with root package name */
            private final r7 f9687a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9687a = this;
            }

            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj) {
                return this.f9687a.a((JSONObject) obj);
            }
        }, yd.f10544e);
    }

    public static JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzawv.j().f11000e);
            jSONObject.put("mf", mu1.e().a(aw1.N1));
            jSONObject.put("cl", "257050558");
            jSONObject.put("rapid_rc", Env.NAME_DEV);
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", 20360);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.b(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", 12451009);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Void a(JSONObject jSONObject) {
        aw1.a(this.f9048b, 1, jSONObject);
        this.f9049c.edit().putLong("js_last_update", com.google.android.gms.ads.internal.n.j().a()).apply();
        return null;
    }
}
