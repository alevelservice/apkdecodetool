package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class w30 {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f10027a;

    /* renamed from: b, reason: collision with root package name */
    private final p30 f10028b;

    public w30(Executor executor, p30 p30Var) {
        this.f10027a = executor;
        this.f10028b = p30Var;
    }

    public final qz0<List<b40>> a(JSONObject jSONObject, String str) {
        qz0 a2;
        final String optString;
        char c2;
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return gz0.a(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
            if (optJSONObject != null && (optString = optJSONObject.optString("name")) != null) {
                String optString2 = optJSONObject.optString("type");
                if ("string".equals(optString2)) {
                    c2 = 1;
                } else {
                    c2 = "image".equals(optString2) ? (char) 2 : (char) 0;
                }
                if (c2 == 1) {
                    a2 = gz0.a(new b40(optString, optJSONObject.optString("string_value")));
                } else if (c2 == 2) {
                    a2 = gz0.a(this.f10028b.a(optJSONObject, "image_value"), new pw0(optString) { // from class: com.google.android.gms.internal.ads.y30

                        /* renamed from: a, reason: collision with root package name */
                        private final String f10475a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f10475a = optString;
                        }

                        @Override // com.google.android.gms.internal.ads.pw0
                        public final Object apply(Object obj) {
                            return new b40(this.f10475a, (zzaae) obj);
                        }
                    }, this.f10027a);
                }
                arrayList.add(a2);
            }
            a2 = gz0.a((Object) null);
            arrayList.add(a2);
        }
        return gz0.a(gz0.a((Iterable) arrayList), z30.f10681a, this.f10027a);
    }
}
