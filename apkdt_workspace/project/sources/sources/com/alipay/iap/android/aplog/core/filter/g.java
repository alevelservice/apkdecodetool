package com.alipay.iap.android.aplog.core.filter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.alipay.iap.android.aplog.network.NetWorkProvider;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: StrategyManager.java */
/* loaded from: classes.dex */
public class g implements a {

    /* renamed from: k, reason: collision with root package name */
    private static final long f3319k;

    /* renamed from: l, reason: collision with root package name */
    public static long f3320l;
    private static long m;
    private static g n;
    private static long o;

    /* renamed from: a, reason: collision with root package name */
    private Context f3321a;

    /* renamed from: b, reason: collision with root package name */
    private int f3322b;

    /* renamed from: c, reason: collision with root package name */
    private int f3323c;

    /* renamed from: d, reason: collision with root package name */
    private int f3324d;

    /* renamed from: e, reason: collision with root package name */
    private int f3325e;

    /* renamed from: f, reason: collision with root package name */
    private int f3326f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f3327g = false;

    /* renamed from: h, reason: collision with root package name */
    private f f3328h = new f();

    /* renamed from: i, reason: collision with root package name */
    private Map<String, c> f3329i = new ConcurrentHashMap();

    /* renamed from: j, reason: collision with root package name */
    private int f3330j = 0;

    static {
        TimeUnit.SECONDS.toMillis(5L);
        f3319k = TimeUnit.HOURS.toMillis(1L);
        f3320l = TimeUnit.MINUTES.toMillis(3L);
        m = TimeUnit.MINUTES.toMillis(30L);
        o = m;
    }

    private g(Context context) {
        this.f3321a = context;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int a(g gVar) {
        int i2 = gVar.f3330j;
        gVar.f3330j = i2 + 1;
        return i2;
    }

    private void c() {
        new Handler(Looper.getMainLooper()).postDelayed(new h(this), 1500L);
    }

    private void d() {
        e.b.b.a.b.a.a.a().a("IAPLogConfig", new i(this));
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            String b2 = e.b.b.a.b.a.a.a().b("IAPLogConfig");
            if (TextUtils.isEmpty(b2)) {
                if (this.f3330j < 1) {
                    c();
                }
            } else {
                JSONObject jSONObject = new JSONObject(b2);
                c(jSONObject.getString("uploadStrategy"));
                a(jSONObject.getJSONObject("diagnosticConfig"));
            }
        } catch (JSONException e2) {
            e.b.b.a.a.d.i.c().a("StrategyManager", e.b.b.a.a.e.c.a(e2, "parseLogStrategy JSONException"));
        }
    }

    private void a(JSONObject jSONObject) {
        e.b.b.a.a.d.a.d b2 = e.b.b.a.a.d.a.c.c().b();
        if (jSONObject == null || b2 == null) {
            return;
        }
        b2.b(jSONObject.optInt("cleaningFileSize"));
        b2.a(jSONObject.optInt("outdate"));
        b2.a(jSONObject.optDouble("cleaningRate"));
    }

    public static g b() {
        g gVar = n;
        if (gVar != null) {
            return gVar;
        }
        throw new IllegalStateException("need createInstance before use");
    }

    private void c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("content")) {
                e.b.b.a.a.d.i.c().e("StrategyManager", "syncRequestLogConfig: has configs");
                d(jSONObject.getString("content"));
            }
        } catch (JSONException e2) {
            e.b.b.a.a.d.i.c().a("StrategyManager", e.b.b.a.a.e.c.a(e2, "FormatConfig JSONException"));
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:(3:114|115|116)|(3:117|118|119)|(11:120|121|122|123|124|125|126|127|(1:129)|(2:130|131)|(3:132|133|134))|(2:135|136)|(2:138|139)|(2:141|142)|(2:144|145)|(2:147|148)|(2:150|151)|152|153|154|155|156|157|(8:161|162|163|164|(2:172|173)(1:170)|171|158|159)|194|195|(1:197)|198|(3:176|177|(3:180|181|178))|(2:182|183)|184|185|187|188|112) */
    /* JADX WARN: Can't wrap try/catch for region: R(41:114|115|116|117|118|119|120|121|122|123|124|125|126|127|(1:129)|(2:130|131)|(3:132|133|134)|(2:135|136)|(2:138|139)|(2:141|142)|(2:144|145)|(2:147|148)|(2:150|151)|152|153|154|155|156|157|(8:161|162|163|164|(2:172|173)(1:170)|171|158|159)|194|195|(1:197)|198|(3:176|177|(3:180|181|178))|(2:182|183)|184|185|187|188|112) */
    /* JADX WARN: Can't wrap try/catch for region: R(43:114|115|116|117|118|119|120|121|122|123|124|125|126|127|(1:129)|(2:130|131)|132|133|134|(2:135|136)|(2:138|139)|(2:141|142)|(2:144|145)|(2:147|148)|(2:150|151)|152|153|154|155|156|157|(8:161|162|163|164|(2:172|173)(1:170)|171|158|159)|194|195|(1:197)|198|(3:176|177|(3:180|181|178))|(2:182|183)|184|185|187|188|112) */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0275, code lost:
    
        r27 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x022b, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x022c, code lost:
    
        r7.f3311b = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x029e, code lost:
    
        r27 = r3;
        r28 = r6;
     */
    /* JADX WARN: Removed duplicated region for block: B:161:0x023c A[Catch: all -> 0x0277, TRY_LEAVE, TryCatch #12 {all -> 0x0277, blocks: (B:159:0x0236, B:161:0x023c), top: B:158:0x0236 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0284 A[Catch: all -> 0x0290, TRY_LEAVE, TryCatch #20 {all -> 0x0290, blocks: (B:177:0x0279, B:178:0x027e, B:180:0x0284), top: B:176:0x0279 }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x026a A[Catch: all -> 0x0279, TryCatch #13 {all -> 0x0279, blocks: (B:164:0x0242, B:166:0x024f, B:168:0x0257, B:171:0x0261, B:197:0x026a, B:198:0x0271), top: B:163:0x0242 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(java.lang.String r30) {
        /*
            Method dump skipped, instructions count: 952
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.iap.android.aplog.core.filter.g.d(java.lang.String):void");
    }

    public boolean b(String str, int i2) {
        int i3;
        int i4 = 10;
        if ("userbehavor".equals(str) || "autouserbehavor".equals(str)) {
            i4 = 50;
        } else if ("alivereport".equals(str) || "crash".equals(str)) {
            i4 = 1;
        } else if (!"bizHighAvail".equals(str) && !"apm".equals(str)) {
            i4 = 100;
        }
        c cVar = this.f3329i.get(str);
        if (cVar == null || (i3 = cVar.f3313d) <= 0) {
            i3 = i4;
        }
        return i2 >= i3;
    }

    public static g a(Context context) {
        if (n == null) {
            n = new g(context);
        }
        return n;
    }

    public String a(String str, String str2) {
        c cVar;
        String[] split = str.split("_");
        if (split.length < 3) {
            return null;
        }
        String str3 = split[2];
        if (str2 != null && !str2.equals(str3)) {
            return null;
        }
        String a2 = NetWorkProvider.c().a();
        if ("unknown".equals(a2) || (cVar = this.f3329i.get(str3)) == null || !cVar.f3312c) {
            return str3;
        }
        if ("4g".equals(a2) && !cVar.f3314e.contains("4g")) {
            return null;
        }
        if ("3g".equals(a2) && !cVar.f3314e.contains("3g")) {
            return null;
        }
        if ("2g".equals(a2) && !cVar.f3314e.contains("2g")) {
            return null;
        }
        if (!"wifi".equals(a2) || cVar.f3314e.contains("wifi")) {
            return str3;
        }
        return null;
    }

    public boolean b(String str) {
        c cVar;
        if (TextUtils.isEmpty(str) || (cVar = this.f3329i.get(str)) == null) {
            return false;
        }
        e.b.b.a.a.d.i.c().c("StrategyManager", " needEncrypt " + cVar.f3311b);
        return cVar.f3311b;
    }

    @Override // com.alipay.iap.android.aplog.core.filter.a
    public boolean a(String str) {
        c cVar = this.f3329i.get(str);
        e eVar = new e();
        eVar.f3317b = str;
        if (e.b.b.a.a.d.i.a().b() != null && !e.b.b.a.a.d.i.a().b().a(eVar)) {
            return false;
        }
        if (cVar != null) {
            return cVar.f3310a;
        }
        return true;
    }

    @Override // com.alipay.iap.android.aplog.core.filter.a
    public boolean a(String str, int i2) {
        return b(str, i2);
    }

    public void a(long j2) {
        m = j2;
    }

    public boolean a() {
        return this.f3327g;
    }
}
