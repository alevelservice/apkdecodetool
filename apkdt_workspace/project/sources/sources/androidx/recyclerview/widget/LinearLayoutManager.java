package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.m implements f, RecyclerView.v.b {
    private boolean C;
    private c t;
    j u;
    private boolean v;
    int s = 1;
    private boolean w = false;
    boolean x = false;
    private boolean y = false;
    private boolean z = true;
    int A = -1;
    int B = e.b.b.a.a.a.c.ALL_INT;
    SavedState D = null;
    final a E = new a();
    private final b F = new b();
    private int G = 2;

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        int f2519e;

        /* renamed from: f, reason: collision with root package name */
        int f2520f;

        /* renamed from: g, reason: collision with root package name */
        boolean f2521g;

        /* loaded from: classes.dex */
        static class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        public SavedState() {
        }

        boolean a() {
            return this.f2519e >= 0;
        }

        void b() {
            this.f2519e = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f2519e);
            parcel.writeInt(this.f2520f);
            parcel.writeInt(this.f2521g ? 1 : 0);
        }

        SavedState(Parcel parcel) {
            this.f2519e = parcel.readInt();
            this.f2520f = parcel.readInt();
            this.f2521g = parcel.readInt() == 1;
        }

        public SavedState(SavedState savedState) {
            this.f2519e = savedState.f2519e;
            this.f2520f = savedState.f2520f;
            this.f2521g = savedState.f2521g;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public int f2527a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f2528b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2529c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f2530d;

        protected b() {
        }

        void a() {
            this.f2527a = 0;
            this.f2528b = false;
            this.f2529c = false;
            this.f2530d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: b, reason: collision with root package name */
        int f2532b;

        /* renamed from: c, reason: collision with root package name */
        int f2533c;

        /* renamed from: d, reason: collision with root package name */
        int f2534d;

        /* renamed from: e, reason: collision with root package name */
        int f2535e;

        /* renamed from: f, reason: collision with root package name */
        int f2536f;

        /* renamed from: g, reason: collision with root package name */
        int f2537g;

        /* renamed from: i, reason: collision with root package name */
        boolean f2539i;

        /* renamed from: j, reason: collision with root package name */
        int f2540j;

        /* renamed from: l, reason: collision with root package name */
        boolean f2542l;

        /* renamed from: a, reason: collision with root package name */
        boolean f2531a = true;

        /* renamed from: h, reason: collision with root package name */
        int f2538h = 0;

        /* renamed from: k, reason: collision with root package name */
        List<RecyclerView.z> f2541k = null;

        c() {
        }

        private View b() {
            int size = this.f2541k.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = this.f2541k.get(i2).f2640a;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.c() && this.f2534d == layoutParams.a()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(RecyclerView.w wVar) {
            int i2 = this.f2534d;
            return i2 >= 0 && i2 < wVar.a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public View a(RecyclerView.s sVar) {
            if (this.f2541k != null) {
                return b();
            }
            View d2 = sVar.d(this.f2534d);
            this.f2534d += this.f2535e;
            return d2;
        }

        public void a() {
            a((View) null);
        }

        public void a(View view) {
            View b2 = b(view);
            if (b2 == null) {
                this.f2534d = -1;
            } else {
                this.f2534d = ((RecyclerView.LayoutParams) b2.getLayoutParams()).a();
            }
        }

        public View b(View view) {
            int a2;
            int size = this.f2541k.size();
            View view2 = null;
            int i2 = Integer.MAX_VALUE;
            for (int i3 = 0; i3 < size; i3++) {
                View view3 = this.f2541k.get(i3).f2640a;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.c() && (a2 = (layoutParams.a() - this.f2534d) * this.f2535e) >= 0 && a2 < i2) {
                    view2 = view3;
                    if (a2 == 0) {
                        break;
                    }
                    i2 = a2;
                }
            }
            return view2;
        }
    }

    public LinearLayoutManager(Context context, int i2, boolean z) {
        k(i2);
        a(z);
    }

    private View K() {
        return d(this.x ? 0 : e() - 1);
    }

    private View L() {
        return d(this.x ? e() - 1 : 0);
    }

    private void M() {
        if (this.s != 1 && I()) {
            this.x = !this.w;
        } else {
            this.x = this.w;
        }
    }

    private void f(int i2, int i3) {
        this.t.f2533c = this.u.b() - i3;
        this.t.f2535e = this.x ? -1 : 1;
        c cVar = this.t;
        cVar.f2534d = i2;
        cVar.f2536f = 1;
        cVar.f2532b = i3;
        cVar.f2537g = e.b.b.a.a.a.c.ALL_INT;
    }

    private int j(RecyclerView.w wVar) {
        if (e() == 0) {
            return 0;
        }
        E();
        return l.a(wVar, this.u, b(!this.z, true), a(!this.z, true), this, this.z, this.x);
    }

    private View l(RecyclerView.s sVar, RecyclerView.w wVar) {
        return this.x ? g(sVar, wVar) : i(sVar, wVar);
    }

    private View m(RecyclerView.s sVar, RecyclerView.w wVar) {
        return this.x ? i(sVar, wVar) : g(sVar, wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    boolean A() {
        return (i() == 1073741824 || r() == 1073741824 || !s()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean C() {
        return this.D == null && this.v == this.y;
    }

    c D() {
        return new c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E() {
        if (this.t == null) {
            this.t = D();
        }
    }

    public int F() {
        View a2 = a(0, e(), false, true);
        if (a2 == null) {
            return -1;
        }
        return l(a2);
    }

    public int G() {
        View a2 = a(e() - 1, -1, false, true);
        if (a2 == null) {
            return -1;
        }
        return l(a2);
    }

    public int H() {
        return this.s;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean I() {
        return j() == 1;
    }

    boolean J() {
        return this.u.d() == 0 && this.u.a() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (e() > 0) {
            accessibilityEvent.setFromIndex(F());
            accessibilityEvent.setToIndex(G());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RecyclerView.s sVar, RecyclerView.w wVar, a aVar, int i2) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void b(RecyclerView recyclerView, RecyclerView.s sVar) {
        super.b(recyclerView, sVar);
        if (this.C) {
            b(sVar);
            sVar.a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.LayoutParams c() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int d(RecyclerView.w wVar) {
        return i(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void e(RecyclerView.s sVar, RecyclerView.w wVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int a2;
        int i7;
        View c2;
        int d2;
        int i8;
        int i9 = -1;
        if ((this.D != null || this.A != -1) && wVar.a() == 0) {
            b(sVar);
            return;
        }
        SavedState savedState = this.D;
        if (savedState != null && savedState.a()) {
            this.A = this.D.f2519e;
        }
        E();
        this.t.f2531a = false;
        M();
        View g2 = g();
        if (this.E.f2526e && this.A == -1 && this.D == null) {
            if (g2 != null && (this.u.d(g2) >= this.u.b() || this.u.a(g2) <= this.u.f())) {
                this.E.b(g2, l(g2));
            }
        } else {
            this.E.b();
            a aVar = this.E;
            aVar.f2525d = this.x ^ this.y;
            b(sVar, wVar, aVar);
            this.E.f2526e = true;
        }
        int h2 = h(wVar);
        if (this.t.f2540j >= 0) {
            i2 = h2;
            h2 = 0;
        } else {
            i2 = 0;
        }
        int f2 = h2 + this.u.f();
        int c3 = i2 + this.u.c();
        if (wVar.d() && (i7 = this.A) != -1 && this.B != Integer.MIN_VALUE && (c2 = c(i7)) != null) {
            if (this.x) {
                i8 = this.u.b() - this.u.a(c2);
                d2 = this.B;
            } else {
                d2 = this.u.d(c2) - this.u.f();
                i8 = this.B;
            }
            int i10 = i8 - d2;
            if (i10 > 0) {
                f2 += i10;
            } else {
                c3 -= i10;
            }
        }
        if (!this.E.f2525d ? !this.x : this.x) {
            i9 = 1;
        }
        a(sVar, wVar, this.E, i9);
        a(sVar);
        this.t.f2542l = J();
        this.t.f2539i = wVar.d();
        a aVar2 = this.E;
        if (aVar2.f2525d) {
            b(aVar2);
            c cVar = this.t;
            cVar.f2538h = f2;
            a(sVar, cVar, wVar, false);
            c cVar2 = this.t;
            i4 = cVar2.f2532b;
            int i11 = cVar2.f2534d;
            int i12 = cVar2.f2533c;
            if (i12 > 0) {
                c3 += i12;
            }
            a(this.E);
            c cVar3 = this.t;
            cVar3.f2538h = c3;
            cVar3.f2534d += cVar3.f2535e;
            a(sVar, cVar3, wVar, false);
            c cVar4 = this.t;
            i3 = cVar4.f2532b;
            int i13 = cVar4.f2533c;
            if (i13 > 0) {
                g(i11, i4);
                c cVar5 = this.t;
                cVar5.f2538h = i13;
                a(sVar, cVar5, wVar, false);
                i4 = this.t.f2532b;
            }
        } else {
            a(aVar2);
            c cVar6 = this.t;
            cVar6.f2538h = c3;
            a(sVar, cVar6, wVar, false);
            c cVar7 = this.t;
            i3 = cVar7.f2532b;
            int i14 = cVar7.f2534d;
            int i15 = cVar7.f2533c;
            if (i15 > 0) {
                f2 += i15;
            }
            b(this.E);
            c cVar8 = this.t;
            cVar8.f2538h = f2;
            cVar8.f2534d += cVar8.f2535e;
            a(sVar, cVar8, wVar, false);
            c cVar9 = this.t;
            i4 = cVar9.f2532b;
            int i16 = cVar9.f2533c;
            if (i16 > 0) {
                f(i14, i3);
                c cVar10 = this.t;
                cVar10.f2538h = i16;
                a(sVar, cVar10, wVar, false);
                i3 = this.t.f2532b;
            }
        }
        if (e() > 0) {
            if (this.x ^ this.y) {
                int a3 = a(i3, sVar, wVar, true);
                i5 = i4 + a3;
                i6 = i3 + a3;
                a2 = b(i5, sVar, wVar, false);
            } else {
                int b2 = b(i4, sVar, wVar, true);
                i5 = i4 + b2;
                i6 = i3 + b2;
                a2 = a(i6, sVar, wVar, false);
            }
            i4 = i5 + a2;
            i3 = i6 + a2;
        }
        b(sVar, wVar, i4, i3);
        if (!wVar.d()) {
            this.u.i();
        } else {
            this.E.b();
        }
        this.v = this.y;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void g(RecyclerView.w wVar) {
        super.g(wVar);
        this.D = null;
        this.A = -1;
        this.B = e.b.b.a.a.a.c.ALL_INT;
        this.E.b();
    }

    protected int h(RecyclerView.w wVar) {
        if (wVar.c()) {
            return this.u.g();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void i(int i2) {
        this.A = i2;
        this.B = e.b.b.a.a.a.c.ALL_INT;
        SavedState savedState = this.D;
        if (savedState != null) {
            savedState.b();
        }
        y();
    }

    public void k(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i2);
        }
        a((String) null);
        if (i2 != this.s || this.u == null) {
            this.u = j.a(this, i2);
            this.E.f2522a = this.u;
            this.s = i2;
            y();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean u() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public Parcelable x() {
        SavedState savedState = this.D;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (e() > 0) {
            E();
            boolean z = this.v ^ this.x;
            savedState2.f2521g = z;
            if (z) {
                View K = K();
                savedState2.f2520f = this.u.b() - this.u.a(K);
                savedState2.f2519e = l(K);
            } else {
                View L = L();
                savedState2.f2519e = l(L);
                savedState2.f2520f = this.u.d(L) - this.u.f();
            }
        } else {
            savedState2.b();
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public View c(int i2) {
        int e2 = e();
        if (e2 == 0) {
            return null;
        }
        int l2 = i2 - l(d(0));
        if (l2 >= 0 && l2 < e2) {
            View d2 = d(l2);
            if (l(d2) == i2) {
                return d2;
            }
        }
        return super.c(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        j f2522a;

        /* renamed from: b, reason: collision with root package name */
        int f2523b;

        /* renamed from: c, reason: collision with root package name */
        int f2524c;

        /* renamed from: d, reason: collision with root package name */
        boolean f2525d;

        /* renamed from: e, reason: collision with root package name */
        boolean f2526e;

        a() {
            b();
        }

        void a() {
            int f2;
            if (this.f2525d) {
                f2 = this.f2522a.b();
            } else {
                f2 = this.f2522a.f();
            }
            this.f2524c = f2;
        }

        void b() {
            this.f2523b = -1;
            this.f2524c = e.b.b.a.a.a.c.ALL_INT;
            this.f2525d = false;
            this.f2526e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f2523b + ", mCoordinate=" + this.f2524c + ", mLayoutFromEnd=" + this.f2525d + ", mValid=" + this.f2526e + '}';
        }

        boolean a(View view, RecyclerView.w wVar) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return !layoutParams.c() && layoutParams.a() >= 0 && layoutParams.a() < wVar.a();
        }

        public void b(View view, int i2) {
            int h2 = this.f2522a.h();
            if (h2 >= 0) {
                a(view, i2);
                return;
            }
            this.f2523b = i2;
            if (this.f2525d) {
                int b2 = (this.f2522a.b() - h2) - this.f2522a.a(view);
                this.f2524c = this.f2522a.b() - b2;
                if (b2 > 0) {
                    int b3 = this.f2524c - this.f2522a.b(view);
                    int f2 = this.f2522a.f();
                    int min = b3 - (f2 + Math.min(this.f2522a.d(view) - f2, 0));
                    if (min < 0) {
                        this.f2524c += Math.min(b2, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int d2 = this.f2522a.d(view);
            int f3 = d2 - this.f2522a.f();
            this.f2524c = d2;
            if (f3 > 0) {
                int b4 = (this.f2522a.b() - Math.min(0, (this.f2522a.b() - h2) - this.f2522a.a(view))) - (d2 + this.f2522a.b(view));
                if (b4 < 0) {
                    this.f2524c -= Math.min(f3, -b4);
                }
            }
        }

        public void a(View view, int i2) {
            if (this.f2525d) {
                this.f2524c = this.f2522a.a(view) + this.f2522a.h();
            } else {
                this.f2524c = this.f2522a.d(view);
            }
            this.f2523b = i2;
        }
    }

    private View h(RecyclerView.s sVar, RecyclerView.w wVar) {
        return e(e() - 1, -1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.D = (SavedState) parcelable;
            y();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean b() {
        return this.s == 1;
    }

    private void g(int i2, int i3) {
        this.t.f2533c = i3 - this.u.f();
        c cVar = this.t;
        cVar.f2534d = i2;
        cVar.f2535e = this.x ? 1 : -1;
        c cVar2 = this.t;
        cVar2.f2536f = -1;
        cVar2.f2532b = i3;
        cVar2.f2537g = e.b.b.a.a.a.c.ALL_INT;
    }

    private int i(RecyclerView.w wVar) {
        if (e() == 0) {
            return 0;
        }
        E();
        return l.a(wVar, this.u, b(!this.z, true), a(!this.z, true), this, this.z);
    }

    public void b(boolean z) {
        a((String) null);
        if (this.y == z) {
            return;
        }
        this.y = z;
        y();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int c(RecyclerView.w wVar) {
        return k(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int f(RecyclerView.w wVar) {
        return k(wVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j(int i2) {
        if (i2 == 1) {
            return (this.s != 1 && I()) ? 1 : -1;
        }
        if (i2 == 2) {
            return (this.s != 1 && I()) ? -1 : 1;
        }
        if (i2 == 17) {
            if (this.s == 0) {
                return -1;
            }
            return e.b.b.a.a.a.c.ALL_INT;
        }
        if (i2 == 33) {
            if (this.s == 1) {
                return -1;
            }
            return e.b.b.a.a.a.c.ALL_INT;
        }
        if (i2 != 66) {
            if (i2 == 130 && this.s == 1) {
                return 1;
            }
            return e.b.b.a.a.a.c.ALL_INT;
        }
        if (this.s == 0) {
            return 1;
        }
        return e.b.b.a.a.a.c.ALL_INT;
    }

    private View f(RecyclerView.s sVar, RecyclerView.w wVar) {
        return e(0, e());
    }

    private int k(RecyclerView.w wVar) {
        if (e() == 0) {
            return 0;
        }
        E();
        return l.b(wVar, this.u, b(!this.z, true), a(!this.z, true), this, this.z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean a() {
        return this.s == 0;
    }

    int c(int i2, RecyclerView.s sVar, RecyclerView.w wVar) {
        if (e() == 0 || i2 == 0) {
            return 0;
        }
        this.t.f2531a = true;
        E();
        int i3 = i2 > 0 ? 1 : -1;
        int abs = Math.abs(i2);
        a(i3, abs, true, wVar);
        c cVar = this.t;
        int a2 = cVar.f2537g + a(sVar, cVar, wVar, false);
        if (a2 < 0) {
            return 0;
        }
        if (abs > a2) {
            i2 = i3 * a2;
        }
        this.u.a(-i2);
        this.t.f2540j = i2;
        return i2;
    }

    public void a(boolean z) {
        a((String) null);
        if (z == this.w) {
            return;
        }
        this.w = z;
        y();
    }

    private void b(RecyclerView.s sVar, RecyclerView.w wVar, int i2, int i3) {
        if (!wVar.e() || e() == 0 || wVar.d() || !C()) {
            return;
        }
        List<RecyclerView.z> f2 = sVar.f();
        int size = f2.size();
        int l2 = l(d(0));
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            RecyclerView.z zVar = f2.get(i6);
            if (!zVar.p()) {
                if (((zVar.i() < l2) != this.x ? (char) 65535 : (char) 1) == 65535) {
                    i4 += this.u.b(zVar.f2640a);
                } else {
                    i5 += this.u.b(zVar.f2640a);
                }
            }
        }
        this.t.f2541k = f2;
        if (i4 > 0) {
            g(l(L()), i2);
            c cVar = this.t;
            cVar.f2538h = i4;
            cVar.f2533c = 0;
            cVar.a();
            a(sVar, this.t, wVar, false);
        }
        if (i5 > 0) {
            f(l(K()), i3);
            c cVar2 = this.t;
            cVar2.f2538h = i5;
            cVar2.f2533c = 0;
            cVar2.a();
            a(sVar, this.t, wVar, false);
        }
        this.t.f2541k = null;
    }

    private View g(RecyclerView.s sVar, RecyclerView.w wVar) {
        return a(sVar, wVar, 0, e(), wVar.a());
    }

    private View i(RecyclerView.s sVar, RecyclerView.w wVar) {
        return a(sVar, wVar, e() - 1, -1, wVar.a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(RecyclerView recyclerView, RecyclerView.w wVar, int i2) {
        h hVar = new h(recyclerView.getContext());
        hVar.c(i2);
        b(hVar);
    }

    private View k(RecyclerView.s sVar, RecyclerView.w wVar) {
        return this.x ? h(sVar, wVar) : f(sVar, wVar);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        RecyclerView.m.d a2 = RecyclerView.m.a(context, attributeSet, i2, i3);
        k(a2.f2586a);
        a(a2.f2588c);
        b(a2.f2589d);
    }

    private View j(RecyclerView.s sVar, RecyclerView.w wVar) {
        return this.x ? f(sVar, wVar) : h(sVar, wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.v.b
    public PointF a(int i2) {
        if (e() == 0) {
            return null;
        }
        int i3 = (i2 < l(d(0))) != this.x ? -1 : 1;
        if (this.s == 0) {
            return new PointF(i3, 0.0f);
        }
        return new PointF(0.0f, i3);
    }

    private boolean a(RecyclerView.s sVar, RecyclerView.w wVar, a aVar) {
        View m;
        int f2;
        if (e() == 0) {
            return false;
        }
        View g2 = g();
        if (g2 != null && aVar.a(g2, wVar)) {
            aVar.b(g2, l(g2));
            return true;
        }
        if (this.v != this.y) {
            return false;
        }
        if (aVar.f2525d) {
            m = l(sVar, wVar);
        } else {
            m = m(sVar, wVar);
        }
        if (m == null) {
            return false;
        }
        aVar.a(m, l(m));
        if (!wVar.d() && C()) {
            if (this.u.d(m) >= this.u.b() || this.u.a(m) < this.u.f()) {
                if (aVar.f2525d) {
                    f2 = this.u.b();
                } else {
                    f2 = this.u.f();
                }
                aVar.f2524c = f2;
            }
        }
        return true;
    }

    private void b(RecyclerView.s sVar, RecyclerView.w wVar, a aVar) {
        if (a(wVar, aVar) || a(sVar, wVar, aVar)) {
            return;
        }
        aVar.a();
        aVar.f2523b = this.y ? wVar.a() - 1 : 0;
    }

    private int b(int i2, RecyclerView.s sVar, RecyclerView.w wVar, boolean z) {
        int f2;
        int f3 = i2 - this.u.f();
        if (f3 <= 0) {
            return 0;
        }
        int i3 = -c(f3, sVar, wVar);
        int i4 = i2 + i3;
        if (!z || (f2 = i4 - this.u.f()) <= 0) {
            return i3;
        }
        this.u.a(-f2);
        return i3 - f2;
    }

    private boolean a(RecyclerView.w wVar, a aVar) {
        int i2;
        int d2;
        if (!wVar.d() && (i2 = this.A) != -1) {
            if (i2 >= 0 && i2 < wVar.a()) {
                aVar.f2523b = this.A;
                SavedState savedState = this.D;
                if (savedState != null && savedState.a()) {
                    aVar.f2525d = this.D.f2521g;
                    if (aVar.f2525d) {
                        aVar.f2524c = this.u.b() - this.D.f2520f;
                    } else {
                        aVar.f2524c = this.u.f() + this.D.f2520f;
                    }
                    return true;
                }
                if (this.B == Integer.MIN_VALUE) {
                    View c2 = c(this.A);
                    if (c2 != null) {
                        if (this.u.b(c2) > this.u.g()) {
                            aVar.a();
                            return true;
                        }
                        if (this.u.d(c2) - this.u.f() < 0) {
                            aVar.f2524c = this.u.f();
                            aVar.f2525d = false;
                            return true;
                        }
                        if (this.u.b() - this.u.a(c2) < 0) {
                            aVar.f2524c = this.u.b();
                            aVar.f2525d = true;
                            return true;
                        }
                        if (aVar.f2525d) {
                            d2 = this.u.a(c2) + this.u.h();
                        } else {
                            d2 = this.u.d(c2);
                        }
                        aVar.f2524c = d2;
                    } else {
                        if (e() > 0) {
                            aVar.f2525d = (this.A < l(d(0))) == this.x;
                        }
                        aVar.a();
                    }
                    return true;
                }
                boolean z = this.x;
                aVar.f2525d = z;
                if (z) {
                    aVar.f2524c = this.u.b() - this.B;
                } else {
                    aVar.f2524c = this.u.f() + this.B;
                }
                return true;
            }
            this.A = -1;
            this.B = e.b.b.a.a.a.c.ALL_INT;
        }
        return false;
    }

    private void b(a aVar) {
        g(aVar.f2523b, aVar.f2524c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int b(int i2, RecyclerView.s sVar, RecyclerView.w wVar) {
        if (this.s == 0) {
            return 0;
        }
        return c(i2, sVar, wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int b(RecyclerView.w wVar) {
        return j(wVar);
    }

    private void b(RecyclerView.s sVar, int i2) {
        if (i2 < 0) {
            return;
        }
        int e2 = e();
        if (!this.x) {
            for (int i3 = 0; i3 < e2; i3++) {
                View d2 = d(i3);
                if (this.u.a(d2) > i2 || this.u.e(d2) > i2) {
                    a(sVar, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = e2 - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View d3 = d(i5);
            if (this.u.a(d3) > i2 || this.u.e(d3) > i2) {
                a(sVar, i4, i5);
                return;
            }
        }
    }

    private View b(boolean z, boolean z2) {
        if (this.x) {
            return a(e() - 1, -1, z, z2);
        }
        return a(0, e(), z, z2);
    }

    private int a(int i2, RecyclerView.s sVar, RecyclerView.w wVar, boolean z) {
        int b2;
        int b3 = this.u.b() - i2;
        if (b3 <= 0) {
            return 0;
        }
        int i3 = -c(-b3, sVar, wVar);
        int i4 = i2 + i3;
        if (!z || (b2 = this.u.b() - i4) <= 0) {
            return i3;
        }
        this.u.a(b2);
        return b2 + i3;
    }

    private void a(a aVar) {
        f(aVar.f2523b, aVar.f2524c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int a(int i2, RecyclerView.s sVar, RecyclerView.w wVar) {
        if (this.s == 1) {
            return 0;
        }
        return c(i2, sVar, wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int a(RecyclerView.w wVar) {
        return i(wVar);
    }

    private void a(int i2, int i3, boolean z, RecyclerView.w wVar) {
        int f2;
        this.t.f2542l = J();
        this.t.f2538h = h(wVar);
        c cVar = this.t;
        cVar.f2536f = i2;
        if (i2 == 1) {
            cVar.f2538h += this.u.c();
            View K = K();
            this.t.f2535e = this.x ? -1 : 1;
            c cVar2 = this.t;
            int l2 = l(K);
            c cVar3 = this.t;
            cVar2.f2534d = l2 + cVar3.f2535e;
            cVar3.f2532b = this.u.a(K);
            f2 = this.u.a(K) - this.u.b();
        } else {
            View L = L();
            this.t.f2538h += this.u.f();
            this.t.f2535e = this.x ? 1 : -1;
            c cVar4 = this.t;
            int l3 = l(L);
            c cVar5 = this.t;
            cVar4.f2534d = l3 + cVar5.f2535e;
            cVar5.f2532b = this.u.d(L);
            f2 = (-this.u.d(L)) + this.u.f();
        }
        c cVar6 = this.t;
        cVar6.f2533c = i3;
        if (z) {
            cVar6.f2533c -= f2;
        }
        this.t.f2537g = f2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int e(RecyclerView.w wVar) {
        return j(wVar);
    }

    View e(int i2, int i3) {
        int i4;
        int i5;
        E();
        if ((i3 > i2 ? (char) 1 : i3 < i2 ? (char) 65535 : (char) 0) == 0) {
            return d(i2);
        }
        if (this.u.d(d(i2)) < this.u.f()) {
            i4 = 16644;
            i5 = 16388;
        } else {
            i4 = 4161;
            i5 = 4097;
        }
        if (this.s == 0) {
            return this.f2576e.a(i2, i3, i4, i5);
        }
        return this.f2577f.a(i2, i3, i4, i5);
    }

    void a(RecyclerView.w wVar, c cVar, RecyclerView.m.c cVar2) {
        int i2 = cVar.f2534d;
        if (i2 < 0 || i2 >= wVar.a()) {
            return;
        }
        cVar2.a(i2, Math.max(0, cVar.f2537g));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(int i2, RecyclerView.m.c cVar) {
        boolean z;
        int i3;
        SavedState savedState = this.D;
        if (savedState != null && savedState.a()) {
            SavedState savedState2 = this.D;
            z = savedState2.f2521g;
            i3 = savedState2.f2519e;
        } else {
            M();
            z = this.x;
            i3 = this.A;
            if (i3 == -1) {
                i3 = z ? i2 - 1 : 0;
            }
        }
        int i4 = z ? -1 : 1;
        int i5 = i3;
        for (int i6 = 0; i6 < this.G && i5 >= 0 && i5 < i2; i6++) {
            cVar.a(i5, 0);
            i5 += i4;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(int i2, int i3, RecyclerView.w wVar, RecyclerView.m.c cVar) {
        if (this.s != 0) {
            i2 = i3;
        }
        if (e() == 0 || i2 == 0) {
            return;
        }
        E();
        a(i2 > 0 ? 1 : -1, Math.abs(i2), true, wVar);
        a(wVar, this.t, cVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(String str) {
        if (this.D == null) {
            super.a(str);
        }
    }

    private void a(RecyclerView.s sVar, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        if (i3 <= i2) {
            while (i2 > i3) {
                a(i2, sVar);
                i2--;
            }
        } else {
            for (int i4 = i3 - 1; i4 >= i2; i4--) {
                a(i4, sVar);
            }
        }
    }

    private void a(RecyclerView.s sVar, int i2) {
        int e2 = e();
        if (i2 < 0) {
            return;
        }
        int a2 = this.u.a() - i2;
        if (this.x) {
            for (int i3 = 0; i3 < e2; i3++) {
                View d2 = d(i3);
                if (this.u.d(d2) < a2 || this.u.f(d2) < a2) {
                    a(sVar, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = e2 - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View d3 = d(i5);
            if (this.u.d(d3) < a2 || this.u.f(d3) < a2) {
                a(sVar, i4, i5);
                return;
            }
        }
    }

    private void a(RecyclerView.s sVar, c cVar) {
        if (!cVar.f2531a || cVar.f2542l) {
            return;
        }
        if (cVar.f2536f == -1) {
            a(sVar, cVar.f2537g);
        } else {
            b(sVar, cVar.f2537g);
        }
    }

    int a(RecyclerView.s sVar, c cVar, RecyclerView.w wVar, boolean z) {
        int i2 = cVar.f2533c;
        int i3 = cVar.f2537g;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                cVar.f2537g = i3 + i2;
            }
            a(sVar, cVar);
        }
        int i4 = cVar.f2533c + cVar.f2538h;
        b bVar = this.F;
        while (true) {
            if ((!cVar.f2542l && i4 <= 0) || !cVar.a(wVar)) {
                break;
            }
            bVar.a();
            a(sVar, wVar, cVar, bVar);
            if (!bVar.f2528b) {
                cVar.f2532b += bVar.f2527a * cVar.f2536f;
                if (!bVar.f2529c || this.t.f2541k != null || !wVar.d()) {
                    int i5 = cVar.f2533c;
                    int i6 = bVar.f2527a;
                    cVar.f2533c = i5 - i6;
                    i4 -= i6;
                }
                int i7 = cVar.f2537g;
                if (i7 != Integer.MIN_VALUE) {
                    cVar.f2537g = i7 + bVar.f2527a;
                    int i8 = cVar.f2533c;
                    if (i8 < 0) {
                        cVar.f2537g += i8;
                    }
                    a(sVar, cVar);
                }
                if (z && bVar.f2530d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - cVar.f2533c;
    }

    void a(RecyclerView.s sVar, RecyclerView.w wVar, c cVar, b bVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int c2;
        View a2 = cVar.a(sVar);
        if (a2 == null) {
            bVar.f2528b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) a2.getLayoutParams();
        if (cVar.f2541k == null) {
            if (this.x == (cVar.f2536f == -1)) {
                b(a2);
            } else {
                b(a2, 0);
            }
        } else {
            if (this.x == (cVar.f2536f == -1)) {
                a(a2);
            } else {
                a(a2, 0);
            }
        }
        a(a2, 0, 0);
        bVar.f2527a = this.u.b(a2);
        if (this.s == 1) {
            if (I()) {
                c2 = q() - o();
                i5 = c2 - this.u.c(a2);
            } else {
                i5 = n();
                c2 = this.u.c(a2) + i5;
            }
            if (cVar.f2536f == -1) {
                int i6 = cVar.f2532b;
                i4 = i6;
                i3 = c2;
                i2 = i6 - bVar.f2527a;
            } else {
                int i7 = cVar.f2532b;
                i2 = i7;
                i3 = c2;
                i4 = bVar.f2527a + i7;
            }
        } else {
            int p = p();
            int c3 = this.u.c(a2) + p;
            if (cVar.f2536f == -1) {
                int i8 = cVar.f2532b;
                i3 = i8;
                i2 = p;
                i4 = c3;
                i5 = i8 - bVar.f2527a;
            } else {
                int i9 = cVar.f2532b;
                i2 = p;
                i3 = bVar.f2527a + i9;
                i4 = c3;
                i5 = i9;
            }
        }
        a(a2, i5, i2, i3, i4);
        if (layoutParams.c() || layoutParams.b()) {
            bVar.f2529c = true;
        }
        bVar.f2530d = a2.hasFocusable();
    }

    private View a(boolean z, boolean z2) {
        if (this.x) {
            return a(0, e(), z, z2);
        }
        return a(e() - 1, -1, z, z2);
    }

    View a(RecyclerView.s sVar, RecyclerView.w wVar, int i2, int i3, int i4) {
        E();
        int f2 = this.u.f();
        int b2 = this.u.b();
        int i5 = i3 > i2 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i2 != i3) {
            View d2 = d(i2);
            int l2 = l(d2);
            if (l2 >= 0 && l2 < i4) {
                if (((RecyclerView.LayoutParams) d2.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = d2;
                    }
                } else {
                    if (this.u.d(d2) < b2 && this.u.a(d2) >= f2) {
                        return d2;
                    }
                    if (view == null) {
                        view = d2;
                    }
                }
            }
            i2 += i5;
        }
        return view != null ? view : view2;
    }

    View a(int i2, int i3, boolean z, boolean z2) {
        E();
        int i4 = z ? 24579 : 320;
        int i5 = z2 ? 320 : 0;
        if (this.s == 0) {
            return this.f2576e.a(i2, i3, i4, i5);
        }
        return this.f2577f.a(i2, i3, i4, i5);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public View a(View view, int i2, RecyclerView.s sVar, RecyclerView.w wVar) {
        int j2;
        View j3;
        View K;
        M();
        if (e() == 0 || (j2 = j(i2)) == Integer.MIN_VALUE) {
            return null;
        }
        E();
        E();
        a(j2, (int) (this.u.g() * 0.33333334f), false, wVar);
        c cVar = this.t;
        cVar.f2537g = e.b.b.a.a.a.c.ALL_INT;
        cVar.f2531a = false;
        a(sVar, cVar, wVar, true);
        if (j2 == -1) {
            j3 = k(sVar, wVar);
        } else {
            j3 = j(sVar, wVar);
        }
        if (j2 == -1) {
            K = L();
        } else {
            K = K();
        }
        if (!K.hasFocusable()) {
            return j3;
        }
        if (j3 == null) {
            return null;
        }
        return K;
    }
}
