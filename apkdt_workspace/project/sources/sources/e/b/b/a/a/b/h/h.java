package e.b.b.a.a.b.h;

import android.app.Activity;
import android.view.ContextThemeWrapper;
import e.b.b.a.a.d.i;

/* compiled from: TrackerHelper.java */
/* loaded from: classes.dex */
public enum h {
    instance;

    private final String TAG = h.class.getSimpleName();

    h() {
    }

    private b a(Object obj) {
        return d.c().a(b(obj));
    }

    private Object b(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextThemeWrapper) && d.c().a(obj) == null) ? ((ContextThemeWrapper) obj).getBaseContext() : obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean checkIsPageBack(Object obj) {
        b bVar;
        b a2 = d.c().a(obj);
        b b2 = d.c().b();
        return (b2 == null || a2 == null || (bVar = b2.u) == null || !bVar.f16925c.equals(a2.f16925c)) ? false : true;
    }

    public String getPageId(Object obj) {
        b a2 = a(obj);
        if (a2 == null) {
            return "C_NULL";
        }
        i.c().c(this.TAG, "getPageId pageId:" + a2.f16925c);
        String str = a2.f16925c;
        return str == null ? "C_NULL" : str;
    }

    public String getReferSpm(Object obj) {
        String str;
        b a2 = a(obj);
        return (a2 == null || (str = a2.f16933k) == null) ? "" : str;
    }
}
