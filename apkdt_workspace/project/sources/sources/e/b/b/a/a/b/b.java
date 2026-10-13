package e.b.b.a.a.b;

import e.b.b.a.a.e.p;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BaseLogInfo.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    private String f16872a;

    /* renamed from: b, reason: collision with root package name */
    private HashMap<String, String> f16873b;

    public abstract String a();

    public void a(String str, String str2) {
        if (this.f16873b == null) {
            this.f16873b = new HashMap<>();
        }
        this.f16873b.put(str, str2);
    }

    public void b() {
        this.f16872a = p.a();
    }

    public String c() {
        return this.f16872a;
    }

    public HashMap<String, String> d() {
        return this.f16873b;
    }

    public void a(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            a(entry.getKey(), entry.getValue());
        }
    }
}
