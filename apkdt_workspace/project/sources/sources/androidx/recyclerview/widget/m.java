package androidx.recyclerview.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: SimpleItemAnimator.java */
/* loaded from: classes.dex */
public abstract class m extends RecyclerView.ItemAnimator {

    /* renamed from: g, reason: collision with root package name */
    boolean f2802g = true;

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean a(@NonNull RecyclerView.z zVar) {
        return !this.f2802g || zVar.n();
    }

    public abstract boolean a(RecyclerView.z zVar, int i2, int i3, int i4, int i5);

    public abstract boolean a(RecyclerView.z zVar, RecyclerView.z zVar2, int i2, int i3, int i4, int i5);

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean b(@NonNull RecyclerView.z zVar, @NonNull RecyclerView.ItemAnimator.c cVar, @Nullable RecyclerView.ItemAnimator.c cVar2) {
        int i2 = cVar.f2557a;
        int i3 = cVar.f2558b;
        View view = zVar.f2640a;
        int left = cVar2 == null ? view.getLeft() : cVar2.f2557a;
        int top = cVar2 == null ? view.getTop() : cVar2.f2558b;
        if (!zVar.p() && (i2 != left || i3 != top)) {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            return a(zVar, i2, i3, left, top);
        }
        return g(zVar);
    }

    public void c(RecyclerView.z zVar, boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean c(@NonNull RecyclerView.z zVar, @NonNull RecyclerView.ItemAnimator.c cVar, @NonNull RecyclerView.ItemAnimator.c cVar2) {
        if (cVar.f2557a == cVar2.f2557a && cVar.f2558b == cVar2.f2558b) {
            j(zVar);
            return false;
        }
        return a(zVar, cVar.f2557a, cVar.f2558b, cVar2.f2557a, cVar2.f2558b);
    }

    public void d(RecyclerView.z zVar, boolean z) {
    }

    public abstract boolean f(RecyclerView.z zVar);

    public abstract boolean g(RecyclerView.z zVar);

    public final void h(RecyclerView.z zVar) {
        n(zVar);
        b(zVar);
    }

    public final void i(RecyclerView.z zVar) {
        o(zVar);
    }

    public final void j(RecyclerView.z zVar) {
        p(zVar);
        b(zVar);
    }

    public final void k(RecyclerView.z zVar) {
        q(zVar);
    }

    public final void l(RecyclerView.z zVar) {
        r(zVar);
        b(zVar);
    }

    public final void m(RecyclerView.z zVar) {
        s(zVar);
    }

    public void n(RecyclerView.z zVar) {
    }

    public void o(RecyclerView.z zVar) {
    }

    public void p(RecyclerView.z zVar) {
    }

    public void q(RecyclerView.z zVar) {
    }

    public void r(RecyclerView.z zVar) {
    }

    public void s(RecyclerView.z zVar) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean a(@NonNull RecyclerView.z zVar, @Nullable RecyclerView.ItemAnimator.c cVar, @NonNull RecyclerView.ItemAnimator.c cVar2) {
        if (cVar != null && (cVar.f2557a != cVar2.f2557a || cVar.f2558b != cVar2.f2558b)) {
            return a(zVar, cVar.f2557a, cVar.f2558b, cVar2.f2557a, cVar2.f2558b);
        }
        return f(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean a(@NonNull RecyclerView.z zVar, @NonNull RecyclerView.z zVar2, @NonNull RecyclerView.ItemAnimator.c cVar, @NonNull RecyclerView.ItemAnimator.c cVar2) {
        int i2;
        int i3;
        int i4 = cVar.f2557a;
        int i5 = cVar.f2558b;
        if (zVar2.x()) {
            int i6 = cVar.f2557a;
            i3 = cVar.f2558b;
            i2 = i6;
        } else {
            i2 = cVar2.f2557a;
            i3 = cVar2.f2558b;
        }
        return a(zVar, zVar2, i4, i5, i2, i3);
    }

    public final void b(RecyclerView.z zVar, boolean z) {
        d(zVar, z);
    }

    public final void a(RecyclerView.z zVar, boolean z) {
        c(zVar, z);
        b(zVar);
    }
}
