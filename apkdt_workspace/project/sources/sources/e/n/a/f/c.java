package e.n.a.f;

import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import g.a.c.a.k;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BatchOperation.java */
/* loaded from: classes2.dex */
public class c extends e.n.a.f.a {

    /* renamed from: a, reason: collision with root package name */
    final Map<String, Object> f18167a;

    /* renamed from: b, reason: collision with root package name */
    final a f18168b = new a(this);

    /* renamed from: c, reason: collision with root package name */
    final boolean f18169c;

    /* compiled from: BatchOperation.java */
    /* loaded from: classes2.dex */
    public class a implements g {

        /* renamed from: a, reason: collision with root package name */
        Object f18170a;

        /* renamed from: b, reason: collision with root package name */
        String f18171b;

        /* renamed from: c, reason: collision with root package name */
        String f18172c;

        /* renamed from: d, reason: collision with root package name */
        Object f18173d;

        public a(c cVar) {
        }

        @Override // e.n.a.f.g
        public void a(Object obj) {
            this.f18170a = obj;
        }

        @Override // e.n.a.f.g
        public void a(String str, String str2, Object obj) {
            this.f18171b = str;
            this.f18172c = str2;
            this.f18173d = obj;
        }
    }

    public c(Map<String, Object> map, boolean z) {
        this.f18167a = map;
        this.f18169c = z;
    }

    @Override // e.n.a.f.f
    public <T> T a(String str) {
        return (T) this.f18167a.get(str);
    }

    @Override // e.n.a.f.b, e.n.a.f.f
    public boolean b() {
        return this.f18169c;
    }

    @Override // e.n.a.f.a
    public g e() {
        return this.f18168b;
    }

    public String f() {
        return (String) this.f18167a.get("method");
    }

    public Map<String, Object> g() {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        hashMap2.put(HummerConstants.CODE, this.f18168b.f18171b);
        hashMap2.put("message", this.f18168b.f18172c);
        hashMap2.put(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, this.f18168b.f18173d);
        hashMap.put(HummerConstants.HUMMER_ERROR, hashMap2);
        return hashMap;
    }

    public Map<String, Object> h() {
        HashMap hashMap = new HashMap();
        hashMap.put("result", this.f18168b.f18170a);
        return hashMap;
    }

    public void a(k.d dVar) {
        a aVar = this.f18168b;
        dVar.a(aVar.f18171b, aVar.f18172c, aVar.f18173d);
    }

    public void b(List<Map<String, Object>> list) {
        if (b()) {
            return;
        }
        list.add(h());
    }

    public void a(List<Map<String, Object>> list) {
        if (b()) {
            return;
        }
        list.add(g());
    }
}
