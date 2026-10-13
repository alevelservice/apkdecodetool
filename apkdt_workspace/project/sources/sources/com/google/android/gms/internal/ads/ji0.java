package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ji0 {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, qi0> f7505a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, Map<String, List<qi0>>> f7506b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    private final Executor f7507c;

    /* renamed from: d, reason: collision with root package name */
    private JSONObject f7508d;

    public ji0(Executor executor) {
        this.f7507c = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final synchronized void d() {
        JSONArray optJSONArray;
        JSONObject f2 = com.google.android.gms.ads.internal.n.g().i().h().f();
        if (f2 != null) {
            try {
                JSONArray optJSONArray2 = f2.optJSONArray("ad_unit_id_settings");
                this.f7508d = f2.optJSONObject("ad_unit_patterns");
                if (optJSONArray2 != null) {
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        JSONObject jSONObject = optJSONArray2.getJSONObject(i2);
                        String optString = jSONObject.optString("ad_unit_id", "");
                        String optString2 = jSONObject.optString("format", "");
                        ArrayList arrayList = new ArrayList();
                        JSONObject optJSONObject = jSONObject.optJSONObject("mediation_config");
                        if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("ad_networks")) != null) {
                            for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                                JSONObject jSONObject2 = optJSONArray.getJSONObject(i3);
                                ArrayList arrayList2 = new ArrayList();
                                if (jSONObject2 != null) {
                                    JSONObject optJSONObject2 = jSONObject2.optJSONObject(Constants$ScionAnalytics$MessageType.DATA_MESSAGE);
                                    Bundle bundle = new Bundle();
                                    if (optJSONObject2 != null) {
                                        Iterator<String> keys = optJSONObject2.keys();
                                        while (keys.hasNext()) {
                                            String next = keys.next();
                                            bundle.putString(next, optJSONObject2.optString(next, ""));
                                        }
                                    }
                                    JSONArray optJSONArray3 = jSONObject2.optJSONArray("rtb_adapters");
                                    if (optJSONArray3 != null) {
                                        ArrayList arrayList3 = new ArrayList();
                                        for (int i4 = 0; i4 < optJSONArray3.length(); i4++) {
                                            String optString3 = optJSONArray3.optString(i4, "");
                                            if (!TextUtils.isEmpty(optString3)) {
                                                arrayList3.add(optString3);
                                            }
                                        }
                                        int size = arrayList3.size();
                                        int i5 = 0;
                                        while (i5 < size) {
                                            Object obj = arrayList3.get(i5);
                                            i5++;
                                            String str = (String) obj;
                                            a(str);
                                            if (this.f7505a.get(str) != null) {
                                                arrayList2.add(new qi0(str, optString2, bundle));
                                            }
                                        }
                                    }
                                }
                                arrayList.addAll(arrayList2);
                            }
                        }
                        if (!TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(optString)) {
                            Map<String, List<qi0>> map = this.f7506b.get(optString2);
                            if (map == null) {
                                map = new ConcurrentHashMap<>();
                            }
                            this.f7506b.put(optString2, map);
                            List<qi0> list = map.get(optString);
                            if (list == null) {
                                list = new ArrayList<>();
                            }
                            list.addAll(arrayList);
                            map.put(optString, list);
                        }
                    }
                }
            } catch (JSONException e2) {
                na.e("Malformed config loading JSON.", e2);
            }
        }
    }

    public final void a() {
        com.google.android.gms.ads.internal.n.g().i().a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ni0

            /* renamed from: e, reason: collision with root package name */
            private final ji0 f8356e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8356e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8356e.c();
            }
        });
        this.f7507c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.li0

            /* renamed from: e, reason: collision with root package name */
            private final ji0 f7896e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7896e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7896e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void c() {
        this.f7507c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.pi0

            /* renamed from: e, reason: collision with root package name */
            private final ji0 f8710e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8710e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8710e.d();
            }
        });
    }

    public final Map<String, List<Bundle>> a(String str, String str2) {
        JSONObject jSONObject;
        JSONArray optJSONArray;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Map<String, List<qi0>> map = this.f7506b.get(str);
            if (map == null) {
                return Collections.emptyMap();
            }
            List<qi0> list = map.get(str2);
            if (list == null) {
                String str3 = "";
                if (((Boolean) mu1.e().a(aw1.j1)).booleanValue() && (jSONObject = this.f7508d) != null && (optJSONArray = jSONObject.optJSONArray(str)) != null) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= optJSONArray.length()) {
                            break;
                        }
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                        if (optJSONObject != null) {
                            JSONArray optJSONArray2 = optJSONObject.optJSONArray("including");
                            JSONArray optJSONArray3 = optJSONObject.optJSONArray("excluding");
                            if (a(optJSONArray2, str2) && !a(optJSONArray3, str2)) {
                                str3 = optJSONObject.optString("effective_ad_unit_id", "");
                                break;
                            }
                        }
                        i2++;
                    }
                }
                list = map.get(str3);
            }
            if (list == null) {
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            for (qi0 qi0Var : list) {
                String str4 = qi0Var.f8923a;
                if (!hashMap.containsKey(str4)) {
                    hashMap.put(str4, new ArrayList());
                }
                ((List) hashMap.get(str4)).add(qi0Var.f8924b);
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    public final void a(String str) {
        if (TextUtils.isEmpty(str) || this.f7505a.containsKey(str)) {
            return;
        }
        this.f7505a.put(str, new qi0(str, "", new Bundle()));
    }

    private static boolean a(JSONArray jSONArray, String str) {
        if (jSONArray != null && str != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                } catch (PatternSyntaxException e2) {
                    com.google.android.gms.ads.internal.n.g().a(e2, "RtbAdapterMap.hasAtleastOneRegexMatch");
                }
                if (Pattern.compile(jSONArray.optString(i2)).matcher(str).lookingAt()) {
                    return true;
                }
            }
        }
        return false;
    }
}
