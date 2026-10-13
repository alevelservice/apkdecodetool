package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: OrientationHelper.java */
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    protected final RecyclerView.m f2796a;

    /* renamed from: b, reason: collision with root package name */
    private int f2797b;

    /* renamed from: c, reason: collision with root package name */
    final Rect f2798c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OrientationHelper.java */
    /* loaded from: classes.dex */
    public static class a extends j {
        a(RecyclerView.m mVar) {
            super(mVar, null);
        }

        @Override // androidx.recyclerview.widget.j
        public int a() {
            return this.f2796a.q();
        }

        @Override // androidx.recyclerview.widget.j
        public int b() {
            return this.f2796a.q() - this.f2796a.o();
        }

        @Override // androidx.recyclerview.widget.j
        public int c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f2796a.g(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.j
        public int d(View view) {
            return this.f2796a.f(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
        }

        @Override // androidx.recyclerview.widget.j
        public int e(View view) {
            this.f2796a.a(view, true, this.f2798c);
            return this.f2798c.right;
        }

        @Override // androidx.recyclerview.widget.j
        public int f() {
            return this.f2796a.n();
        }

        @Override // androidx.recyclerview.widget.j
        public int g() {
            return (this.f2796a.q() - this.f2796a.n()) - this.f2796a.o();
        }

        @Override // androidx.recyclerview.widget.j
        public void a(int i2) {
            this.f2796a.e(i2);
        }

        @Override // androidx.recyclerview.widget.j
        public int b(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f2796a.h(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.j
        public int f(View view) {
            this.f2796a.a(view, true, this.f2798c);
            return this.f2798c.left;
        }

        @Override // androidx.recyclerview.widget.j
        public int a(View view) {
            return this.f2796a.i(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
        }

        @Override // androidx.recyclerview.widget.j
        public int c() {
            return this.f2796a.o();
        }

        @Override // androidx.recyclerview.widget.j
        public int d() {
            return this.f2796a.r();
        }

        @Override // androidx.recyclerview.widget.j
        public int e() {
            return this.f2796a.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OrientationHelper.java */
    /* loaded from: classes.dex */
    public static class b extends j {
        b(RecyclerView.m mVar) {
            super(mVar, null);
        }

        @Override // androidx.recyclerview.widget.j
        public int a() {
            return this.f2796a.h();
        }

        @Override // androidx.recyclerview.widget.j
        public int b() {
            return this.f2796a.h() - this.f2796a.m();
        }

        @Override // androidx.recyclerview.widget.j
        public int c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f2796a.h(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.j
        public int d(View view) {
            return this.f2796a.j(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
        }

        @Override // androidx.recyclerview.widget.j
        public int e(View view) {
            this.f2796a.a(view, true, this.f2798c);
            return this.f2798c.bottom;
        }

        @Override // androidx.recyclerview.widget.j
        public int f() {
            return this.f2796a.p();
        }

        @Override // androidx.recyclerview.widget.j
        public int g() {
            return (this.f2796a.h() - this.f2796a.p()) - this.f2796a.m();
        }

        @Override // androidx.recyclerview.widget.j
        public void a(int i2) {
            this.f2796a.f(i2);
        }

        @Override // androidx.recyclerview.widget.j
        public int b(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f2796a.g(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.j
        public int f(View view) {
            this.f2796a.a(view, true, this.f2798c);
            return this.f2798c.top;
        }

        @Override // androidx.recyclerview.widget.j
        public int a(View view) {
            return this.f2796a.e(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.j
        public int c() {
            return this.f2796a.m();
        }

        @Override // androidx.recyclerview.widget.j
        public int d() {
            return this.f2796a.i();
        }

        @Override // androidx.recyclerview.widget.j
        public int e() {
            return this.f2796a.r();
        }
    }

    /* synthetic */ j(RecyclerView.m mVar, a aVar) {
        this(mVar);
    }

    public static j a(RecyclerView.m mVar, int i2) {
        if (i2 == 0) {
            return a(mVar);
        }
        if (i2 == 1) {
            return b(mVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static j b(RecyclerView.m mVar) {
        return new b(mVar);
    }

    public abstract int a();

    public abstract int a(View view);

    public abstract void a(int i2);

    public abstract int b();

    public abstract int b(View view);

    public abstract int c();

    public abstract int c(View view);

    public abstract int d();

    public abstract int d(View view);

    public abstract int e();

    public abstract int e(View view);

    public abstract int f();

    public abstract int f(View view);

    public abstract int g();

    public int h() {
        if (Integer.MIN_VALUE == this.f2797b) {
            return 0;
        }
        return g() - this.f2797b;
    }

    public void i() {
        this.f2797b = g();
    }

    private j(RecyclerView.m mVar) {
        this.f2797b = e.b.b.a.a.a.c.ALL_INT;
        this.f2798c = new Rect();
        this.f2796a = mVar;
    }

    public static j a(RecyclerView.m mVar) {
        return new a(mVar);
    }
}
