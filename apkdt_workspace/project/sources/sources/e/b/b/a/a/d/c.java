package e.b.b.a.a.d;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.alipay.iap.android.aplog.network.NetWorkProvider;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.ap.zoloz.hummer.biz.HummerConstants;
import e.b.b.a.a.d.h.f;
import e.b.b.a.a.e.o;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: LogContextImpl.java */
/* loaded from: classes.dex */
public class c implements e.b.b.a.a.a.d {

    /* renamed from: a, reason: collision with root package name */
    private Context f16983a;

    /* renamed from: b, reason: collision with root package name */
    private e.b.b.a.a.d.a.c f16984b;

    /* renamed from: c, reason: collision with root package name */
    private f f16985c;

    /* renamed from: d, reason: collision with root package name */
    private e.b.b.a.a.a.e f16986d;

    /* renamed from: e, reason: collision with root package name */
    private com.alipay.iap.android.aplog.core.filter.g f16987e;

    /* renamed from: f, reason: collision with root package name */
    private com.alipay.iap.android.aplog.core.filter.b f16988f;

    /* renamed from: h, reason: collision with root package name */
    private com.alipay.iap.android.aplog.core.filter.a f16990h;

    /* renamed from: j, reason: collision with root package name */
    private e.b.b.a.a.a.g f16992j;

    /* renamed from: l, reason: collision with root package name */
    private String f16994l;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private b u;
    private boolean v;
    private volatile a w;
    private final ArrayBlockingQueue<e.b.b.a.a.b.b> x;
    private e.b.b.a.a.a.a.a y;
    private e.b.b.a.a.a.b z;

    /* renamed from: g, reason: collision with root package name */
    private Map<String, String> f16989g = new ConcurrentHashMap();

    /* renamed from: i, reason: collision with root package name */
    private LinkedList<String> f16991i = new LinkedList<>();

    /* renamed from: k, reason: collision with root package name */
    private long f16993k = 1800000;
    private LinkedList<String> m = new LinkedList<>();
    private LinkedList<String> n = new LinkedList<>();
    private String t = "MAS";

    /* compiled from: LogContextImpl.java */
    /* loaded from: classes.dex */
    public class a extends Thread {
        public a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            StringBuilder sb;
            int priority = Looper.getMainLooper().getThread().getPriority() - 2;
            if (priority < 5) {
                priority = 5;
            }
            setPriority(priority);
            while (c.this.v) {
                try {
                    c.this.a((ArrayBlockingQueue<e.b.b.a.a.b.b>) c.this.x);
                } catch (Throwable th) {
                    try {
                        String str = "AppendWorker take: " + th;
                        try {
                            c.this.a((a) null);
                            Iterator it = c.this.x.iterator();
                            while (it.hasNext()) {
                                e.b.b.a.a.b.b bVar = (e.b.b.a.a.b.b) it.next();
                                c.this.b(bVar);
                                c.this.x.remove(bVar);
                            }
                            c.this.a((ArrayBlockingQueue<e.b.b.a.a.b.b>) null);
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            sb = new StringBuilder();
                            sb.append("AppendWorker finally: ");
                            sb.append(th);
                            sb.toString();
                        }
                    } catch (Throwable th3) {
                        try {
                            c.this.a((a) null);
                            Iterator it2 = c.this.x.iterator();
                            while (it2.hasNext()) {
                                e.b.b.a.a.b.b bVar2 = (e.b.b.a.a.b.b) it2.next();
                                c.this.b(bVar2);
                                c.this.x.remove(bVar2);
                            }
                            c.this.a((ArrayBlockingQueue<e.b.b.a.a.b.b>) null);
                        } catch (Throwable th4) {
                            String str2 = "AppendWorker finally: " + th4;
                        }
                        throw th3;
                    }
                }
            }
            try {
                c.this.a((a) null);
                Iterator it3 = c.this.x.iterator();
                while (it3.hasNext()) {
                    e.b.b.a.a.b.b bVar3 = (e.b.b.a.a.b.b) it3.next();
                    c.this.b(bVar3);
                    c.this.x.remove(bVar3);
                }
                c.this.a((ArrayBlockingQueue<e.b.b.a.a.b.b>) null);
            } catch (Throwable th5) {
                th = th5;
                sb = new StringBuilder();
                sb.append("AppendWorker finally: ");
                sb.append(th);
                sb.toString();
            }
        }
    }

    /* compiled from: LogLayout.java */
    /* renamed from: e.b.b.a.a.d.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0178c {

        /* renamed from: a, reason: collision with root package name */
        private String f17005a;

        /* renamed from: b, reason: collision with root package name */
        private String f17006b;

        public String a() {
            return this.f17005a;
        }

        public String b() {
            return this.f17006b;
        }

        public void c(String str) {
        }

        public void a(String str) {
            this.f17005a = str;
        }

        public void b(String str) {
            this.f17006b = str;
        }
    }

    /* compiled from: MASLayout.java */
    /* loaded from: classes.dex */
    public class e<T extends e.b.b.a.a.b.b> implements d.a<T> {
        @Override // e.b.b.a.a.d.c.d.a
        public C0178c a(T t, e.b.b.a.a.d.c$b.e<T> eVar) {
            C0178c c0178c = new C0178c();
            c0178c.b(eVar.a(t));
            c0178c.c("MAS");
            c0178c.a(t.a());
            return c0178c;
        }
    }

    public c(Context context) {
        e.b.b.a.a.b.h.c cVar = e.b.b.a.a.b.h.c.INTANCE;
        this.v = true;
        this.z = new k();
        this.f16983a = context;
        this.u = new b(context);
        this.f16984b = e.b.b.a.a.d.a.c.a(this);
        f.a(context);
        this.f16985c = f.b();
        com.alipay.iap.android.aplog.core.filter.g.a(context);
        this.f16987e = com.alipay.iap.android.aplog.core.filter.g.b();
        a(this.f16987e);
        NetWorkProvider.b(context);
        x();
        y();
        u();
        this.x = new ArrayBlockingQueue<>(2048);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str, String str2, Bundle bundle) {
        i.d().c("LogContextImpl", i.b().d() + " syncUploadCoreByCategoryDirectly: " + str);
        boolean z = bundle != null && bundle.getBoolean("syncAllLog");
        if ((!i.b().a() && str == null) || z) {
            try {
                i.d().e("LogContextImpl", "sync all log to upload dir...");
                this.f16985c.a();
            } catch (Throwable th) {
                i.d().a("LogContextImpl", "syncUploadCoreByCategoryDirectly, syncLog: " + th);
            }
        }
        try {
            i.d().c("LogContextImpl", "uploadManager.uploadLog");
            this.f16985c.a(str, str2, bundle);
        } catch (Throwable th2) {
            i.d().b("LogContextImpl", "syncUploadCoreByCategoryDirectly, uploadLog: " + th2, th2);
        }
    }

    public static boolean w() {
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences sharedPreferences = i.a().a().getSharedPreferences("time", 0);
        if (currentTimeMillis - sharedPreferences.getLong("lastCrashTime", 0L) <= 3000) {
            return false;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putLong("lastCrashTime", currentTimeMillis);
        edit.apply();
        return true;
    }

    private void x() {
        try {
            a("TimeZone", TimeZone.getDefault().getID());
        } catch (Throwable th) {
            i.d().a("LogContextImpl", th);
        }
    }

    private void y() {
        Location lastKnownLocation;
        String c2 = e.b.b.a.a.e.d.c();
        if (!TextUtils.isEmpty(c2)) {
            a("brand", c2);
        }
        int a2 = androidx.core.content.a.a(a(), "android.permission.ACCESS_FINE_LOCATION");
        int a3 = androidx.core.content.a.a(a(), "android.permission.ACCESS_COARSE_LOCATION");
        if (a2 == 0 && a3 == 0) {
            LocationManager locationManager = (LocationManager) a().getSystemService("location");
            if (locationManager.isProviderEnabled("gps") && (lastKnownLocation = locationManager.getLastKnownLocation("gps")) != null) {
                i.d().c("LogContextImpl", "location not null");
                a("latitude", lastKnownLocation.getLatitude() + "");
                a("longitude", lastKnownLocation.getLongitude() + "");
            }
            g gVar = new g(this);
            Location location = null;
            if (locationManager.getAllProviders().contains("network")) {
                try {
                    locationManager.requestLocationUpdates("network", 1000L, 0.0f, gVar);
                    location = locationManager.getLastKnownLocation("network");
                } catch (Exception e2) {
                    i.d().a("LogContextImpl", e2.getMessage());
                }
            }
            if (location != null) {
                a("latitude", location.getLatitude() + "");
                a("longitude", location.getLongitude() + "");
            }
        }
    }

    @Override // e.b.b.a.a.a.d
    public void c() {
        this.x.add(new e.b.b.a.a.b.d("flush"));
    }

    @Override // e.b.b.a.a.a.d
    public String e() {
        return this.p;
    }

    @Override // e.b.b.a.a.a.d
    public void e(String str) {
    }

    @Override // e.b.b.a.a.a.d
    public String f() {
        try {
            return this.z.getDeviceId();
        } catch (Exception e2) {
            i.d().a("LogContextImpl", e2);
            return HanziToPinyin.Token.SEPARATOR;
        }
    }

    @Override // e.b.b.a.a.a.d
    public String g() {
        if (!TextUtils.isEmpty(this.r)) {
            return this.r;
        }
        return this.u.a();
    }

    @Override // e.b.b.a.a.a.d
    public long h() {
        return this.f16993k;
    }

    @Override // e.b.b.a.a.a.d
    public e.b.b.a.a.a.e i() {
        return this.f16986d;
    }

    @Override // e.b.b.a.a.a.d
    public String j() {
        return this.o;
    }

    @Override // e.b.b.a.a.a.d
    public Map<String, String> k() {
        return this.f16989g;
    }

    @Override // e.b.b.a.a.a.d
    public String l() {
        return Locale.getDefault().toString();
    }

    @Override // e.b.b.a.a.a.d
    public String m() {
        LinkedList<String> linkedList = this.m;
        if (linkedList == null || linkedList.size() <= 0) {
            return null;
        }
        return this.m.getLast();
    }

    @Override // e.b.b.a.a.a.d
    public String n() {
        LinkedList<String> linkedList = this.n;
        if (linkedList == null || linkedList.size() <= 0) {
            return null;
        }
        return this.n.getLast();
    }

    @Override // e.b.b.a.a.a.d
    public e.b.b.a.a.a.a.a o() {
        return this.y;
    }

    @Override // e.b.b.a.a.a.d
    public com.alipay.iap.android.aplog.core.filter.a p() {
        com.alipay.iap.android.aplog.core.filter.a aVar = this.f16990h;
        return aVar == null ? this.f16987e : aVar;
    }

    @Override // e.b.b.a.a.a.d
    public LinkedList<String> q() {
        return this.f16991i;
    }

    @Override // e.b.b.a.a.a.d
    public String r() {
        return this.s;
    }

    @Override // e.b.b.a.a.a.d
    public String s() {
        return this.f16994l;
    }

    @Override // e.b.b.a.a.a.d
    public e.b.b.a.a.a.g t() {
        return this.f16992j;
    }

    public void u() {
        this.s = UUID.randomUUID().toString();
    }

    public String v() {
        return this.t;
    }

    @Override // e.b.b.a.a.a.d
    public com.alipay.iap.android.aplog.core.filter.b b() {
        return this.f16988f;
    }

    /* compiled from: LogLayoutManager.java */
    /* loaded from: classes.dex */
    public class d<T extends e.b.b.a.a.b.b> {

        /* renamed from: c, reason: collision with root package name */
        static d f17007c;

        /* renamed from: a, reason: collision with root package name */
        private a<T> f17008a = new e();

        /* renamed from: b, reason: collision with root package name */
        private Map<String, e.b.b.a.a.d.c$b.e<T>> f17009b = new HashMap();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: LogLayoutManager.java */
        /* loaded from: classes.dex */
        public interface a<T extends e.b.b.a.a.b.b> {
            C0178c a(T t, e.b.b.a.a.d.c$b.e<T> eVar);
        }

        private d() {
        }

        public static d a() {
            if (f17007c == null) {
                f17007c = new d();
            }
            return f17007c;
        }

        public static d b() {
            d dVar = f17007c;
            if (dVar != null) {
                return dVar;
            }
            throw new IllegalStateException("need createInstance before use");
        }

        public C0178c a(@NonNull T t, @NonNull String str) {
            if (!a(t)) {
                return null;
            }
            if (this.f17008a != null && this.f17009b.get(t.a()) != null) {
                return this.f17008a.a(t, this.f17009b.get(t.a()));
            }
            throw new IllegalStateException("no layout type found: " + str);
        }

        public boolean a(e.b.b.a.a.b.b bVar) {
            return i.a().p().a(bVar.a());
        }

        public void a(String str, e.b.b.a.a.d.c$b.e<T> eVar) {
            this.f17009b.put(str, eVar);
        }
    }

    private void c(String str, String str2, Bundle bundle) {
        i.d().c("LogContextImpl", "asyncUploadCoreByCategoryDirectly: begin");
        e.b.b.a.a.d.h.c.a().submit(new e.b.b.a.a.d.e(this, str, str2, bundle), "LogContextImpl.upload");
    }

    public void b(String str, String str2, Bundle bundle) {
        i.d().c("LogContextImpl", "adjustUploadCoreByCategoryDirectly " + Thread.currentThread().getName());
        if ("main".equalsIgnoreCase(Thread.currentThread().getName())) {
            c(str, str2, bundle);
        } else {
            d(str, str2, bundle);
        }
    }

    @Override // e.b.b.a.a.a.d
    public void c(String str) {
        if (this.n == null) {
            this.n = new LinkedList<>();
        }
        if (this.n.size() >= 20) {
            this.n.removeFirst();
        }
        this.n.add(str);
    }

    @Override // e.b.b.a.a.a.d
    public Context a() {
        return this.f16983a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@NonNull e.b.b.a.a.b.b bVar) {
        if (!bVar.a().equals("crash") || w()) {
            if (bVar.a().equals("flush")) {
                try {
                    this.f16984b.a((e.b.b.a.a.b.d) bVar);
                    return;
                } catch (Exception e2) {
                    i.d().a("LogContextImpl", e2.getMessage());
                    return;
                }
            }
            C0178c a2 = d.b().a((d) bVar, v());
            if (a2 != null) {
                e.b.b.a.a.d.a.c.c().a(a2);
            }
        }
    }

    @Override // e.b.b.a.a.a.d
    public void a(com.alipay.iap.android.aplog.core.filter.b bVar) {
        this.f16988f = bVar;
    }

    @Override // e.b.b.a.a.a.d
    public void a(int i2) {
        this.f16985c.a(i2);
    }

    @Override // e.b.b.a.a.a.d
    public void a(String str, String str2, Bundle bundle) {
        if (i.b().a()) {
            Intent intent = new Intent();
            intent.setClassName(this.f16983a, "com.alipay.iap.android.aplog.service.LogServiceInToolsProcess");
            a(intent, str, str2, bundle);
        } else if (i.b().b()) {
            b(str, str2, bundle);
        }
    }

    @Override // e.b.b.a.a.a.d
    public String d() {
        return this.q;
    }

    @Override // e.b.b.a.a.a.d
    public void d(String str) {
        if (this.m == null) {
            this.m = new LinkedList<>();
        }
        if (this.m.size() >= 20) {
            this.m.removeFirst();
        }
        this.m.add(str);
    }

    @Override // e.b.b.a.a.a.d
    public void b(String str) {
        this.o = str;
    }

    private void a(Intent intent, String str, String str2, Bundle bundle) {
        if (intent == null) {
            return;
        }
        try {
            intent.setPackage(this.f16983a.getPackageName());
        } catch (Throwable th) {
            i.d().a("LogContextImpl", th);
        }
        intent.setAction(this.f16983a.getPackageName() + ".UPLOAD_LOG");
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.putExtra("logCategory", str);
        intent.putExtra("uploadUrl", str2);
        intent.putExtra("invokerProcessAlias", i.b().d());
        boolean z = false;
        try {
            i.d().c("LogContextImpl", "uploadCoreByStartService start, action: " + this.f16983a.getPackageName() + ".UPLOAD_LOG");
            o.a(this.f16983a, intent);
            z = true;
            i.d().c("LogContextImpl", "uploadCoreByStartService: true");
        } catch (Throwable th2) {
            i.d().b("LogContextImpl", "uploadCoreByStartService", th2);
        }
        if (z) {
            return;
        }
        c(str, str2, bundle);
    }

    @Override // e.b.b.a.a.a.d
    public void a(String str) {
        this.q = str;
    }

    @Override // e.b.b.a.a.a.d
    public void a(long j2) {
        com.alipay.iap.android.aplog.core.filter.g.b().a(j2);
    }

    @Override // e.b.b.a.a.a.d
    public void a(@NonNull e.b.b.a.a.b.b bVar) {
        if (bVar == null) {
            return;
        }
        if (this.w == null) {
            synchronized (this) {
                if (this.w == null) {
                    a aVar = new a();
                    aVar.setDaemon(true);
                    aVar.setName("LogAppendWorker");
                    aVar.start();
                    a(aVar);
                }
            }
        }
        try {
            if (this.x.add(bVar)) {
                return;
            }
            throw new RuntimeException("add log event to queue fail, current size: " + this.x.size());
        } catch (Throwable th) {
            i.d().b("LogContextImpl", "appendLogEvent", th);
        }
    }

    public void a(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.f16989g.put(str, str2);
    }

    public void a(com.alipay.iap.android.aplog.core.filter.a aVar) {
        this.f16990h = aVar;
    }

    @Override // e.b.b.a.a.a.d
    public void a(String str, Object obj) {
        if (str == null) {
            return;
        }
        char c2 = 65535;
        if (str.hashCode() == 2115932913 && str.equals("gotoBackground")) {
            c2 = 0;
        }
        if (c2 != 0) {
            return;
        }
        i.a().c();
        Bundle bundle = new Bundle();
        bundle.putString("event", "gotoBackground");
        i.a().a("crash", null, bundle);
        i.a().a("userbehavor", null, bundle);
        i.a().a("autouserbehavor", null, bundle);
        i.a().a("alivereport", null, bundle);
        i.a().a("pageMonitor", null, bundle);
        i.a().a("bizHighAvail", null, bundle);
        i.a().a("apm", null, bundle);
        i.a().a(HummerConstants.NORMAL_EXCEPTION, null, bundle);
        i.a().a("performance", null, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayBlockingQueue<e.b.b.a.a.b.b> arrayBlockingQueue) {
        if (arrayBlockingQueue == null) {
            return;
        }
        b(arrayBlockingQueue.take());
        this.v = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(a aVar) {
        this.w = aVar;
    }

    @Override // e.b.b.a.a.a.d
    public void a(e.b.b.a.a.a.b bVar) {
        if (bVar != null) {
            this.z = bVar;
        }
    }
}
