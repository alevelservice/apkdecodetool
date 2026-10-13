package com.zoloz.webcontainer.r;

import android.app.Activity;
import android.text.TextUtils;
import android.webkit.WebView;
import com.zoloz.webcontainer.WebCActivity;
import com.zoloz.webcontainer.m;
import com.zoloz.webcontainer.q;

/* compiled from: H5PageImpl.java */
/* loaded from: classes2.dex */
public class b implements a {

    /* renamed from: a, reason: collision with root package name */
    private final Activity f16765a;

    /* renamed from: b, reason: collision with root package name */
    private WebView f16766b;

    /* renamed from: c, reason: collision with root package name */
    private com.zoloz.webcontainer.a.c f16767c;

    /* renamed from: d, reason: collision with root package name */
    private String f16768d;

    /* renamed from: e, reason: collision with root package name */
    private int f16769e = 0;

    /* renamed from: f, reason: collision with root package name */
    private String f16770f;

    /* renamed from: g, reason: collision with root package name */
    private com.zoloz.webcontainer.d f16771g;

    public b(WebCActivity webCActivity, WebView webView, String str) {
        this.f16765a = webCActivity;
        this.f16766b = webView;
        this.f16768d = str;
        k();
    }

    private void k() {
        this.f16767c = new com.zoloz.webcontainer.a.a.b();
    }

    @Override // com.zoloz.webcontainer.r.a
    public com.zoloz.webcontainer.a.c a() {
        return this.f16767c;
    }

    @Override // com.zoloz.webcontainer.r.a
    public Activity b() {
        return this.f16765a;
    }

    @Override // com.zoloz.webcontainer.r.a
    public WebView c() {
        return this.f16766b;
    }

    @Override // com.zoloz.webcontainer.r.a
    public void d() {
        b().finish();
    }

    @Override // com.zoloz.webcontainer.r.a
    public String e() {
        return this.f16768d;
    }

    @Override // com.zoloz.webcontainer.r.a
    public String f() {
        return this.f16770f;
    }

    @Override // com.zoloz.webcontainer.r.a
    public void g() {
        com.zoloz.webcontainer.d dVar = this.f16771g;
        if (dVar != null) {
            dVar.onBackChange(false);
        }
    }

    public void h() {
        this.f16767c.a();
    }

    public boolean i() {
        if (TextUtils.isEmpty(this.f16770f)) {
            return false;
        }
        this.f16769e++;
        if (this.f16769e == 2) {
            return false;
        }
        this.f16767c.a(this);
        return true;
    }

    public void j() {
        String str = (String) q.i().g().get(m.f16743a);
        if (str != null) {
            this.f16767c.a(this, str);
        }
    }

    @Override // com.zoloz.webcontainer.r.a
    public void a(String str) {
        com.zoloz.webcontainer.d dVar = this.f16771g;
        if (dVar != null) {
            dVar.onTitleChange(str);
        }
    }

    public void b(String str) {
        this.f16770f = str;
    }

    public void a(com.zoloz.webcontainer.d dVar) {
        this.f16771g = dVar;
    }
}
