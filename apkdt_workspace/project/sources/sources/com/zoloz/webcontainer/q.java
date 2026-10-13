package com.zoloz.webcontainer;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.zoloz.webcontainer.l.a;
import com.zoloz.webcontainer.l.c;
import java.util.HashMap;

/* compiled from: WebContainerKit.java */
/* loaded from: classes2.dex */
public class q {

    /* renamed from: j, reason: collision with root package name */
    private static q f16755j = new q();

    /* renamed from: a, reason: collision with root package name */
    private Context f16756a;

    /* renamed from: b, reason: collision with root package name */
    private com.zoloz.webcontainer.l.d f16757b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f16758c;

    /* renamed from: g, reason: collision with root package name */
    private String f16762g;

    /* renamed from: i, reason: collision with root package name */
    private com.zoloz.webcontainer.c.b f16764i;

    /* renamed from: d, reason: collision with root package name */
    private com.zoloz.webcontainer.l.e f16759d = new com.zoloz.webcontainer.l.e();

    /* renamed from: e, reason: collision with root package name */
    private c f16760e = new c();

    /* renamed from: f, reason: collision with root package name */
    private a f16761f = new a();

    /* renamed from: h, reason: collision with root package name */
    private HashMap f16763h = new HashMap();

    public static q i() {
        return f16755j;
    }

    private void j() {
        this.f16757b = com.zoloz.webcontainer.l.d.a();
        this.f16757b.a(new com.zoloz.webcontainer.n.a.b());
        this.f16757b.a(new com.zoloz.webcontainer.n.a.e());
        this.f16757b.a(new com.zoloz.webcontainer.n.c());
        this.f16757b.a(new com.zoloz.webcontainer.n.a.d());
        this.f16757b.a(new com.zoloz.webcontainer.n.a.f());
        this.f16757b.a(new com.zoloz.webcontainer.n.a.a());
        this.f16757b.a(new com.zoloz.webcontainer.n.a.g());
    }

    public void a(Context context, int i2) {
        this.f16756a = context;
        j();
        this.f16761f.a(i2);
        this.f16761f.a(context);
        com.zoloz.webcontainer.i.a.a(context);
    }

    public boolean b() {
        return this.f16758c;
    }

    public com.zoloz.webcontainer.l.e c() {
        return this.f16759d;
    }

    public c d() {
        return this.f16760e;
    }

    public a e() {
        return this.f16761f;
    }

    public String f() {
        return this.f16762g;
    }

    public HashMap g() {
        return this.f16763h;
    }

    public com.zoloz.webcontainer.c.b h() {
        return this.f16764i;
    }

    public void b(String str) {
        this.f16760e.a(str);
    }

    public boolean c(String str) {
        return this.f16760e.b(str);
    }

    public void d(String str) {
        this.f16759d.a(str);
        a(str);
    }

    public void e(String str) {
        this.f16762g = str;
    }

    public void a(Context context, String str, Bundle bundle) {
        if (context == null) {
            context = this.f16756a;
        }
        b.a("WebContainerKit", "openUrl " + str);
        Intent intent = new Intent(context, (Class<?>) WebCActivity.class);
        intent.putExtra(HummerConstants.URL, str);
        intent.setFlags(268435456);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        context.startActivity(intent);
    }

    public void a(String str, Bundle bundle) {
        Context context = this.f16756a;
        b.a("WebContainerKit", "openUrl " + str);
        Intent intent = new Intent(context, (Class<?>) WebCActivity.class);
        intent.putExtra(HummerConstants.URL, str);
        intent.setFlags(268435456);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        context.startActivity(intent);
    }

    public com.zoloz.webcontainer.l.d a() {
        return this.f16757b;
    }

    public void a(boolean z) {
        this.f16758c = z;
    }

    public void a(String str) {
        this.f16759d.b(str);
        this.f16760e.a();
        this.f16761f.b();
    }
}
