package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class p30 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f8631a;

    /* renamed from: b, reason: collision with root package name */
    private final f30 f8632b;

    /* renamed from: c, reason: collision with root package name */
    private final t11 f8633c;

    /* renamed from: d, reason: collision with root package name */
    private final zzawv f8634d;

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.b f8635e;

    /* renamed from: f, reason: collision with root package name */
    private final ks1 f8636f;

    /* renamed from: g, reason: collision with root package name */
    private final Executor f8637g;

    /* renamed from: h, reason: collision with root package name */
    private final zzaai f8638h;

    /* renamed from: i, reason: collision with root package name */
    private final d40 f8639i;

    /* renamed from: j, reason: collision with root package name */
    private final ScheduledExecutorService f8640j;

    public p30(Context context, f30 f30Var, t11 t11Var, zzawv zzawvVar, com.google.android.gms.ads.internal.b bVar, ks1 ks1Var, Executor executor, ws0 ws0Var, d40 d40Var, ScheduledExecutorService scheduledExecutorService) {
        this.f8631a = context;
        this.f8632b = f30Var;
        this.f8633c = t11Var;
        this.f8634d = zzawvVar;
        this.f8635e = bVar;
        this.f8636f = ks1Var;
        this.f8637g = executor;
        this.f8638h = ws0Var.f10200i;
        this.f8639i = d40Var;
        this.f8640j = scheduledExecutorService;
    }

    public static List<zzxd> b(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            return Collections.emptyList();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                zzxd d2 = d(optJSONArray.optJSONObject(i2));
                if (d2 != null) {
                    arrayList.add(d2);
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    @Nullable
    public static zzxd c(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mute");
        if (optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return d(optJSONObject);
    }

    @Nullable
    private static zzxd d(@Nullable JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString(ZdocRecordService.REASON);
        String optString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
            return null;
        }
        return new zzxd(optString, optString2);
    }

    public final qz0<zzaae> a(JSONObject jSONObject, String str) {
        return a(jSONObject.optJSONObject(str), this.f8638h.f10885f);
    }

    private final qz0<List<zzaae>> a(@Nullable JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray != null && jSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            int length = z2 ? jSONArray.length() : 1;
            for (int i2 = 0; i2 < length; i2++) {
                arrayList.add(a(jSONArray.optJSONObject(i2), z));
            }
            return gz0.a(gz0.a((Iterable) arrayList), n30.f8268a, this.f8637g);
        }
        return gz0.a(Collections.emptyList());
    }

    public final qz0<zzzz> c(JSONObject jSONObject, String str) {
        final JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return gz0.a((Object) null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray("images");
        JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
        if (optJSONArray == null && optJSONObject2 != null) {
            optJSONArray = new JSONArray();
            optJSONArray.put(optJSONObject2);
        }
        return a(optJSONObject.optBoolean("require"), (qz0<Object>) gz0.a(a(optJSONArray, false, true), new pw0(this, optJSONObject) { // from class: com.google.android.gms.internal.ads.q30

            /* renamed from: a, reason: collision with root package name */
            private final p30 f8839a;

            /* renamed from: b, reason: collision with root package name */
            private final JSONObject f8840b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8839a = this;
                this.f8840b = optJSONObject;
            }

            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj) {
                return this.f8839a.a(this.f8840b, (List) obj);
            }
        }, this.f8637g), (Object) null);
    }

    private static Integer d(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    public final qz0<List<zzaae>> b(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        zzaai zzaaiVar = this.f8638h;
        return a(optJSONArray, zzaaiVar.f10885f, zzaaiVar.f10887h);
    }

    private final qz0<zzaae> a(@Nullable JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return gz0.a((Object) null);
        }
        final String optString = jSONObject.optString(HummerConstants.URL);
        if (TextUtils.isEmpty(optString)) {
            return gz0.a((Object) null);
        }
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        final int optInt = jSONObject.optInt("width", -1);
        final int optInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return gz0.a(new zzaae(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return a(jSONObject.optBoolean("require"), (qz0<Object>) gz0.a(this.f8632b.a(optString, optDouble, optBoolean), new pw0(optString, optDouble, optInt, optInt2) { // from class: com.google.android.gms.internal.ads.r30

            /* renamed from: a, reason: collision with root package name */
            private final String f9029a;

            /* renamed from: b, reason: collision with root package name */
            private final double f9030b;

            /* renamed from: c, reason: collision with root package name */
            private final int f9031c;

            /* renamed from: d, reason: collision with root package name */
            private final int f9032d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9029a = optString;
                this.f9030b = optDouble;
                this.f9031c = optInt;
                this.f9032d = optInt2;
            }

            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj) {
                String str = this.f9029a;
                return new zzaae(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.f9030b, this.f9031c, this.f9032d);
            }
        }, this.f8637g), (Object) null);
    }

    public final qz0<fi> a(JSONObject jSONObject) {
        JSONObject a2 = nc.a(jSONObject, "html_containers", "instream");
        if (a2 == null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject == null) {
                return gz0.a((Object) null);
            }
            if (TextUtils.isEmpty(optJSONObject.optString("vast_xml"))) {
                qd.d("Required field 'vast_xml' is missing");
                return gz0.a((Object) null);
            }
            return a((qz0<Object>) gz0.a(this.f8639i.a(optJSONObject), ((Integer) mu1.e().a(aw1.Q1)).intValue(), TimeUnit.SECONDS, this.f8640j), (Object) null);
        }
        return a(a2.optBoolean("require"), this.f8639i.a(a2.optString("base_url"), a2.optString("html")), (Object) null);
    }

    private static <T> qz0<T> a(qz0<T> qz0Var, T t) {
        final Object obj = null;
        return gz0.a(qz0Var, Exception.class, new qy0(obj) { // from class: com.google.android.gms.internal.ads.s30

            /* renamed from: a, reason: collision with root package name */
            private final Object f9267a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9267a = obj;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj2) {
                Object obj3 = this.f9267a;
                na.e("Error during loading assets.", (Exception) obj2);
                return gz0.a(obj3);
            }
        }, yd.f10544e);
    }

    private static <T> qz0<T> a(boolean z, final qz0<T> qz0Var, T t) {
        if (z) {
            return gz0.a(qz0Var, new qy0(qz0Var) { // from class: com.google.android.gms.internal.ads.v30

                /* renamed from: a, reason: collision with root package name */
                private final qz0 f9854a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9854a = qz0Var;
                }

                @Override // com.google.android.gms.internal.ads.qy0
                public final qz0 b(Object obj) {
                    return obj != null ? this.f9854a : gz0.a((Throwable) new bg0("Retrieve required value in native ad response failed.", 0));
                }
            }, yd.f10544e);
        }
        return a(qz0Var, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(String str, Object obj) {
        com.google.android.gms.ads.internal.n.d();
        fi a2 = oi.a(this.f8631a, uj.f(), "native-omid", false, false, this.f8633c, this.f8634d, null, null, this.f8635e, this.f8636f, null, false);
        final ee c2 = ee.c(a2);
        a2.zzyy().a(new rj(c2) { // from class: com.google.android.gms.internal.ads.u30

            /* renamed from: a, reason: collision with root package name */
            private final ee f9674a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9674a = c2;
            }

            @Override // com.google.android.gms.internal.ads.rj
            public final void a(boolean z) {
                this.f9674a.a();
            }
        });
        a2.loadData(str, "text/html", "UTF-8");
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzzz a(JSONObject jSONObject, List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String optString = jSONObject.optString("text");
        Integer d2 = d(jSONObject, "bg_color");
        Integer d3 = d(jSONObject, "text_color");
        int optInt = jSONObject.optInt("text_size", -1);
        boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int optInt2 = jSONObject.optInt("animation_ms", 1000);
        return new zzzz(optString, list, d2, d3, optInt > 0 ? Integer.valueOf(optInt) : null, jSONObject.optInt("presentation_ms", 4000) + optInt2, this.f8638h.f10888i, optBoolean);
    }
}
