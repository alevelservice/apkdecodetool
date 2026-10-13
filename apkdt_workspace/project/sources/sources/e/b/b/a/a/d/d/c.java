package e.b.b.a.a.d.d;

import android.text.TextUtils;
import e.b.b.a.a.b.f;
import e.b.b.a.a.d.i;
import e.b.b.a.a.e.j;

/* compiled from: TraceLoggerImpl.java */
/* loaded from: classes.dex */
public class c implements b {
    public boolean a() {
        return j.b();
    }

    @Override // e.b.b.a.a.d.d.b
    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        a();
        if (i.a() == null) {
            return;
        }
        i.a().a(new f(str, e.b.b.a.a.a.c.WARN, str2, null));
    }

    @Override // e.b.b.a.a.d.d.b
    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        a();
        if (i.a() == null) {
            return;
        }
        i.a().a(new f(str, e.b.b.a.a.a.c.DEBUG, str2, null));
    }

    @Override // e.b.b.a.a.d.d.b
    public void d(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        a();
        if (i.a() == null) {
            return;
        }
        i.a().a(new f(str, e.b.b.a.a.a.c.VERBOSE, str2, null));
    }

    @Override // e.b.b.a.a.d.d.b
    public void e(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        a();
        if (i.a() == null) {
            return;
        }
        i.a().a(new f(str, e.b.b.a.a.a.c.INFO, str2, null));
    }

    @Override // e.b.b.a.a.d.d.b
    public void a(String str, String str2, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a();
        if (i.a() == null) {
            return;
        }
        i.a().a(new f(str, e.b.b.a.a.a.c.WARN, str2, th));
    }

    @Override // e.b.b.a.a.d.d.b
    public void b(String str, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a();
        if (i.a() == null) {
            return;
        }
        i.a().a(new f(str, e.b.b.a.a.a.c.WARN, j.a(th), th));
    }

    @Override // e.b.b.a.a.d.d.b
    public void a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        a();
        if (i.a() == null) {
            return;
        }
        i.a().a(new f(str, e.b.b.a.a.a.c.ERROR, str2, null));
    }

    @Override // e.b.b.a.a.d.d.b
    public void a(String str, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (a()) {
            th.getMessage();
        }
        if (i.a() == null) {
            return;
        }
        i.a().a(new f(str, e.b.b.a.a.a.c.ERROR, j.a(th), th));
    }

    @Override // e.b.b.a.a.d.d.b
    public void b(String str, String str2, Throwable th) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a();
        if (i.a() == null) {
            return;
        }
        i.a().a(new f(str, e.b.b.a.a.a.c.ERROR, str2, th));
    }
}
