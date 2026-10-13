package com.google.firebase.crashlytics.d.j;

import i.b0;
import i.r;

/* compiled from: HttpResponse.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private int f14618a;

    /* renamed from: b, reason: collision with root package name */
    private String f14619b;

    /* renamed from: c, reason: collision with root package name */
    private r f14620c;

    d(int i2, String str, r rVar) {
        this.f14618a = i2;
        this.f14619b = str;
        this.f14620c = rVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d a(b0 b0Var) {
        return new d(b0Var.k(), b0Var.i() == null ? null : b0Var.i().m(), b0Var.m());
    }

    public int b() {
        return this.f14618a;
    }

    public String a() {
        return this.f14619b;
    }

    public String a(String str) {
        return this.f14620c.a(str);
    }
}
