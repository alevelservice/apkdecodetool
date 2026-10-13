package e.b.b.a.a.b.h;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import e.b.b.a.a.d.i;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: SpmTrackIntegrator.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static final String f16937d = "d";

    /* renamed from: e, reason: collision with root package name */
    private static d f16938e;

    /* renamed from: f, reason: collision with root package name */
    private static Handler f16939f = new Handler(Looper.getMainLooper());

    /* renamed from: b, reason: collision with root package name */
    private b f16941b;

    /* renamed from: a, reason: collision with root package name */
    private Map<String, b> f16940a = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    public String f16942c = "";

    public static synchronized d c() {
        d dVar;
        synchronized (d.class) {
            if (f16938e == null) {
                f16938e = new d();
            }
            dVar = f16938e;
        }
        return dVar;
    }

    public b b() {
        return this.f16941b;
    }

    public void a(String str, Object obj) {
        if (obj != null && !TextUtils.isEmpty(str)) {
            String a2 = g.a(obj);
            if (TextUtils.isEmpty(a2)) {
                i.c().e(f16937d, "Start_view.toString() is null");
                return;
            }
            boolean checkIsPageBack = h.instance.checkIsPageBack(obj);
            b bVar = this.f16940a.get(a2);
            if (bVar != null && !bVar.f16929g) {
                i.c().e(f16937d, "Start_not call end,and start twice,update spm");
                a(bVar, str);
                return;
            }
            b bVar2 = this.f16940a.get(a2);
            if (bVar2 == null) {
                bVar2 = new b();
                b bVar3 = this.f16941b;
                if (bVar3 != null) {
                    bVar2.u = b.a(bVar3);
                }
            }
            bVar2.s = bVar2 == this.f16941b;
            bVar2.t = checkIsPageBack;
            bVar2.f16929g = false;
            bVar2.f16923a = System.currentTimeMillis();
            bVar2.f16924b = g.a(bVar2.f16923a);
            bVar2.f16925c = str + "__" + i.a().f() + "__" + bVar2.f16924b + "_";
            bVar2.f16927e = str;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("__");
            sb.append(bVar2.f16924b);
            sb.append("_");
            bVar2.f16931i = sb.toString();
            bVar2.f16933k = a();
            this.f16940a.put(a2, bVar2);
            this.f16941b = bVar2;
            i.c().e(f16937d, "page start " + a2 + " name = " + obj.getClass().getName() + " spm = " + str);
            try {
                if (obj instanceof View) {
                    ((View) obj).addOnAttachStateChangeListener(new e(this, a2, obj));
                    return;
                }
                return;
            } catch (Throwable th) {
                i.c().a(f16937d, th);
                return;
            }
        }
        i.c().e(f16937d, "Start_view is null or spm is null");
    }

    public void b(Object obj) {
        String a2 = g.a(obj);
        if (a2 == null || this.f16940a.get(a2) == null) {
            return;
        }
        f16939f.postDelayed(new f(this, a2), 1000L);
    }

    public b a(String str, Object obj, String str2, Map<String, String> map) {
        if (obj != null && !TextUtils.isEmpty(str)) {
            String a2 = g.a(obj);
            if (TextUtils.isEmpty(a2)) {
                i.c().e(f16937d, "End_view.toString() is null");
                return null;
            }
            b bVar = this.f16940a.get(a2);
            if (bVar == null) {
                i.c().e(f16937d, "End_pageInfo is null");
                return null;
            }
            if (bVar.f16929g) {
                i.c().e(f16937d, "is already call pageEnd");
                return bVar;
            }
            bVar.f16929g = true;
            e.b.b.a.a.b.c.f fVar = new e.b.b.a.a.b.c.f(str);
            fVar.d(str2);
            fVar.e(bVar.a());
            fVar.a(map);
            fVar.f(bVar.f16925c);
            fVar.c(String.valueOf(bVar.f16923a));
            fVar.b(String.valueOf(System.currentTimeMillis()));
            i.a().a(fVar);
            return bVar;
        }
        i.c().e(f16937d, "End_View is null or spm is null");
        return null;
    }

    public void a(String str) {
        this.f16942c = str;
        b bVar = this.f16941b;
        if (bVar != null) {
            bVar.n = str;
        }
    }

    public String a() {
        i.c().a(f16937d, "getLastClickViewSpm");
        return this.f16942c;
    }

    private void a(b bVar, String str) {
        if (bVar != null && !TextUtils.isEmpty(str)) {
            bVar.f16927e = str;
        } else {
            i.c().e(f16937d, "updateLastInfoSpm spm or lastInfo is null");
        }
    }

    public b a(Object obj) {
        if (obj == null) {
            i.c().e(f16937d, "getPageInfoByView is null or spm is null");
            return null;
        }
        String a2 = g.a(obj);
        if (TextUtils.isEmpty(a2)) {
            i.c().e(f16937d, "getPageInfoByView() is null");
            return null;
        }
        b bVar = this.f16940a.get(a2);
        if (bVar != null) {
            return bVar;
        }
        i.c().e(f16937d, "getPageInfoByView view is null");
        return null;
    }
}
