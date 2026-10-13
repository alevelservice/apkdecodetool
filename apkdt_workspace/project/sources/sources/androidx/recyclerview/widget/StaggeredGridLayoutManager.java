package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.f0.d;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.m implements RecyclerView.v.b {
    private BitSet B;
    private boolean G;
    private boolean H;
    private SavedState I;
    private int J;
    private int[] O;
    c[] t;

    @NonNull
    j u;

    @NonNull
    j v;
    private int w;
    private int x;

    @NonNull
    private final g y;
    private int s = -1;
    boolean z = false;
    boolean A = false;
    int C = -1;
    int D = e.b.b.a.a.a.c.ALL_INT;
    LazySpanLookup E = new LazySpanLookup();
    private int F = 2;
    private final Rect K = new Rect();
    private final b L = new b();
    private boolean M = false;
    private boolean N = true;
    private final Runnable P = new a();

    /* loaded from: classes.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: e, reason: collision with root package name */
        c f2652e;

        /* renamed from: f, reason: collision with root package name */
        boolean f2653f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public final int e() {
            c cVar = this.f2652e;
            if (cVar == null) {
                return -1;
            }
            return cVar.f2680e;
        }

        public boolean f() {
            return this.f2653f;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        int f2660e;

        /* renamed from: f, reason: collision with root package name */
        int f2661f;

        /* renamed from: g, reason: collision with root package name */
        int f2662g;

        /* renamed from: h, reason: collision with root package name */
        int[] f2663h;

        /* renamed from: i, reason: collision with root package name */
        int f2664i;

        /* renamed from: j, reason: collision with root package name */
        int[] f2665j;

        /* renamed from: k, reason: collision with root package name */
        List<LazySpanLookup.FullSpanItem> f2666k;

        /* renamed from: l, reason: collision with root package name */
        boolean f2667l;
        boolean m;
        boolean n;

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

        void a() {
            this.f2663h = null;
            this.f2662g = 0;
            this.f2660e = -1;
            this.f2661f = -1;
        }

        void b() {
            this.f2663h = null;
            this.f2662g = 0;
            this.f2664i = 0;
            this.f2665j = null;
            this.f2666k = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f2660e);
            parcel.writeInt(this.f2661f);
            parcel.writeInt(this.f2662g);
            if (this.f2662g > 0) {
                parcel.writeIntArray(this.f2663h);
            }
            parcel.writeInt(this.f2664i);
            if (this.f2664i > 0) {
                parcel.writeIntArray(this.f2665j);
            }
            parcel.writeInt(this.f2667l ? 1 : 0);
            parcel.writeInt(this.m ? 1 : 0);
            parcel.writeInt(this.n ? 1 : 0);
            parcel.writeList(this.f2666k);
        }

        SavedState(Parcel parcel) {
            this.f2660e = parcel.readInt();
            this.f2661f = parcel.readInt();
            this.f2662g = parcel.readInt();
            int i2 = this.f2662g;
            if (i2 > 0) {
                this.f2663h = new int[i2];
                parcel.readIntArray(this.f2663h);
            }
            this.f2664i = parcel.readInt();
            int i3 = this.f2664i;
            if (i3 > 0) {
                this.f2665j = new int[i3];
                parcel.readIntArray(this.f2665j);
            }
            this.f2667l = parcel.readInt() == 1;
            this.m = parcel.readInt() == 1;
            this.n = parcel.readInt() == 1;
            this.f2666k = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f2662g = savedState.f2662g;
            this.f2660e = savedState.f2660e;
            this.f2661f = savedState.f2661f;
            this.f2663h = savedState.f2663h;
            this.f2664i = savedState.f2664i;
            this.f2665j = savedState.f2665j;
            this.f2667l = savedState.f2667l;
            this.m = savedState.m;
            this.n = savedState.n;
            this.f2666k = savedState.f2666k;
        }
    }

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.F();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c {

        /* renamed from: a, reason: collision with root package name */
        ArrayList<View> f2676a = new ArrayList<>();

        /* renamed from: b, reason: collision with root package name */
        int f2677b = e.b.b.a.a.a.c.ALL_INT;

        /* renamed from: c, reason: collision with root package name */
        int f2678c = e.b.b.a.a.a.c.ALL_INT;

        /* renamed from: d, reason: collision with root package name */
        int f2679d = 0;

        /* renamed from: e, reason: collision with root package name */
        final int f2680e;

        c(int i2) {
            this.f2680e = i2;
        }

        int a(int i2) {
            int i3 = this.f2678c;
            if (i3 != Integer.MIN_VALUE) {
                return i3;
            }
            if (this.f2676a.size() == 0) {
                return i2;
            }
            a();
            return this.f2678c;
        }

        int b(int i2) {
            int i3 = this.f2677b;
            if (i3 != Integer.MIN_VALUE) {
                return i3;
            }
            if (this.f2676a.size() == 0) {
                return i2;
            }
            b();
            return this.f2677b;
        }

        void c(View view) {
            LayoutParams b2 = b(view);
            b2.f2652e = this;
            this.f2676a.add(0, view);
            this.f2677b = e.b.b.a.a.a.c.ALL_INT;
            if (this.f2676a.size() == 1) {
                this.f2678c = e.b.b.a.a.a.c.ALL_INT;
            }
            if (b2.c() || b2.b()) {
                this.f2679d += StaggeredGridLayoutManager.this.u.b(view);
            }
        }

        void d(int i2) {
            this.f2677b = i2;
            this.f2678c = i2;
        }

        public int e() {
            if (StaggeredGridLayoutManager.this.z) {
                return a(0, this.f2676a.size(), true);
            }
            return a(this.f2676a.size() - 1, -1, true);
        }

        public int f() {
            return this.f2679d;
        }

        int g() {
            int i2 = this.f2678c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            a();
            return this.f2678c;
        }

        int h() {
            int i2 = this.f2677b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            b();
            return this.f2677b;
        }

        void i() {
            this.f2677b = e.b.b.a.a.a.c.ALL_INT;
            this.f2678c = e.b.b.a.a.a.c.ALL_INT;
        }

        void j() {
            int size = this.f2676a.size();
            View remove = this.f2676a.remove(size - 1);
            LayoutParams b2 = b(remove);
            b2.f2652e = null;
            if (b2.c() || b2.b()) {
                this.f2679d -= StaggeredGridLayoutManager.this.u.b(remove);
            }
            if (size == 1) {
                this.f2677b = e.b.b.a.a.a.c.ALL_INT;
            }
            this.f2678c = e.b.b.a.a.a.c.ALL_INT;
        }

        void k() {
            View remove = this.f2676a.remove(0);
            LayoutParams b2 = b(remove);
            b2.f2652e = null;
            if (this.f2676a.size() == 0) {
                this.f2678c = e.b.b.a.a.a.c.ALL_INT;
            }
            if (b2.c() || b2.b()) {
                this.f2679d -= StaggeredGridLayoutManager.this.u.b(remove);
            }
            this.f2677b = e.b.b.a.a.a.c.ALL_INT;
        }

        public int d() {
            if (StaggeredGridLayoutManager.this.z) {
                return a(this.f2676a.size() - 1, -1, true);
            }
            return a(0, this.f2676a.size(), true);
        }

        void a() {
            LazySpanLookup.FullSpanItem c2;
            ArrayList<View> arrayList = this.f2676a;
            View view = arrayList.get(arrayList.size() - 1);
            LayoutParams b2 = b(view);
            this.f2678c = StaggeredGridLayoutManager.this.u.a(view);
            if (b2.f2653f && (c2 = StaggeredGridLayoutManager.this.E.c(b2.a())) != null && c2.f2657f == 1) {
                this.f2678c += c2.a(this.f2680e);
            }
        }

        void b() {
            LazySpanLookup.FullSpanItem c2;
            View view = this.f2676a.get(0);
            LayoutParams b2 = b(view);
            this.f2677b = StaggeredGridLayoutManager.this.u.d(view);
            if (b2.f2653f && (c2 = StaggeredGridLayoutManager.this.E.c(b2.a())) != null && c2.f2657f == -1) {
                this.f2677b -= c2.a(this.f2680e);
            }
        }

        void c() {
            this.f2676a.clear();
            i();
            this.f2679d = 0;
        }

        void c(int i2) {
            int i3 = this.f2677b;
            if (i3 != Integer.MIN_VALUE) {
                this.f2677b = i3 + i2;
            }
            int i4 = this.f2678c;
            if (i4 != Integer.MIN_VALUE) {
                this.f2678c = i4 + i2;
            }
        }

        void a(View view) {
            LayoutParams b2 = b(view);
            b2.f2652e = this;
            this.f2676a.add(view);
            this.f2678c = e.b.b.a.a.a.c.ALL_INT;
            if (this.f2676a.size() == 1) {
                this.f2677b = e.b.b.a.a.a.c.ALL_INT;
            }
            if (b2.c() || b2.b()) {
                this.f2679d += StaggeredGridLayoutManager.this.u.b(view);
            }
        }

        LayoutParams b(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        void a(boolean z, int i2) {
            int b2;
            if (z) {
                b2 = a(e.b.b.a.a.a.c.ALL_INT);
            } else {
                b2 = b(e.b.b.a.a.a.c.ALL_INT);
            }
            c();
            if (b2 == Integer.MIN_VALUE) {
                return;
            }
            if (!z || b2 >= StaggeredGridLayoutManager.this.u.b()) {
                if (z || b2 <= StaggeredGridLayoutManager.this.u.f()) {
                    if (i2 != Integer.MIN_VALUE) {
                        b2 += i2;
                    }
                    this.f2678c = b2;
                    this.f2677b = b2;
                }
            }
        }

        int a(int i2, int i3, boolean z, boolean z2, boolean z3) {
            int f2 = StaggeredGridLayoutManager.this.u.f();
            int b2 = StaggeredGridLayoutManager.this.u.b();
            int i4 = i3 > i2 ? 1 : -1;
            while (i2 != i3) {
                View view = this.f2676a.get(i2);
                int d2 = StaggeredGridLayoutManager.this.u.d(view);
                int a2 = StaggeredGridLayoutManager.this.u.a(view);
                boolean z4 = false;
                boolean z5 = !z3 ? d2 >= b2 : d2 > b2;
                if (!z3 ? a2 > f2 : a2 >= f2) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (z && z2) {
                        if (d2 >= f2 && a2 <= b2) {
                            return StaggeredGridLayoutManager.this.l(view);
                        }
                    } else {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.l(view);
                        }
                        if (d2 < f2 || a2 > b2) {
                            return StaggeredGridLayoutManager.this.l(view);
                        }
                    }
                }
                i2 += i4;
            }
            return -1;
        }

        int a(int i2, int i3, boolean z) {
            return a(i2, i3, false, false, z);
        }

        public View a(int i2, int i3) {
            View view = null;
            if (i3 == -1) {
                int size = this.f2676a.size();
                int i4 = 0;
                while (i4 < size) {
                    View view2 = this.f2676a.get(i4);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.z && staggeredGridLayoutManager.l(view2) <= i2) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.z && staggeredGridLayoutManager2.l(view2) >= i2) || !view2.hasFocusable()) {
                        break;
                    }
                    i4++;
                    view = view2;
                }
            } else {
                int size2 = this.f2676a.size() - 1;
                while (size2 >= 0) {
                    View view3 = this.f2676a.get(size2);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.z && staggeredGridLayoutManager3.l(view3) >= i2) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.z && staggeredGridLayoutManager4.l(view3) <= i2) || !view3.hasFocusable()) {
                        break;
                    }
                    size2--;
                    view = view3;
                }
            }
            return view;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        RecyclerView.m.d a2 = RecyclerView.m.a(context, attributeSet, i2, i3);
        j(a2.f2586a);
        k(a2.f2587b);
        c(a2.f2588c);
        this.y = new g();
        M();
    }

    private void M() {
        this.u = j.a(this, this.w);
        this.v = j.a(this, 1 - this.w);
    }

    private void N() {
        if (this.v.d() == 1073741824) {
            return;
        }
        int e2 = e();
        float f2 = 0.0f;
        for (int i2 = 0; i2 < e2; i2++) {
            View d2 = d(i2);
            float b2 = this.v.b(d2);
            if (b2 >= f2) {
                if (((LayoutParams) d2.getLayoutParams()).f()) {
                    b2 = (b2 * 1.0f) / this.s;
                }
                f2 = Math.max(f2, b2);
            }
        }
        int i3 = this.x;
        int round = Math.round(f2 * this.s);
        if (this.v.d() == Integer.MIN_VALUE) {
            round = Math.min(round, this.v.g());
        }
        l(round);
        if (this.x == i3) {
            return;
        }
        for (int i4 = 0; i4 < e2; i4++) {
            View d3 = d(i4);
            LayoutParams layoutParams = (LayoutParams) d3.getLayoutParams();
            if (!layoutParams.f2653f) {
                if (L() && this.w == 1) {
                    int i5 = this.s;
                    int i6 = layoutParams.f2652e.f2680e;
                    d3.offsetLeftAndRight(((-((i5 - 1) - i6)) * this.x) - ((-((i5 - 1) - i6)) * i3));
                } else {
                    int i7 = layoutParams.f2652e.f2680e;
                    int i8 = this.x * i7;
                    int i9 = i7 * i3;
                    if (this.w == 1) {
                        d3.offsetLeftAndRight(i8 - i9);
                    } else {
                        d3.offsetTopAndBottom(i8 - i9);
                    }
                }
            }
        }
    }

    private void O() {
        if (this.w != 1 && L()) {
            this.A = !this.z;
        } else {
            this.A = this.z;
        }
    }

    private boolean a(c cVar) {
        if (this.A) {
            if (cVar.g() < this.u.b()) {
                ArrayList<View> arrayList = cVar.f2676a;
                return !cVar.b(arrayList.get(arrayList.size() - 1)).f2653f;
            }
        } else if (cVar.h() > this.u.f()) {
            return !cVar.b(cVar.f2676a.get(0)).f2653f;
        }
        return false;
    }

    private int h(RecyclerView.w wVar) {
        if (e() == 0) {
            return 0;
        }
        return l.a(wVar, this.u, b(!this.N), a(!this.N), this, this.N);
    }

    private int i(RecyclerView.w wVar) {
        if (e() == 0) {
            return 0;
        }
        return l.a(wVar, this.u, b(!this.N), a(!this.N), this, this.N, this.A);
    }

    private int m(int i2) {
        if (e() == 0) {
            return this.A ? 1 : -1;
        }
        return (i2 < H()) != this.A ? -1 : 1;
    }

    private int n(int i2) {
        if (i2 == 1) {
            return (this.w != 1 && L()) ? 1 : -1;
        }
        if (i2 == 2) {
            return (this.w != 1 && L()) ? -1 : 1;
        }
        if (i2 == 17) {
            if (this.w == 0) {
                return -1;
            }
            return e.b.b.a.a.a.c.ALL_INT;
        }
        if (i2 == 33) {
            if (this.w == 1) {
                return -1;
            }
            return e.b.b.a.a.a.c.ALL_INT;
        }
        if (i2 != 66) {
            if (i2 == 130 && this.w == 1) {
                return 1;
            }
            return e.b.b.a.a.a.c.ALL_INT;
        }
        if (this.w == 0) {
            return 1;
        }
        return e.b.b.a.a.a.c.ALL_INT;
    }

    private LazySpanLookup.FullSpanItem o(int i2) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f2658g = new int[this.s];
        for (int i3 = 0; i3 < this.s; i3++) {
            fullSpanItem.f2658g[i3] = i2 - this.t[i3].a(i2);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem p(int i2) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f2658g = new int[this.s];
        for (int i3 = 0; i3 < this.s; i3++) {
            fullSpanItem.f2658g[i3] = this.t[i3].b(i2) - i2;
        }
        return fullSpanItem;
    }

    private void q(View view) {
        for (int i2 = this.s - 1; i2 >= 0; i2--) {
            this.t[i2].c(view);
        }
    }

    private int r(int i2) {
        for (int e2 = e() - 1; e2 >= 0; e2--) {
            int l2 = l(d(e2));
            if (l2 >= 0 && l2 < i2) {
                return l2;
            }
        }
        return 0;
    }

    private int s(int i2) {
        int a2 = this.t[0].a(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int a3 = this.t[i3].a(i2);
            if (a3 > a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    private int t(int i2) {
        int b2 = this.t[0].b(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int b3 = this.t[i3].b(i2);
            if (b3 > b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    private int v(int i2) {
        int b2 = this.t[0].b(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int b3 = this.t[i3].b(i2);
            if (b3 < b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    private boolean w(int i2) {
        if (this.w == 0) {
            return (i2 == -1) != this.A;
        }
        return ((i2 == -1) == this.A) == L();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean C() {
        return this.I == null;
    }

    boolean D() {
        int a2 = this.t[0].a(e.b.b.a.a.a.c.ALL_INT);
        for (int i2 = 1; i2 < this.s; i2++) {
            if (this.t[i2].a(e.b.b.a.a.a.c.ALL_INT) != a2) {
                return false;
            }
        }
        return true;
    }

    boolean E() {
        int b2 = this.t[0].b(e.b.b.a.a.a.c.ALL_INT);
        for (int i2 = 1; i2 < this.s; i2++) {
            if (this.t[i2].b(e.b.b.a.a.a.c.ALL_INT) != b2) {
                return false;
            }
        }
        return true;
    }

    boolean F() {
        int H;
        int I;
        if (e() == 0 || this.F == 0 || !t()) {
            return false;
        }
        if (this.A) {
            H = I();
            I = H();
        } else {
            H = H();
            I = I();
        }
        if (H == 0 && J() != null) {
            this.E.a();
            z();
            y();
            return true;
        }
        if (!this.M) {
            return false;
        }
        int i2 = this.A ? -1 : 1;
        int i3 = I + 1;
        LazySpanLookup.FullSpanItem a2 = this.E.a(H, i3, i2, true);
        if (a2 == null) {
            this.M = false;
            this.E.b(i3);
            return false;
        }
        LazySpanLookup.FullSpanItem a3 = this.E.a(H, a2.f2656e, i2 * (-1), true);
        if (a3 == null) {
            this.E.b(a2.f2656e);
        } else {
            this.E.b(a3.f2656e + 1);
        }
        z();
        y();
        return true;
    }

    int G() {
        View a2 = this.A ? a(true) : b(true);
        if (a2 == null) {
            return -1;
        }
        return l(a2);
    }

    int H() {
        if (e() == 0) {
            return 0;
        }
        return l(d(0));
    }

    int I() {
        int e2 = e();
        if (e2 == 0) {
            return 0;
        }
        return l(d(e2 - 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
    
        if (r10 == r11) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0088, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0086, code lost:
    
        if (r10 == r11) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.view.View J() {
        /*
            r12 = this;
            int r0 = r12.e()
            r1 = 1
            int r0 = r0 - r1
            java.util.BitSet r2 = new java.util.BitSet
            int r3 = r12.s
            r2.<init>(r3)
            int r3 = r12.s
            r4 = 0
            r2.set(r4, r3, r1)
            int r3 = r12.w
            r5 = -1
            if (r3 != r1) goto L20
            boolean r3 = r12.L()
            if (r3 == 0) goto L20
            r3 = 1
            goto L21
        L20:
            r3 = -1
        L21:
            boolean r6 = r12.A
            if (r6 == 0) goto L27
            r6 = -1
            goto L2b
        L27:
            int r0 = r0 + 1
            r6 = r0
            r0 = 0
        L2b:
            if (r0 >= r6) goto L2e
            r5 = 1
        L2e:
            if (r0 == r6) goto Lab
            android.view.View r7 = r12.d(r0)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LayoutParams r8 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) r8
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f2652e
            int r9 = r9.f2680e
            boolean r9 = r2.get(r9)
            if (r9 == 0) goto L54
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f2652e
            boolean r9 = r12.a(r9)
            if (r9 == 0) goto L4d
            return r7
        L4d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f2652e
            int r9 = r9.f2680e
            r2.clear(r9)
        L54:
            boolean r9 = r8.f2653f
            if (r9 == 0) goto L59
            goto La9
        L59:
            int r9 = r0 + r5
            if (r9 == r6) goto La9
            android.view.View r9 = r12.d(r9)
            boolean r10 = r12.A
            if (r10 == 0) goto L77
            androidx.recyclerview.widget.j r10 = r12.u
            int r10 = r10.a(r7)
            androidx.recyclerview.widget.j r11 = r12.u
            int r11 = r11.a(r9)
            if (r10 >= r11) goto L74
            return r7
        L74:
            if (r10 != r11) goto L8a
            goto L88
        L77:
            androidx.recyclerview.widget.j r10 = r12.u
            int r10 = r10.d(r7)
            androidx.recyclerview.widget.j r11 = r12.u
            int r11 = r11.d(r9)
            if (r10 <= r11) goto L86
            return r7
        L86:
            if (r10 != r11) goto L8a
        L88:
            r10 = 1
            goto L8b
        L8a:
            r10 = 0
        L8b:
            if (r10 == 0) goto La9
            android.view.ViewGroup$LayoutParams r9 = r9.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LayoutParams r9 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r8 = r8.f2652e
            int r8 = r8.f2680e
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r9.f2652e
            int r9 = r9.f2680e
            int r8 = r8 - r9
            if (r8 >= 0) goto La0
            r8 = 1
            goto La1
        La0:
            r8 = 0
        La1:
            if (r3 >= 0) goto La5
            r9 = 1
            goto La6
        La5:
            r9 = 0
        La6:
            if (r8 == r9) goto La9
            return r7
        La9:
            int r0 = r0 + r5
            goto L2e
        Lab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.J():android.view.View");
    }

    public void K() {
        this.E.a();
        y();
    }

    boolean L() {
        return j() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void b(RecyclerView recyclerView, RecyclerView.s sVar) {
        super.b(recyclerView, sVar);
        a(this.P);
        for (int i2 = 0; i2 < this.s; i2++) {
            this.t[i2].c();
        }
        recyclerView.requestLayout();
    }

    public void c(boolean z) {
        a((String) null);
        SavedState savedState = this.I;
        if (savedState != null && savedState.f2667l != z) {
            savedState.f2667l = z;
        }
        this.z = z;
        y();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int d(RecyclerView.w wVar) {
        return h(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void e(RecyclerView.s sVar, RecyclerView.w wVar) {
        c(sVar, wVar, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int f(RecyclerView.w wVar) {
        return j(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void g(int i2) {
        if (i2 == 0) {
            F();
        }
    }

    public void j(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        a((String) null);
        if (i2 == this.w) {
            return;
        }
        this.w = i2;
        j jVar = this.u;
        this.u = this.v;
        this.v = jVar;
        y();
    }

    public void k(int i2) {
        a((String) null);
        if (i2 != this.s) {
            K();
            this.s = i2;
            this.B = new BitSet(this.s);
            this.t = new c[this.s];
            for (int i3 = 0; i3 < this.s; i3++) {
                this.t[i3] = new c(i3);
            }
            y();
        }
    }

    void l(int i2) {
        this.x = i2 / this.s;
        this.J = View.MeasureSpec.makeMeasureSpec(i2, this.v.d());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean u() {
        return this.F != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public Parcelable x() {
        int b2;
        int f2;
        int[] iArr;
        SavedState savedState = this.I;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.f2667l = this.z;
        savedState2.m = this.G;
        savedState2.n = this.H;
        LazySpanLookup lazySpanLookup = this.E;
        if (lazySpanLookup != null && (iArr = lazySpanLookup.f2654a) != null) {
            savedState2.f2665j = iArr;
            savedState2.f2664i = savedState2.f2665j.length;
            savedState2.f2666k = lazySpanLookup.f2655b;
        } else {
            savedState2.f2664i = 0;
        }
        if (e() > 0) {
            savedState2.f2660e = this.G ? I() : H();
            savedState2.f2661f = G();
            int i2 = this.s;
            savedState2.f2662g = i2;
            savedState2.f2663h = new int[i2];
            for (int i3 = 0; i3 < this.s; i3++) {
                if (this.G) {
                    b2 = this.t[i3].a(e.b.b.a.a.a.c.ALL_INT);
                    if (b2 != Integer.MIN_VALUE) {
                        f2 = this.u.b();
                        b2 -= f2;
                        savedState2.f2663h[i3] = b2;
                    } else {
                        savedState2.f2663h[i3] = b2;
                    }
                } else {
                    b2 = this.t[i3].b(e.b.b.a.a.a.c.ALL_INT);
                    if (b2 != Integer.MIN_VALUE) {
                        f2 = this.u.f();
                        b2 -= f2;
                        savedState2.f2663h[i3] = b2;
                    } else {
                        savedState2.f2663h[i3] = b2;
                    }
                }
            }
        } else {
            savedState2.f2660e = -1;
            savedState2.f2661f = -1;
            savedState2.f2662g = 0;
        }
        return savedState2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class LazySpanLookup {

        /* renamed from: a, reason: collision with root package name */
        int[] f2654a;

        /* renamed from: b, reason: collision with root package name */
        List<FullSpanItem> f2655b;

        LazySpanLookup() {
        }

        private void c(int i2, int i3) {
            List<FullSpanItem> list = this.f2655b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f2655b.get(size);
                int i4 = fullSpanItem.f2656e;
                if (i4 >= i2) {
                    fullSpanItem.f2656e = i4 + i3;
                }
            }
        }

        private int g(int i2) {
            if (this.f2655b == null) {
                return -1;
            }
            FullSpanItem c2 = c(i2);
            if (c2 != null) {
                this.f2655b.remove(c2);
            }
            int size = this.f2655b.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    i3 = -1;
                    break;
                }
                if (this.f2655b.get(i3).f2656e >= i2) {
                    break;
                }
                i3++;
            }
            if (i3 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f2655b.get(i3);
            this.f2655b.remove(i3);
            return fullSpanItem.f2656e;
        }

        void a(int i2, c cVar) {
            a(i2);
            this.f2654a[i2] = cVar.f2680e;
        }

        int b(int i2) {
            List<FullSpanItem> list = this.f2655b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f2655b.get(size).f2656e >= i2) {
                        this.f2655b.remove(size);
                    }
                }
            }
            return e(i2);
        }

        int d(int i2) {
            int[] iArr = this.f2654a;
            if (iArr == null || i2 >= iArr.length) {
                return -1;
            }
            return iArr[i2];
        }

        int e(int i2) {
            int[] iArr = this.f2654a;
            if (iArr == null || i2 >= iArr.length) {
                return -1;
            }
            int g2 = g(i2);
            if (g2 == -1) {
                int[] iArr2 = this.f2654a;
                Arrays.fill(iArr2, i2, iArr2.length, -1);
                return this.f2654a.length;
            }
            int i3 = g2 + 1;
            Arrays.fill(this.f2654a, i2, i3, -1);
            return i3;
        }

        int f(int i2) {
            int length = this.f2654a.length;
            while (length <= i2) {
                length *= 2;
            }
            return length;
        }

        private void d(int i2, int i3) {
            List<FullSpanItem> list = this.f2655b;
            if (list == null) {
                return;
            }
            int i4 = i2 + i3;
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f2655b.get(size);
                int i5 = fullSpanItem.f2656e;
                if (i5 >= i2) {
                    if (i5 < i4) {
                        this.f2655b.remove(size);
                    } else {
                        fullSpanItem.f2656e = i5 - i3;
                    }
                }
            }
        }

        void a(int i2) {
            int[] iArr = this.f2654a;
            if (iArr == null) {
                this.f2654a = new int[Math.max(i2, 10) + 1];
                Arrays.fill(this.f2654a, -1);
            } else if (i2 >= iArr.length) {
                this.f2654a = new int[f(i2)];
                System.arraycopy(iArr, 0, this.f2654a, 0, iArr.length);
                int[] iArr2 = this.f2654a;
                Arrays.fill(iArr2, iArr.length, iArr2.length, -1);
            }
        }

        public FullSpanItem c(int i2) {
            List<FullSpanItem> list = this.f2655b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f2655b.get(size);
                if (fullSpanItem.f2656e == i2) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new a();

            /* renamed from: e, reason: collision with root package name */
            int f2656e;

            /* renamed from: f, reason: collision with root package name */
            int f2657f;

            /* renamed from: g, reason: collision with root package name */
            int[] f2658g;

            /* renamed from: h, reason: collision with root package name */
            boolean f2659h;

            /* loaded from: classes.dex */
            static class a implements Parcelable.Creator<FullSpanItem> {
                a() {
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public FullSpanItem[] newArray(int i2) {
                    return new FullSpanItem[i2];
                }
            }

            FullSpanItem(Parcel parcel) {
                this.f2656e = parcel.readInt();
                this.f2657f = parcel.readInt();
                this.f2659h = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    this.f2658g = new int[readInt];
                    parcel.readIntArray(this.f2658g);
                }
            }

            int a(int i2) {
                int[] iArr = this.f2658g;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i2];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f2656e + ", mGapDir=" + this.f2657f + ", mHasUnwantedGapAfter=" + this.f2659h + ", mGapPerSpan=" + Arrays.toString(this.f2658g) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.f2656e);
                parcel.writeInt(this.f2657f);
                parcel.writeInt(this.f2659h ? 1 : 0);
                int[] iArr = this.f2658g;
                if (iArr != null && iArr.length > 0) {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f2658g);
                } else {
                    parcel.writeInt(0);
                }
            }

            FullSpanItem() {
            }
        }

        void b(int i2, int i3) {
            int[] iArr = this.f2654a;
            if (iArr == null || i2 >= iArr.length) {
                return;
            }
            int i4 = i2 + i3;
            a(i4);
            int[] iArr2 = this.f2654a;
            System.arraycopy(iArr2, i4, iArr2, i2, (iArr2.length - i2) - i3);
            int[] iArr3 = this.f2654a;
            Arrays.fill(iArr3, iArr3.length - i3, iArr3.length, -1);
            d(i2, i3);
        }

        void a() {
            int[] iArr = this.f2654a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f2655b = null;
        }

        void a(int i2, int i3) {
            int[] iArr = this.f2654a;
            if (iArr == null || i2 >= iArr.length) {
                return;
            }
            int i4 = i2 + i3;
            a(i4);
            int[] iArr2 = this.f2654a;
            System.arraycopy(iArr2, i2, iArr2, i4, (iArr2.length - i2) - i3);
            Arrays.fill(this.f2654a, i2, i4, -1);
            c(i2, i3);
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.f2655b == null) {
                this.f2655b = new ArrayList();
            }
            int size = this.f2655b.size();
            for (int i2 = 0; i2 < size; i2++) {
                FullSpanItem fullSpanItem2 = this.f2655b.get(i2);
                if (fullSpanItem2.f2656e == fullSpanItem.f2656e) {
                    this.f2655b.remove(i2);
                }
                if (fullSpanItem2.f2656e >= fullSpanItem.f2656e) {
                    this.f2655b.add(i2, fullSpanItem);
                    return;
                }
            }
            this.f2655b.add(fullSpanItem);
        }

        public FullSpanItem a(int i2, int i3, int i4, boolean z) {
            List<FullSpanItem> list = this.f2655b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i5 = 0; i5 < size; i5++) {
                FullSpanItem fullSpanItem = this.f2655b.get(i5);
                int i6 = fullSpanItem.f2656e;
                if (i6 >= i3) {
                    return null;
                }
                if (i6 >= i2 && (i4 == 0 || fullSpanItem.f2657f == i4 || (z && fullSpanItem.f2659h))) {
                    return fullSpanItem;
                }
            }
            return null;
        }
    }

    private int u(int i2) {
        int a2 = this.t[0].a(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int a3 = this.t[i3].a(i2);
            if (a3 < a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void d(RecyclerView recyclerView) {
        this.E.a();
        y();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int e(RecyclerView.w wVar) {
        return i(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void f(int i2) {
        super.f(i2);
        for (int i3 = 0; i3 < this.s; i3++) {
            this.t[i3].c(i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void g(RecyclerView.w wVar) {
        super.g(wVar);
        this.C = -1;
        this.D = e.b.b.a.a.a.c.ALL_INT;
        this.I = null;
        this.L.b();
    }

    private int q(int i2) {
        int e2 = e();
        for (int i3 = 0; i3 < e2; i3++) {
            int l2 = l(d(i3));
            if (l2 >= 0 && l2 < i2) {
                return l2;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void e(int i2) {
        super.e(i2);
        for (int i3 = 0; i3 < this.s; i3++) {
            this.t[i3].c(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a, reason: collision with root package name */
        int f2669a;

        /* renamed from: b, reason: collision with root package name */
        int f2670b;

        /* renamed from: c, reason: collision with root package name */
        boolean f2671c;

        /* renamed from: d, reason: collision with root package name */
        boolean f2672d;

        /* renamed from: e, reason: collision with root package name */
        boolean f2673e;

        /* renamed from: f, reason: collision with root package name */
        int[] f2674f;

        b() {
            b();
        }

        void a(c[] cVarArr) {
            int length = cVarArr.length;
            int[] iArr = this.f2674f;
            if (iArr == null || iArr.length < length) {
                this.f2674f = new int[StaggeredGridLayoutManager.this.t.length];
            }
            for (int i2 = 0; i2 < length; i2++) {
                this.f2674f[i2] = cVarArr[i2].b(e.b.b.a.a.a.c.ALL_INT);
            }
        }

        void b() {
            this.f2669a = -1;
            this.f2670b = e.b.b.a.a.a.c.ALL_INT;
            this.f2671c = false;
            this.f2672d = false;
            this.f2673e = false;
            int[] iArr = this.f2674f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        void a() {
            this.f2670b = this.f2671c ? StaggeredGridLayoutManager.this.u.b() : StaggeredGridLayoutManager.this.u.f();
        }

        void a(int i2) {
            if (this.f2671c) {
                this.f2670b = StaggeredGridLayoutManager.this.u.b() - i2;
            } else {
                this.f2670b = StaggeredGridLayoutManager.this.u.f() + i2;
            }
        }
    }

    private void p(View view) {
        for (int i2 = this.s - 1; i2 >= 0; i2--) {
            this.t[i2].a(view);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0157, code lost:
    
        if (F() != false) goto L90;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(androidx.recyclerview.widget.RecyclerView.s r9, androidx.recyclerview.widget.RecyclerView.w r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.c(androidx.recyclerview.widget.RecyclerView$s, androidx.recyclerview.widget.RecyclerView$w, boolean):void");
    }

    private void e(int i2, int i3) {
        for (int i4 = 0; i4 < this.s; i4++) {
            if (!this.t[i4].f2676a.isEmpty()) {
                a(this.t[i4], i2, i3);
            }
        }
    }

    void b(RecyclerView.w wVar, b bVar) {
        if (a(wVar, bVar) || c(wVar, bVar)) {
            return;
        }
        bVar.a();
        bVar.f2669a = 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void i(int i2) {
        SavedState savedState = this.I;
        if (savedState != null && savedState.f2660e != i2) {
            savedState.a();
        }
        this.C = i2;
        this.D = e.b.b.a.a.a.c.ALL_INT;
        y();
    }

    private int j(RecyclerView.w wVar) {
        if (e() == 0) {
            return 0;
        }
        return l.b(wVar, this.u, b(!this.N), a(!this.N), this, this.N);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(String str) {
        if (this.I == null) {
            super.a(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int b(RecyclerView.w wVar) {
        return i(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int b(RecyclerView.s sVar, RecyclerView.w wVar) {
        if (this.w == 0) {
            return this.s;
        }
        return super.b(sVar, wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(Rect rect, int i2, int i3) {
        int a2;
        int a3;
        int n = n() + o();
        int p = p() + m();
        if (this.w == 1) {
            a3 = RecyclerView.m.a(i3, rect.height() + p, k());
            a2 = RecyclerView.m.a(i2, (this.x * this.s) + n, l());
        } else {
            a2 = RecyclerView.m.a(i2, rect.width() + n, l());
            a3 = RecyclerView.m.a(i3, (this.x * this.s) + p, k());
        }
        c(a2, a3);
    }

    View b(boolean z) {
        int f2 = this.u.f();
        int b2 = this.u.b();
        int e2 = e();
        View view = null;
        for (int i2 = 0; i2 < e2; i2++) {
            View d2 = d(i2);
            int d3 = this.u.d(d2);
            if (this.u.a(d2) > f2 && d3 < b2) {
                if (d3 >= f2 || !z) {
                    return d2;
                }
                if (view == null) {
                    view = d2;
                }
            }
        }
        return view;
    }

    private void b(RecyclerView.s sVar, RecyclerView.w wVar, boolean z) {
        int f2;
        int v = v(Integer.MAX_VALUE);
        if (v != Integer.MAX_VALUE && (f2 = v - this.u.f()) > 0) {
            int c2 = f2 - c(f2, sVar, wVar);
            if (!z || c2 <= 0) {
                return;
            }
            this.u.a(-c2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(int r5, androidx.recyclerview.widget.RecyclerView.w r6) {
        /*
            r4 = this;
            androidx.recyclerview.widget.g r0 = r4.y
            r1 = 0
            r0.f2783b = r1
            r0.f2784c = r5
            boolean r0 = r4.w()
            r2 = 1
            if (r0 == 0) goto L2e
            int r6 = r6.b()
            r0 = -1
            if (r6 == r0) goto L2e
            boolean r0 = r4.A
            if (r6 >= r5) goto L1b
            r5 = 1
            goto L1c
        L1b:
            r5 = 0
        L1c:
            if (r0 != r5) goto L25
            androidx.recyclerview.widget.j r5 = r4.u
            int r5 = r5.g()
            goto L2f
        L25:
            androidx.recyclerview.widget.j r5 = r4.u
            int r5 = r5.g()
            r6 = r5
            r5 = 0
            goto L30
        L2e:
            r5 = 0
        L2f:
            r6 = 0
        L30:
            boolean r0 = r4.f()
            if (r0 == 0) goto L4d
            androidx.recyclerview.widget.g r0 = r4.y
            androidx.recyclerview.widget.j r3 = r4.u
            int r3 = r3.f()
            int r3 = r3 - r6
            r0.f2787f = r3
            androidx.recyclerview.widget.g r6 = r4.y
            androidx.recyclerview.widget.j r0 = r4.u
            int r0 = r0.b()
            int r0 = r0 + r5
            r6.f2788g = r0
            goto L5d
        L4d:
            androidx.recyclerview.widget.g r0 = r4.y
            androidx.recyclerview.widget.j r3 = r4.u
            int r3 = r3.a()
            int r3 = r3 + r5
            r0.f2788g = r3
            androidx.recyclerview.widget.g r5 = r4.y
            int r6 = -r6
            r5.f2787f = r6
        L5d:
            androidx.recyclerview.widget.g r5 = r4.y
            r5.f2789h = r1
            r5.f2782a = r2
            androidx.recyclerview.widget.j r6 = r4.u
            int r6 = r6.d()
            if (r6 != 0) goto L74
            androidx.recyclerview.widget.j r6 = r4.u
            int r6 = r6.a()
            if (r6 != 0) goto L74
            r1 = 1
        L74:
            r5.f2790i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.b(int, androidx.recyclerview.widget.RecyclerView$w):void");
    }

    private void a(b bVar) {
        int f2;
        SavedState savedState = this.I;
        int i2 = savedState.f2662g;
        if (i2 > 0) {
            if (i2 == this.s) {
                for (int i3 = 0; i3 < this.s; i3++) {
                    this.t[i3].c();
                    SavedState savedState2 = this.I;
                    int i4 = savedState2.f2663h[i3];
                    if (i4 != Integer.MIN_VALUE) {
                        if (savedState2.m) {
                            f2 = this.u.b();
                        } else {
                            f2 = this.u.f();
                        }
                        i4 += f2;
                    }
                    this.t[i3].d(i4);
                }
            } else {
                savedState.b();
                SavedState savedState3 = this.I;
                savedState3.f2660e = savedState3.f2661f;
            }
        }
        SavedState savedState4 = this.I;
        this.H = savedState4.n;
        c(savedState4.f2667l);
        O();
        SavedState savedState5 = this.I;
        int i5 = savedState5.f2660e;
        if (i5 != -1) {
            this.C = i5;
            bVar.f2671c = savedState5.m;
        } else {
            bVar.f2671c = this.A;
        }
        SavedState savedState6 = this.I;
        if (savedState6.f2664i > 1) {
            LazySpanLookup lazySpanLookup = this.E;
            lazySpanLookup.f2654a = savedState6.f2665j;
            lazySpanLookup.f2655b = savedState6.f2666k;
        }
    }

    private void x(int i2) {
        g gVar = this.y;
        gVar.f2786e = i2;
        gVar.f2785d = this.A != (i2 == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void b(RecyclerView recyclerView, int i2, int i3) {
        b(i2, i3, 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0045 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.A
            if (r0 == 0) goto L9
            int r0 = r6.I()
            goto Ld
        L9:
            int r0 = r6.H()
        Ld:
            r1 = 8
            if (r9 != r1) goto L1b
            if (r7 >= r8) goto L16
            int r2 = r8 + 1
            goto L1d
        L16:
            int r2 = r7 + 1
            r3 = r2
            r2 = r8
            goto L1f
        L1b:
            int r2 = r7 + r8
        L1d:
            r3 = r2
            r2 = r7
        L1f:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r6.E
            r4.e(r2)
            r4 = 1
            if (r9 == r4) goto L3e
            r5 = 2
            if (r9 == r5) goto L38
            if (r9 == r1) goto L2d
            goto L43
        L2d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.E
            r9.b(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r7 = r6.E
            r7.a(r8, r4)
            goto L43
        L38:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.E
            r9.b(r7, r8)
            goto L43
        L3e:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.E
            r9.a(r7, r8)
        L43:
            if (r3 > r0) goto L46
            return
        L46:
            boolean r7 = r6.A
            if (r7 == 0) goto L4f
            int r7 = r6.H()
            goto L53
        L4f:
            int r7 = r6.I()
        L53:
            if (r2 > r7) goto L58
            r6.y()
        L58:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.b(int, int, int):void");
    }

    boolean a(RecyclerView.w wVar, b bVar) {
        int i2;
        int f2;
        if (!wVar.d() && (i2 = this.C) != -1) {
            if (i2 >= 0 && i2 < wVar.a()) {
                SavedState savedState = this.I;
                if (savedState != null && savedState.f2660e != -1 && savedState.f2662g >= 1) {
                    bVar.f2670b = e.b.b.a.a.a.c.ALL_INT;
                    bVar.f2669a = this.C;
                } else {
                    View c2 = c(this.C);
                    if (c2 != null) {
                        bVar.f2669a = this.A ? I() : H();
                        if (this.D != Integer.MIN_VALUE) {
                            if (bVar.f2671c) {
                                bVar.f2670b = (this.u.b() - this.D) - this.u.a(c2);
                            } else {
                                bVar.f2670b = (this.u.f() + this.D) - this.u.d(c2);
                            }
                            return true;
                        }
                        if (this.u.b(c2) > this.u.g()) {
                            if (bVar.f2671c) {
                                f2 = this.u.b();
                            } else {
                                f2 = this.u.f();
                            }
                            bVar.f2670b = f2;
                            return true;
                        }
                        int d2 = this.u.d(c2) - this.u.f();
                        if (d2 < 0) {
                            bVar.f2670b = -d2;
                            return true;
                        }
                        int b2 = this.u.b() - this.u.a(c2);
                        if (b2 < 0) {
                            bVar.f2670b = b2;
                            return true;
                        }
                        bVar.f2670b = e.b.b.a.a.a.c.ALL_INT;
                    } else {
                        bVar.f2669a = this.C;
                        int i3 = this.D;
                        if (i3 == Integer.MIN_VALUE) {
                            bVar.f2671c = m(bVar.f2669a) == 1;
                            bVar.a();
                        } else {
                            bVar.a(i3);
                        }
                        bVar.f2672d = true;
                    }
                }
                return true;
            }
            this.C = -1;
            this.D = e.b.b.a.a.a.c.ALL_INT;
        }
        return false;
    }

    private void b(RecyclerView.s sVar, int i2) {
        while (e() > 0) {
            View d2 = d(0);
            if (this.u.a(d2) > i2 || this.u.e(d2) > i2) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) d2.getLayoutParams();
            if (layoutParams.f2653f) {
                for (int i3 = 0; i3 < this.s; i3++) {
                    if (this.t[i3].f2676a.size() == 1) {
                        return;
                    }
                }
                for (int i4 = 0; i4 < this.s; i4++) {
                    this.t[i4].k();
                }
            } else if (layoutParams.f2652e.f2676a.size() == 1) {
                return;
            } else {
                layoutParams.f2652e.k();
            }
            a(d2, sVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean b() {
        return this.w == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int b(int i2, RecyclerView.s sVar, RecyclerView.w wVar) {
        return c(i2, sVar, wVar);
    }

    private boolean c(RecyclerView.w wVar, b bVar) {
        int q;
        if (this.G) {
            q = r(wVar.a());
        } else {
            q = q(wVar.a());
        }
        bVar.f2669a = q;
        bVar.f2670b = e.b.b.a.a.a.c.ALL_INT;
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int c(RecyclerView.w wVar) {
        return j(wVar);
    }

    private int c(int i2, int i3, int i4) {
        if (i3 == 0 && i4 == 0) {
            return i2;
        }
        int mode = View.MeasureSpec.getMode(i2);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - i3) - i4), mode) : i2;
    }

    int c(int i2, RecyclerView.s sVar, RecyclerView.w wVar) {
        if (e() == 0 || i2 == 0) {
            return 0;
        }
        a(i2, wVar);
        int a2 = a(sVar, this.y, wVar);
        if (this.y.f2783b >= a2) {
            i2 = i2 < 0 ? -a2 : a2;
        }
        this.u.a(-i2);
        this.G = this.A;
        g gVar = this.y;
        gVar.f2783b = 0;
        a(sVar, gVar);
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int a(RecyclerView.w wVar) {
        return h(wVar);
    }

    private void a(View view, LayoutParams layoutParams, boolean z) {
        if (layoutParams.f2653f) {
            if (this.w == 1) {
                a(view, this.J, RecyclerView.m.a(h(), i(), p() + m(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
                return;
            } else {
                a(view, RecyclerView.m.a(q(), r(), n() + o(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), this.J, z);
                return;
            }
        }
        if (this.w == 1) {
            a(view, RecyclerView.m.a(this.x, r(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), RecyclerView.m.a(h(), i(), p() + m(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
        } else {
            a(view, RecyclerView.m.a(q(), r(), n() + o(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), RecyclerView.m.a(this.x, i(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).height, false), z);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.LayoutParams c() {
        if (this.w == 0) {
            return new LayoutParams(-2, -1);
        }
        return new LayoutParams(-1, -2);
    }

    private void a(View view, int i2, int i3, boolean z) {
        boolean a2;
        a(view, this.K);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        Rect rect = this.K;
        int c2 = c(i2, i4 + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        Rect rect2 = this.K;
        int c3 = c(i3, i5 + rect2.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect2.bottom);
        if (z) {
            a2 = b(view, c2, c3, layoutParams);
        } else {
            a2 = a(view, c2, c3, layoutParams);
        }
        if (a2) {
            view.measure(c2, c3);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.I = (SavedState) parcelable;
            y();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(RecyclerView.s sVar, RecyclerView.w wVar, View view, androidx.core.view.f0.d dVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.a(view, dVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        if (this.w == 0) {
            dVar.b(d.c.a(layoutParams2.e(), layoutParams2.f2653f ? this.s : 1, -1, -1, layoutParams2.f2653f, false));
        } else {
            dVar.b(d.c.a(-1, -1, layoutParams2.e(), layoutParams2.f2653f ? this.s : 1, layoutParams2.f2653f, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (e() > 0) {
            View b2 = b(false);
            View a2 = a(false);
            if (b2 == null || a2 == null) {
                return;
            }
            int l2 = l(b2);
            int l3 = l(a2);
            if (l2 < l3) {
                accessibilityEvent.setFromIndex(l2);
                accessibilityEvent.setToIndex(l3);
            } else {
                accessibilityEvent.setFromIndex(l3);
                accessibilityEvent.setToIndex(l2);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int a(RecyclerView.s sVar, RecyclerView.w wVar) {
        if (this.w == 1) {
            return this.s;
        }
        return super.a(sVar, wVar);
    }

    View a(boolean z) {
        int f2 = this.u.f();
        int b2 = this.u.b();
        View view = null;
        for (int e2 = e() - 1; e2 >= 0; e2--) {
            View d2 = d(e2);
            int d3 = this.u.d(d2);
            int a2 = this.u.a(d2);
            if (a2 > f2 && d3 < b2) {
                if (a2 <= b2 || !z) {
                    return d2;
                }
                if (view == null) {
                    view = d2;
                }
            }
        }
        return view;
    }

    private void a(RecyclerView.s sVar, RecyclerView.w wVar, boolean z) {
        int b2;
        int s = s(e.b.b.a.a.a.c.ALL_INT);
        if (s != Integer.MIN_VALUE && (b2 = this.u.b() - s) > 0) {
            int i2 = b2 - (-c(-b2, sVar, wVar));
            if (!z || i2 <= 0) {
                return;
            }
            this.u.a(i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(RecyclerView recyclerView, int i2, int i3) {
        b(i2, i3, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(RecyclerView recyclerView, int i2, int i3, int i4) {
        b(i2, i3, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(RecyclerView recyclerView, int i2, int i3, Object obj) {
        b(i2, i3, 4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v6 */
    private int a(RecyclerView.s sVar, g gVar, RecyclerView.w wVar) {
        int i2;
        int i3;
        int f2;
        int s;
        c cVar;
        int b2;
        int i4;
        int i5;
        int b3;
        boolean E;
        ?? r9 = 0;
        this.B.set(0, this.s, true);
        if (this.y.f2790i) {
            i3 = gVar.f2786e == 1 ? Integer.MAX_VALUE : e.b.b.a.a.a.c.ALL_INT;
        } else {
            if (gVar.f2786e == 1) {
                i2 = gVar.f2788g + gVar.f2783b;
            } else {
                i2 = gVar.f2787f - gVar.f2783b;
            }
            i3 = i2;
        }
        e(gVar.f2786e, i3);
        if (this.A) {
            f2 = this.u.b();
        } else {
            f2 = this.u.f();
        }
        int i6 = f2;
        boolean z = false;
        while (gVar.a(wVar) && (this.y.f2790i || !this.B.isEmpty())) {
            View a2 = gVar.a(sVar);
            LayoutParams layoutParams = (LayoutParams) a2.getLayoutParams();
            int a3 = layoutParams.a();
            int d2 = this.E.d(a3);
            boolean z2 = d2 == -1;
            if (z2) {
                cVar = layoutParams.f2653f ? this.t[r9] : a(gVar);
                this.E.a(a3, cVar);
            } else {
                cVar = this.t[d2];
            }
            c cVar2 = cVar;
            layoutParams.f2652e = cVar2;
            if (gVar.f2786e == 1) {
                b(a2);
            } else {
                b(a2, (int) r9);
            }
            a(a2, layoutParams, (boolean) r9);
            if (gVar.f2786e == 1) {
                int s2 = layoutParams.f2653f ? s(i6) : cVar2.a(i6);
                int b4 = this.u.b(a2) + s2;
                if (z2 && layoutParams.f2653f) {
                    LazySpanLookup.FullSpanItem o = o(s2);
                    o.f2657f = -1;
                    o.f2656e = a3;
                    this.E.a(o);
                }
                i4 = b4;
                b2 = s2;
            } else {
                int v = layoutParams.f2653f ? v(i6) : cVar2.b(i6);
                b2 = v - this.u.b(a2);
                if (z2 && layoutParams.f2653f) {
                    LazySpanLookup.FullSpanItem p = p(v);
                    p.f2657f = 1;
                    p.f2656e = a3;
                    this.E.a(p);
                }
                i4 = v;
            }
            if (layoutParams.f2653f && gVar.f2785d == -1) {
                if (z2) {
                    this.M = true;
                } else {
                    if (gVar.f2786e == 1) {
                        E = D();
                    } else {
                        E = E();
                    }
                    if (!E) {
                        LazySpanLookup.FullSpanItem c2 = this.E.c(a3);
                        if (c2 != null) {
                            c2.f2659h = true;
                        }
                        this.M = true;
                    }
                }
            }
            a(a2, layoutParams, gVar);
            if (L() && this.w == 1) {
                int b5 = layoutParams.f2653f ? this.v.b() : this.v.b() - (((this.s - 1) - cVar2.f2680e) * this.x);
                b3 = b5;
                i5 = b5 - this.v.b(a2);
            } else {
                int f3 = layoutParams.f2653f ? this.v.f() : (cVar2.f2680e * this.x) + this.v.f();
                i5 = f3;
                b3 = this.v.b(a2) + f3;
            }
            if (this.w == 1) {
                a(a2, i5, b2, b3, i4);
            } else {
                a(a2, b2, i5, i4, b3);
            }
            if (layoutParams.f2653f) {
                e(this.y.f2786e, i3);
            } else {
                a(cVar2, this.y.f2786e, i3);
            }
            a(sVar, this.y);
            if (this.y.f2789h && a2.hasFocusable()) {
                if (layoutParams.f2653f) {
                    this.B.clear();
                } else {
                    this.B.set(cVar2.f2680e, false);
                    z = true;
                    r9 = 0;
                }
            }
            z = true;
            r9 = 0;
        }
        if (!z) {
            a(sVar, this.y);
        }
        if (this.y.f2786e == -1) {
            s = this.u.f() - v(this.u.f());
        } else {
            s = s(this.u.b()) - this.u.b();
        }
        if (s > 0) {
            return Math.min(gVar.f2783b, s);
        }
        return 0;
    }

    private void a(View view, LayoutParams layoutParams, g gVar) {
        if (gVar.f2786e == 1) {
            if (layoutParams.f2653f) {
                p(view);
                return;
            } else {
                layoutParams.f2652e.a(view);
                return;
            }
        }
        if (layoutParams.f2653f) {
            q(view);
        } else {
            layoutParams.f2652e.c(view);
        }
    }

    private void a(RecyclerView.s sVar, g gVar) {
        int min;
        int min2;
        if (!gVar.f2782a || gVar.f2790i) {
            return;
        }
        if (gVar.f2783b == 0) {
            if (gVar.f2786e == -1) {
                a(sVar, gVar.f2788g);
                return;
            } else {
                b(sVar, gVar.f2787f);
                return;
            }
        }
        if (gVar.f2786e == -1) {
            int i2 = gVar.f2787f;
            int t = i2 - t(i2);
            if (t < 0) {
                min2 = gVar.f2788g;
            } else {
                min2 = gVar.f2788g - Math.min(t, gVar.f2783b);
            }
            a(sVar, min2);
            return;
        }
        int u = u(gVar.f2788g) - gVar.f2788g;
        if (u < 0) {
            min = gVar.f2787f;
        } else {
            min = Math.min(u, gVar.f2783b) + gVar.f2787f;
        }
        b(sVar, min);
    }

    private void a(c cVar, int i2, int i3) {
        int f2 = cVar.f();
        if (i2 == -1) {
            if (cVar.h() + f2 <= i3) {
                this.B.set(cVar.f2680e, false);
            }
        } else if (cVar.g() - f2 >= i3) {
            this.B.set(cVar.f2680e, false);
        }
    }

    private void a(RecyclerView.s sVar, int i2) {
        for (int e2 = e() - 1; e2 >= 0; e2--) {
            View d2 = d(e2);
            if (this.u.d(d2) < i2 || this.u.f(d2) < i2) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) d2.getLayoutParams();
            if (layoutParams.f2653f) {
                for (int i3 = 0; i3 < this.s; i3++) {
                    if (this.t[i3].f2676a.size() == 1) {
                        return;
                    }
                }
                for (int i4 = 0; i4 < this.s; i4++) {
                    this.t[i4].j();
                }
            } else if (layoutParams.f2652e.f2676a.size() == 1) {
                return;
            } else {
                layoutParams.f2652e.j();
            }
            a(d2, sVar);
        }
    }

    private c a(g gVar) {
        int i2;
        int i3;
        int i4 = -1;
        if (w(gVar.f2786e)) {
            i2 = this.s - 1;
            i3 = -1;
        } else {
            i2 = 0;
            i4 = this.s;
            i3 = 1;
        }
        c cVar = null;
        if (gVar.f2786e == 1) {
            int i5 = Integer.MAX_VALUE;
            int f2 = this.u.f();
            while (i2 != i4) {
                c cVar2 = this.t[i2];
                int a2 = cVar2.a(f2);
                if (a2 < i5) {
                    cVar = cVar2;
                    i5 = a2;
                }
                i2 += i3;
            }
            return cVar;
        }
        int i6 = e.b.b.a.a.a.c.ALL_INT;
        int b2 = this.u.b();
        while (i2 != i4) {
            c cVar3 = this.t[i2];
            int b3 = cVar3.b(b2);
            if (b3 > i6) {
                cVar = cVar3;
                i6 = b3;
            }
            i2 += i3;
        }
        return cVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean a() {
        return this.w == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int a(int i2, RecyclerView.s sVar, RecyclerView.w wVar) {
        return c(i2, sVar, wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.v.b
    public PointF a(int i2) {
        int m = m(i2);
        PointF pointF = new PointF();
        if (m == 0) {
            return null;
        }
        if (this.w == 0) {
            pointF.x = m;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = m;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(RecyclerView recyclerView, RecyclerView.w wVar, int i2) {
        h hVar = new h(recyclerView.getContext());
        hVar.c(i2);
        b(hVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @RestrictTo({RestrictTo.a.LIBRARY})
    public void a(int i2, int i3, RecyclerView.w wVar, RecyclerView.m.c cVar) {
        int a2;
        int i4;
        if (this.w != 0) {
            i2 = i3;
        }
        if (e() == 0 || i2 == 0) {
            return;
        }
        a(i2, wVar);
        int[] iArr = this.O;
        if (iArr == null || iArr.length < this.s) {
            this.O = new int[this.s];
        }
        int i5 = 0;
        for (int i6 = 0; i6 < this.s; i6++) {
            g gVar = this.y;
            if (gVar.f2785d == -1) {
                a2 = gVar.f2787f;
                i4 = this.t[i6].b(a2);
            } else {
                a2 = this.t[i6].a(gVar.f2788g);
                i4 = this.y.f2788g;
            }
            int i7 = a2 - i4;
            if (i7 >= 0) {
                this.O[i5] = i7;
                i5++;
            }
        }
        Arrays.sort(this.O, 0, i5);
        for (int i8 = 0; i8 < i5 && this.y.a(wVar); i8++) {
            cVar.a(this.y.f2784c, this.O[i8]);
            g gVar2 = this.y;
            gVar2.f2784c += gVar2.f2785d;
        }
    }

    void a(int i2, RecyclerView.w wVar) {
        int H;
        int i3;
        if (i2 > 0) {
            H = I();
            i3 = 1;
        } else {
            H = H();
            i3 = -1;
        }
        this.y.f2782a = true;
        b(H, wVar);
        x(i3);
        g gVar = this.y;
        gVar.f2784c = H + gVar.f2785d;
        gVar.f2783b = Math.abs(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.LayoutParams a(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean a(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    @Nullable
    public View a(View view, int i2, RecyclerView.s sVar, RecyclerView.w wVar) {
        View c2;
        int H;
        int e2;
        int e3;
        int e4;
        View a2;
        if (e() == 0 || (c2 = c(view)) == null) {
            return null;
        }
        O();
        int n = n(i2);
        if (n == Integer.MIN_VALUE) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) c2.getLayoutParams();
        boolean z = layoutParams.f2653f;
        c cVar = layoutParams.f2652e;
        if (n == 1) {
            H = I();
        } else {
            H = H();
        }
        b(H, wVar);
        x(n);
        g gVar = this.y;
        gVar.f2784c = gVar.f2785d + H;
        gVar.f2783b = (int) (this.u.g() * 0.33333334f);
        g gVar2 = this.y;
        gVar2.f2789h = true;
        gVar2.f2782a = false;
        a(sVar, gVar2, wVar);
        this.G = this.A;
        if (!z && (a2 = cVar.a(H, n)) != null && a2 != c2) {
            return a2;
        }
        if (w(n)) {
            for (int i3 = this.s - 1; i3 >= 0; i3--) {
                View a3 = this.t[i3].a(H, n);
                if (a3 != null && a3 != c2) {
                    return a3;
                }
            }
        } else {
            for (int i4 = 0; i4 < this.s; i4++) {
                View a4 = this.t[i4].a(H, n);
                if (a4 != null && a4 != c2) {
                    return a4;
                }
            }
        }
        boolean z2 = (this.z ^ true) == (n == -1);
        if (!z) {
            if (z2) {
                e4 = cVar.d();
            } else {
                e4 = cVar.e();
            }
            View c3 = c(e4);
            if (c3 != null && c3 != c2) {
                return c3;
            }
        }
        if (w(n)) {
            for (int i5 = this.s - 1; i5 >= 0; i5--) {
                if (i5 != cVar.f2680e) {
                    if (z2) {
                        e3 = this.t[i5].d();
                    } else {
                        e3 = this.t[i5].e();
                    }
                    View c4 = c(e3);
                    if (c4 != null && c4 != c2) {
                        return c4;
                    }
                }
            }
        } else {
            for (int i6 = 0; i6 < this.s; i6++) {
                if (z2) {
                    e2 = this.t[i6].d();
                } else {
                    e2 = this.t[i6].e();
                }
                View c5 = c(e2);
                if (c5 != null && c5 != c2) {
                    return c5;
                }
            }
        }
        return null;
    }
}
