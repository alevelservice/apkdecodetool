package e.b.b.a.a.b.h;

import android.text.TextUtils;
import e.b.b.a.a.b.c.d;
import e.b.b.a.a.d.i;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* compiled from: SpmMonitor.java */
/* loaded from: classes.dex */
public enum c implements a {
    INTANCE;


    /* renamed from: e, reason: collision with root package name */
    private static final String f16935e = c.class.getName();
    private WeakReference<Object> mTopPage;

    private void a(String str) {
        d.c().a(str);
    }

    public Object getTopPage() {
        WeakReference<Object> weakReference = this.mTopPage;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void pageOnDestroy(Object obj) {
        d.c().b(obj);
    }

    public void pageOnEnd(Object obj, String str, String str2, Map<String, String> map) {
        i.c().c(f16935e, "pageOnPause spmId:" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("referSpm", h.instance.getReferSpm(obj));
        d.c().a(str, obj, str2, map);
    }

    public void pageOnStart(Object obj, String str) {
        this.mTopPage = new WeakReference<>(obj);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        d.c().a(str, obj);
    }

    public void spmClick(Object obj, String str, String str2, Map<String, String> map) {
        a(str);
        d.a a2 = a(obj, str, str2, map);
        a2.a("clicked");
        i.a().a(a2.a());
    }

    public void spmExpose(Object obj, String str, String str2, Map<String, String> map) {
        d.a a2 = a(obj, str, str2, map);
        a2.a("exposure");
        i.a().a(a2.a());
    }

    private d.a a(Object obj, String str, String str2, Map<String, String> map) {
        d.a aVar = new d.a();
        String pageId = h.instance.getPageId(obj);
        String n = i.a().n();
        aVar.d(pageId);
        aVar.c(str);
        aVar.b(str2);
        aVar.a(map);
        aVar.e(n);
        i.a().c(pageId);
        return aVar;
    }
}
