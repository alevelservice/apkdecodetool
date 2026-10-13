package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;

/* compiled from: ViewOffsetHelper.java */
/* loaded from: classes.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    private final View f13629a;

    /* renamed from: b, reason: collision with root package name */
    private int f13630b;

    /* renamed from: c, reason: collision with root package name */
    private int f13631c;

    /* renamed from: d, reason: collision with root package name */
    private int f13632d;

    /* renamed from: e, reason: collision with root package name */
    private int f13633e;

    public a(View view) {
        this.f13629a = view;
    }

    private void d() {
        View view = this.f13629a;
        ViewCompat.e(view, this.f13632d - (view.getTop() - this.f13630b));
        View view2 = this.f13629a;
        ViewCompat.d(view2, this.f13633e - (view2.getLeft() - this.f13631c));
    }

    public boolean a(int i2) {
        if (this.f13633e == i2) {
            return false;
        }
        this.f13633e = i2;
        d();
        return true;
    }

    public boolean b(int i2) {
        if (this.f13632d == i2) {
            return false;
        }
        this.f13632d = i2;
        d();
        return true;
    }

    public void c() {
        this.f13630b = this.f13629a.getTop();
        this.f13631c = this.f13629a.getLeft();
        d();
    }

    public int a() {
        return this.f13630b;
    }

    public int b() {
        return this.f13632d;
    }
}
