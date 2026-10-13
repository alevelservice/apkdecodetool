package com.zoloz.webcontainer.n.a;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alibaba.fastjson.JSONObject;
import com.zoloz.builder.plugin.HummerFoundationLite;
import com.zoloz.webcontainer.h;
import e.a.a.a.m;

/* compiled from: H5LoadingPlugin.java */
/* loaded from: classes2.dex */
public class b extends com.zoloz.webcontainer.n.b {

    /* renamed from: a, reason: collision with root package name */
    private Runnable f16744a;

    /* renamed from: b, reason: collision with root package name */
    private Handler f16745b = new Handler();

    /* renamed from: c, reason: collision with root package name */
    private a f16746c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: H5LoadingPlugin.java */
    /* loaded from: classes2.dex */
    public class a extends AlertDialog {

        /* renamed from: e, reason: collision with root package name */
        private ProgressBar f16747e;

        /* renamed from: f, reason: collision with root package name */
        private TextView f16748f;

        /* renamed from: g, reason: collision with root package name */
        private String f16749g;

        protected a(b bVar, Context context) {
            this(bVar, context, h.f16720a);
        }

        public void a(String str) {
            this.f16749g = str;
            if (this.f16748f != null) {
                a();
            }
        }

        @Override // android.app.AlertDialog, android.app.Dialog
        protected void onCreate(Bundle bundle) {
            View inflate = LayoutInflater.from(getContext()).inflate(com.zoloz.webcontainer.f.f16718b, (ViewGroup) null);
            this.f16747e = (ProgressBar) inflate.findViewById(com.zoloz.webcontainer.e.f16711d);
            this.f16748f = (TextView) inflate.findViewById(com.zoloz.webcontainer.e.f16710c);
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.alpha = 0.99f;
            getWindow().setAttributes(attributes);
            setView(inflate);
            this.f16747e.setVisibility(0);
            setCancelable(true);
            setOnCancelListener(null);
            this.f16747e.setIndeterminate(false);
            setCanceledOnTouchOutside(false);
            a();
            super.onCreate(bundle);
        }

        public a(b bVar, Context context, int i2) {
            super(context, i2);
        }

        private void a() {
            this.f16748f.setText(this.f16749g);
            if (TextUtils.isEmpty(this.f16749g)) {
                this.f16748f.setVisibility(8);
            } else {
                this.f16748f.setVisibility(0);
            }
        }
    }

    public b() {
        m.a().a(this);
    }

    @Override // com.zoloz.webcontainer.n.d
    public String getJSApiName() {
        return "MultiLoading";
    }

    @Override // com.zoloz.webcontainer.n.d
    public boolean handleBridgeEvent(com.zoloz.webcontainer.c.a aVar, com.zoloz.webcontainer.a.b bVar) {
        if (aVar == null) {
            return false;
        }
        com.zoloz.webcontainer.r.a c2 = aVar.c();
        if (aVar.b() == null) {
            return true;
        }
        a(aVar.b(), c2);
        return true;
    }

    public void a(JSONObject jSONObject, com.zoloz.webcontainer.r.a aVar) {
        if (jSONObject == null) {
            com.zoloz.webcontainer.b.c("H5LoadingPlugin", "showLoading NULL param");
            return;
        }
        String a2 = com.zoloz.webcontainer.p.b.a(jSONObject, "text");
        int b2 = com.zoloz.webcontainer.p.b.b(jSONObject, "delay");
        com.zoloz.webcontainer.b.a("H5LoadingPlugin", "showLoading [title] " + a2 + " [delay] " + b2);
        Activity b3 = aVar.b();
        if (b3 instanceof Activity) {
            a aVar2 = this.f16746c;
            if (aVar2 == null) {
                this.f16746c = new a(this, b3);
            } else if (aVar2.isShowing()) {
                this.f16746c.dismiss();
            } else {
                this.f16746c = new a(this, b3);
            }
            a();
            if (!TextUtils.isEmpty(a2) && a2.length() > 20) {
                a2 = a2.substring(0, 20);
            }
            this.f16746c.a(a2);
            this.f16744a = new c(this, b3);
            this.f16745b.postDelayed(this.f16744a, b2);
        }
    }

    public void a() {
        Runnable runnable = this.f16744a;
        if (runnable != null) {
            this.f16745b.removeCallbacks(runnable);
            this.f16744a = null;
        }
        a aVar = this.f16746c;
        if (aVar == null || !aVar.isShowing()) {
            return;
        }
        com.zoloz.webcontainer.b.a("H5LoadingPlugin", HummerFoundationLite.HUMMER_FOUNDATION_HIDE_LOADING);
        this.f16746c.dismiss();
    }
}
