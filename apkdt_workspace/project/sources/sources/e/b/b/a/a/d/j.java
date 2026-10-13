package e.b.b.a.a.d;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import e.b.b.a.a.a.f;
import java.lang.reflect.Method;

/* compiled from: ProcessInfoImpl.java */
/* loaded from: classes.dex */
public class j implements f {

    /* renamed from: a, reason: collision with root package name */
    private Context f17040a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f17041b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f17042c;

    /* renamed from: d, reason: collision with root package name */
    private String f17043d;

    /* renamed from: e, reason: collision with root package name */
    private String f17044e;

    /* renamed from: f, reason: collision with root package name */
    private String f17045f;

    /* renamed from: g, reason: collision with root package name */
    private String f17046g;

    /* renamed from: h, reason: collision with root package name */
    private String f17047h;

    /* renamed from: i, reason: collision with root package name */
    private String f17048i;

    public j(Context context) {
        this.f17041b = false;
        this.f17042c = false;
        this.f17043d = "";
        this.f17044e = "";
        this.f17045f = "";
        this.f17046g = "";
        this.f17047h = "";
        this.f17048i = "";
        this.f17040a = context;
        this.f17045f = context.getPackageName();
        this.f17046g = f();
        this.f17047h = this.f17045f;
        this.f17048i = this.f17045f + ":tools";
        this.f17041b = this.f17047h.equals(this.f17046g);
        this.f17042c = this.f17048i.equals(this.f17046g);
        if (this.f17041b) {
            this.f17044e = "main";
        } else if (this.f17042c) {
            this.f17044e = "tools";
        }
        this.f17043d = this.f17045f + "-" + this.f17044e;
    }

    private String f() {
        String str;
        String str2;
        try {
            Class<?> loadClass = getClass().getClassLoader().loadClass("android.app.ActivityThread");
            Method declaredMethod = loadClass.getDeclaredMethod("currentActivityThread", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            Method declaredMethod2 = loadClass.getDeclaredMethod("getProcessName", new Class[0]);
            declaredMethod2.setAccessible(true);
            str = (String) declaredMethod2.invoke(invoke, new Object[0]);
        } catch (Throwable unused) {
            str = null;
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            Method declaredMethod3 = getClass().getClassLoader().loadClass("android.ddm.DdmHandleAppName").getDeclaredMethod("getAppName", new Class[0]);
            declaredMethod3.setAccessible(true);
            str2 = (String) declaredMethod3.invoke(null, new Object[0]);
        } catch (Throwable unused2) {
            str2 = str;
        }
        return !TextUtils.isEmpty(str2) ? str2 : a(e());
    }

    @Override // e.b.b.a.a.a.f
    public boolean a() {
        return this.f17041b;
    }

    @Override // e.b.b.a.a.a.f
    public boolean b() {
        return this.f17042c;
    }

    @Override // e.b.b.a.a.a.f
    public String c() {
        return this.f17043d;
    }

    @Override // e.b.b.a.a.a.f
    public String d() {
        return this.f17044e;
    }

    public int e() {
        return Process.myPid();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        r0 = r2.processName;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(int r5) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = r4.f17040a     // Catch: java.lang.Throwable -> L27
            java.lang.String r2 = "activity"
            java.lang.Object r1 = r1.getSystemService(r2)     // Catch: java.lang.Throwable -> L27
            android.app.ActivityManager r1 = (android.app.ActivityManager) r1     // Catch: java.lang.Throwable -> L27
            java.util.List r1 = r1.getRunningAppProcesses()     // Catch: java.lang.Throwable -> L27
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L27
        L13:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L27
            if (r2 == 0) goto L38
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L27
            android.app.ActivityManager$RunningAppProcessInfo r2 = (android.app.ActivityManager.RunningAppProcessInfo) r2     // Catch: java.lang.Throwable -> L27
            int r3 = r2.pid     // Catch: java.lang.Throwable -> L27
            if (r3 != r5) goto L13
            java.lang.String r5 = r2.processName     // Catch: java.lang.Throwable -> L27
            r0 = r5
            goto L38
        L27:
            r5 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "getProcessNameByID: "
            r1.append(r2)
            r1.append(r5)
            r1.toString()
        L38:
            if (r0 != 0) goto L3c
            java.lang.String r0 = ""
        L3c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.b.a.a.d.j.a(int):java.lang.String");
    }
}
