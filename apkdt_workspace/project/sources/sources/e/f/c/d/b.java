package e.f.c.d;

import java.io.PrintWriter;
import java.io.StringWriter;

/* compiled from: FLogDefaultLoggingDelegate.java */
/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: c, reason: collision with root package name */
    public static final b f17147c = new b();

    /* renamed from: a, reason: collision with root package name */
    private String f17148a = "unknown";

    /* renamed from: b, reason: collision with root package name */
    private int f17149b = 5;

    private b() {
    }

    public static b a() {
        return f17147c;
    }

    @Override // e.f.c.d.c
    public void b(String str, String str2) {
        a(3, str, str2);
    }

    @Override // e.f.c.d.c
    public void c(String str, String str2, Throwable th) {
        a(3, str, str2, th);
    }

    @Override // e.f.c.d.c
    public void d(String str, String str2) {
        a(2, str, str2);
    }

    @Override // e.f.c.d.c
    public void e(String str, String str2) {
        a(6, str, str2);
    }

    @Override // e.f.c.d.c
    public boolean a(int i2) {
        return this.f17149b <= i2;
    }

    @Override // e.f.c.d.c
    public void b(String str, String str2, Throwable th) {
        a(6, str, str2, th);
    }

    @Override // e.f.c.d.c
    public void c(String str, String str2) {
        a(5, str, str2);
    }

    @Override // e.f.c.d.c
    public void d(String str, String str2, Throwable th) {
        a(6, str, str2, th);
    }

    @Override // e.f.c.d.c
    public void a(String str, String str2, Throwable th) {
        a(5, str, str2, th);
    }

    @Override // e.f.c.d.c
    public void a(String str, String str2) {
        a(6, str, str2);
    }

    private void a(int i2, String str, String str2) {
        a(str);
    }

    private void a(int i2, String str, String str2, Throwable th) {
        a(str);
        a(str2, th);
    }

    private String a(String str) {
        if (this.f17148a == null) {
            return str;
        }
        return this.f17148a + ":" + str;
    }

    private static String a(String str, Throwable th) {
        return str + '\n' + a(th);
    }

    private static String a(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
