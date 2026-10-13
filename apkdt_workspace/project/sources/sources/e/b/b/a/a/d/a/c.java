package e.b.b.a.a.d.a;

import androidx.annotation.NonNull;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import e.b.b.a.a.d.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;

/* compiled from: AppenderManager.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: c, reason: collision with root package name */
    private static Map<String, b> f16963c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    private static c f16964d;

    /* renamed from: a, reason: collision with root package name */
    private e.b.b.a.a.a.d f16965a;

    /* renamed from: b, reason: collision with root package name */
    private List<k> f16966b = new ArrayList();

    private c(e.b.b.a.a.a.d dVar) {
        this.f16965a = dVar;
        f16963c.put("autouserbehavor", new j(dVar, "autouserbehavor"));
        f16963c.put("userbehavor", new j(dVar, "userbehavor"));
        f16963c.put("pageMonitor", new j(dVar, "pageMonitor"));
        f16963c.put("performance", new j(dVar, "performance"));
        f16963c.put("alivereport", new j(dVar, "alivereport"));
        f16963c.put("crash", new j(dVar, "crash"));
        f16963c.put("applog", new d(dVar, "applog", TimeUnit.HOURS.toMillis(1L), TimeUnit.DAYS.toMillis(7L), 31457280L, AntDetector.ACTION_ID_SAMPLE));
        f16963c.put("unknown", new g(dVar, "unknown", TimeUnit.HOURS.toMillis(1L), TimeUnit.DAYS.toMillis(7L), 20971520L, AntDetector.ACTION_ID_SAMPLE));
    }

    public static c a(e.b.b.a.a.a.d dVar) {
        if (f16964d == null) {
            f16964d = new c(dVar);
        }
        return f16964d;
    }

    public static c c() {
        c cVar = f16964d;
        if (cVar != null) {
            return cVar;
        }
        throw new IllegalStateException("need createInstance before use");
    }

    public d b() {
        b bVar = f16963c.get("applog");
        if (bVar instanceof d) {
            return (d) bVar;
        }
        return null;
    }

    public void a(@NonNull c.C0178c c0178c) {
        Map<String, b> map = f16963c;
        if (map != null) {
            if (map.get(c0178c.a()) == null) {
                f16963c.put(c0178c.a(), new j(this.f16965a, c0178c.a()));
            }
            f16963c.get(c0178c.a()).b(c0178c.b());
            if (this.f16966b.isEmpty()) {
                return;
            }
            for (int i2 = 0; i2 < this.f16966b.size(); i2++) {
                this.f16966b.get(i2).a(c0178c.b());
            }
        }
    }

    public void a(e.b.b.a.a.b.d dVar) {
        if (dVar == null || dVar.e() == null) {
            return;
        }
        String e2 = dVar.e();
        char c2 = 65535;
        int hashCode = e2.hashCode();
        if (hashCode != -998121387) {
            if (hashCode == 97532676 && e2.equals("flush")) {
                c2 = 0;
            }
        } else if (e2.equals("flushByType")) {
            c2 = 1;
        }
        if (c2 == 0) {
            a();
        } else {
            if (c2 != 1) {
                return;
            }
            a(dVar.a());
        }
    }

    public void a(String str) {
        if (f16963c.containsKey(str)) {
            f16963c.get(str).b();
        }
    }

    public void a() {
        Iterator<String> it = f16963c.keySet().iterator();
        while (it.hasNext()) {
            f16963c.get(it.next()).b();
        }
    }
}
