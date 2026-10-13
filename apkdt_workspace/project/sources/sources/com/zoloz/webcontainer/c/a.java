package com.zoloz.webcontainer.c;

import android.app.Activity;
import com.alibaba.fastjson.JSONObject;

/* compiled from: BridgeData.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private String f16698a;

    /* renamed from: b, reason: collision with root package name */
    private JSONObject f16699b;

    /* renamed from: c, reason: collision with root package name */
    private com.zoloz.webcontainer.r.a f16700c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f16701d;

    /* renamed from: e, reason: collision with root package name */
    private Activity f16702e;

    /* renamed from: f, reason: collision with root package name */
    private String f16703f;

    public void a(String str) {
        this.f16698a = str;
    }

    public JSONObject b() {
        return this.f16699b;
    }

    public void b(String str) {
    }

    public com.zoloz.webcontainer.r.a c() {
        return this.f16700c;
    }

    public boolean d() {
        return this.f16701d;
    }

    public Activity e() {
        return this.f16702e;
    }

    public String f() {
        return this.f16703f;
    }

    public String toString() {
        return "action = " + this.f16698a + "; param = " + this.f16699b.toJSONString() + " \n target = " + this.f16700c;
    }

    public String a() {
        return this.f16698a;
    }

    public void c(String str) {
        this.f16703f = str;
    }

    public void a(JSONObject jSONObject) {
        this.f16699b = jSONObject;
    }

    public void a(com.zoloz.webcontainer.r.a aVar) {
        this.f16700c = aVar;
    }

    public void a(boolean z) {
        this.f16701d = z;
    }

    public void a(Activity activity) {
        this.f16702e = activity;
    }
}
