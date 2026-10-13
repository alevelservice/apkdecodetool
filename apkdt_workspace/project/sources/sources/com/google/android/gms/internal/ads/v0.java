package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class v0 implements o0<Object> {

    /* renamed from: a, reason: collision with root package name */
    private final Object f9844a = new Object();

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private final Map<String, x0> f9845b = new HashMap();

    public final void a(String str, x0 x0Var) {
        synchronized (this.f9844a) {
            this.f9845b.put(str, x0Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final void a(Object obj, Map<String, String> map) {
        String concat;
        String str = map.get("id");
        String str2 = map.get(HummerConstants.HUMMER_FAIL);
        String str3 = map.get("fail_reason");
        String str4 = map.get("fail_stack");
        String str5 = map.get("result");
        if (TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str4)) {
            concat = "";
        } else {
            String valueOf = String.valueOf(str4);
            concat = valueOf.length() != 0 ? "\n".concat(valueOf) : new String("\n");
        }
        synchronized (this.f9844a) {
            x0 remove = this.f9845b.remove(str);
            if (remove == null) {
                String valueOf2 = String.valueOf(str);
                qd.d(valueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf2) : new String("Received result for unexpected method invocation: "));
                return;
            }
            if (!TextUtils.isEmpty(str2)) {
                String valueOf3 = String.valueOf(str3);
                String valueOf4 = String.valueOf(concat);
                remove.onFailure(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            } else {
                if (str5 == null) {
                    remove.a(null);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (na.a()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        na.e(valueOf5.length() != 0 ? "Result GMSG: ".concat(valueOf5) : new String("Result GMSG: "));
                    }
                    remove.a(jSONObject);
                } catch (JSONException e2) {
                    remove.onFailure(e2.getMessage());
                }
            }
        }
    }

    public final <EngineT extends r2> qz0<JSONObject> a(EngineT enginet, String str, JSONObject jSONObject) {
        he heVar = new he();
        com.google.android.gms.ads.internal.n.c();
        String b2 = wa.b();
        a(b2, new y0(this, heVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", b2);
            jSONObject2.put("args", jSONObject);
            enginet.zzb(str, jSONObject2);
        } catch (Exception e2) {
            heVar.a(e2);
        }
        return heVar;
    }
}
