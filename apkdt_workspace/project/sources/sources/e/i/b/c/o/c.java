package e.i.b.c.o;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* compiled from: ExpandableWidgetHelper.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private final View f17918a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f17919b = false;

    /* renamed from: c, reason: collision with root package name */
    @IdRes
    private int f17920c = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public c(b bVar) {
        this.f17918a = (View) bVar;
    }

    private void d() {
        ViewParent parent = this.f17918a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.f17918a);
        }
    }

    public boolean a(boolean z) {
        if (this.f17919b == z) {
            return false;
        }
        this.f17919b = z;
        d();
        return true;
    }

    public boolean b() {
        return this.f17919b;
    }

    public Bundle c() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f17919b);
        bundle.putInt("expandedComponentIdHint", this.f17920c);
        return bundle;
    }

    public void a(Bundle bundle) {
        this.f17919b = bundle.getBoolean("expanded", false);
        this.f17920c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f17919b) {
            d();
        }
    }

    public void a(@IdRes int i2) {
        this.f17920c = i2;
    }

    @IdRes
    public int a() {
        return this.f17920c;
    }
}
