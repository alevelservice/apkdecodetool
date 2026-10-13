package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes.dex */
class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a, reason: collision with root package name */
    private a f13626a;

    /* renamed from: b, reason: collision with root package name */
    private int f13627b;

    /* renamed from: c, reason: collision with root package name */
    private int f13628c;

    public ViewOffsetBehavior() {
        this.f13627b = 0;
        this.f13628c = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i2) {
        b(coordinatorLayout, (CoordinatorLayout) v, i2);
        if (this.f13626a == null) {
            this.f13626a = new a(v);
        }
        this.f13626a.c();
        int i3 = this.f13627b;
        if (i3 != 0) {
            this.f13626a.b(i3);
            this.f13627b = 0;
        }
        int i4 = this.f13628c;
        if (i4 == 0) {
            return true;
        }
        this.f13626a.a(i4);
        this.f13628c = 0;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(CoordinatorLayout coordinatorLayout, V v, int i2) {
        coordinatorLayout.onLayoutChild(v, i2);
    }

    public int b() {
        a aVar = this.f13626a;
        if (aVar != null) {
            return aVar.b();
        }
        return 0;
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13627b = 0;
        this.f13628c = 0;
    }

    public boolean a(int i2) {
        a aVar = this.f13626a;
        if (aVar != null) {
            return aVar.b(i2);
        }
        this.f13627b = i2;
        return false;
    }
}
