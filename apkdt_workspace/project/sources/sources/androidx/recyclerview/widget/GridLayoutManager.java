package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.f0.d;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    boolean H;
    int I;
    int[] J;
    View[] K;
    final SparseIntArray L;
    final SparseIntArray M;
    b N;
    final Rect O;

    /* loaded from: classes.dex */
    public static final class a extends b {
        @Override // androidx.recyclerview.widget.GridLayoutManager.b
        public int a(int i2) {
            return 1;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.b
        public int c(int i2, int i3) {
            return i2 % i3;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {

        /* renamed from: a, reason: collision with root package name */
        final SparseIntArray f2517a = new SparseIntArray();

        /* renamed from: b, reason: collision with root package name */
        private boolean f2518b = false;

        public abstract int a(int i2);

        public void a() {
            this.f2517a.clear();
        }

        public int b(int i2, int i3) {
            int a2 = a(i2);
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                int a3 = a(i6);
                i4 += a3;
                if (i4 == i3) {
                    i5++;
                    i4 = 0;
                } else if (i4 > i3) {
                    i5++;
                    i4 = a3;
                }
            }
            return i4 + a2 > i3 ? i5 + 1 : i5;
        }

        public abstract int c(int i2, int i3);

        int a(int i2, int i3) {
            if (!this.f2518b) {
                return c(i2, i3);
            }
            int i4 = this.f2517a.get(i2, -1);
            if (i4 != -1) {
                return i4;
            }
            int c2 = c(i2, i3);
            this.f2517a.put(i2, c2);
            return c2;
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.H = false;
        this.I = -1;
        this.L = new SparseIntArray();
        this.M = new SparseIntArray();
        this.N = new a();
        this.O = new Rect();
        l(RecyclerView.m.a(context, attributeSet, i2, i3).f2587b);
    }

    private void K() {
        int e2 = e();
        for (int i2 = 0; i2 < e2; i2++) {
            LayoutParams layoutParams = (LayoutParams) d(i2).getLayoutParams();
            int a2 = layoutParams.a();
            this.L.put(a2, layoutParams.f());
            this.M.put(a2, layoutParams.e());
        }
    }

    private void L() {
        this.L.clear();
        this.M.clear();
    }

    private void M() {
        View[] viewArr = this.K;
        if (viewArr == null || viewArr.length != this.I) {
            this.K = new View[this.I];
        }
    }

    private void N() {
        int h2;
        int p;
        if (H() == 1) {
            h2 = q() - o();
            p = n();
        } else {
            h2 = h() - m();
            p = p();
        }
        m(h2 - p);
    }

    private void m(int i2) {
        this.J = a(this.J, this.I, i2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public boolean C() {
        return this.D == null && !this.H;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int a(RecyclerView.s sVar, RecyclerView.w wVar) {
        if (this.s == 1) {
            return this.I;
        }
        if (wVar.a() < 1) {
            return 0;
        }
        return a(sVar, wVar, wVar.a() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void b(boolean z) {
        if (!z) {
            super.b(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.LayoutParams c() {
        if (this.s == 0) {
            return new LayoutParams(-2, -1);
        }
        return new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void d(RecyclerView recyclerView) {
        this.N.a();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void e(RecyclerView.s sVar, RecyclerView.w wVar) {
        if (wVar.d()) {
            K();
        }
        super.e(sVar, wVar);
        L();
    }

    int f(int i2, int i3) {
        if (this.s == 1 && I()) {
            int[] iArr = this.J;
            int i4 = this.I;
            return iArr[i4 - i2] - iArr[(i4 - i2) - i3];
        }
        int[] iArr2 = this.J;
        return iArr2[i3 + i2] - iArr2[i2];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void g(RecyclerView.w wVar) {
        super.g(wVar);
        this.H = false;
    }

    public void l(int i2) {
        if (i2 == this.I) {
            return;
        }
        this.H = true;
        if (i2 >= 1) {
            this.I = i2;
            this.N.a();
            y();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i2);
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: e, reason: collision with root package name */
        int f2515e;

        /* renamed from: f, reason: collision with root package name */
        int f2516f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2515e = -1;
            this.f2516f = 0;
        }

        public int e() {
            return this.f2515e;
        }

        public int f() {
            return this.f2516f;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f2515e = -1;
            this.f2516f = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2515e = -1;
            this.f2516f = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2515e = -1;
            this.f2516f = 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int b(RecyclerView.s sVar, RecyclerView.w wVar) {
        if (this.s == 0) {
            return this.I;
        }
        if (wVar.a() < 1) {
            return 0;
        }
        return a(sVar, wVar, wVar.a() - 1) + 1;
    }

    private int c(RecyclerView.s sVar, RecyclerView.w wVar, int i2) {
        if (!wVar.d()) {
            return this.N.a(i2);
        }
        int i3 = this.L.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        int a2 = sVar.a(i2);
        if (a2 == -1) {
            String str = "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2;
            return 1;
        }
        return this.N.a(a2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(RecyclerView.s sVar, RecyclerView.w wVar, View view, androidx.core.view.f0.d dVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.a(view, dVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int a2 = a(sVar, wVar, layoutParams2.a());
        if (this.s == 0) {
            dVar.b(d.c.a(layoutParams2.e(), layoutParams2.f(), a2, 1, this.I > 1 && layoutParams2.f() == this.I, false));
        } else {
            dVar.b(d.c.a(a2, 1, layoutParams2.e(), layoutParams2.f(), this.I > 1 && layoutParams2.f() == this.I, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void b(RecyclerView recyclerView, int i2, int i3) {
        this.N.a();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int b(int i2, RecyclerView.s sVar, RecyclerView.w wVar) {
        N();
        M();
        return super.b(i2, sVar, wVar);
    }

    private void b(RecyclerView.s sVar, RecyclerView.w wVar, LinearLayoutManager.a aVar, int i2) {
        boolean z = i2 == 1;
        int b2 = b(sVar, wVar, aVar.f2523b);
        if (z) {
            while (b2 > 0) {
                int i3 = aVar.f2523b;
                if (i3 <= 0) {
                    return;
                }
                aVar.f2523b = i3 - 1;
                b2 = b(sVar, wVar, aVar.f2523b);
            }
            return;
        }
        int a2 = wVar.a() - 1;
        int i4 = aVar.f2523b;
        while (i4 < a2) {
            int i5 = i4 + 1;
            int b3 = b(sVar, wVar, i5);
            if (b3 <= b2) {
                break;
            }
            i4 = i5;
            b2 = b3;
        }
        aVar.f2523b = i4;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(RecyclerView recyclerView, int i2, int i3) {
        this.N.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(RecyclerView recyclerView, int i2, int i3, Object obj) {
        this.N.a();
    }

    private int b(RecyclerView.s sVar, RecyclerView.w wVar, int i2) {
        if (!wVar.d()) {
            return this.N.a(i2, this.I);
        }
        int i3 = this.M.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        int a2 = sVar.a(i2);
        if (a2 == -1) {
            String str = "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2;
            return 0;
        }
        return this.N.a(a2, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void a(RecyclerView recyclerView, int i2, int i3, int i4) {
        this.N.a();
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
    public void a(Rect rect, int i2, int i3) {
        int a2;
        int a3;
        if (this.J == null) {
            super.a(rect, i2, i3);
        }
        int n = n() + o();
        int p = p() + m();
        if (this.s == 1) {
            a3 = RecyclerView.m.a(i3, rect.height() + p, k());
            int[] iArr = this.J;
            a2 = RecyclerView.m.a(i2, iArr[iArr.length - 1] + n, l());
        } else {
            a2 = RecyclerView.m.a(i2, rect.width() + n, l());
            int[] iArr2 = this.J;
            a3 = RecyclerView.m.a(i3, iArr2[iArr2.length - 1] + p, k());
        }
        c(a2, a3);
    }

    static int[] a(int[] iArr, int i2, int i3) {
        int i4;
        if (iArr == null || iArr.length != i2 + 1 || iArr[iArr.length - 1] != i3) {
            iArr = new int[i2 + 1];
        }
        int i5 = 0;
        iArr[0] = 0;
        int i6 = i3 / i2;
        int i7 = i3 % i2;
        int i8 = 0;
        for (int i9 = 1; i9 <= i2; i9++) {
            i5 += i7;
            if (i5 <= 0 || i2 - i5 >= i7) {
                i4 = i6;
            } else {
                i4 = i6 + 1;
                i5 -= i2;
            }
            i8 += i4;
            iArr[i9] = i8;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void a(RecyclerView.s sVar, RecyclerView.w wVar, LinearLayoutManager.a aVar, int i2) {
        super.a(sVar, wVar, aVar, i2);
        N();
        if (wVar.a() > 0 && !wVar.d()) {
            b(sVar, wVar, aVar, i2);
        }
        M();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int a(int i2, RecyclerView.s sVar, RecyclerView.w wVar) {
        N();
        M();
        return super.a(i2, sVar, wVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
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
            if (l2 >= 0 && l2 < i4 && b(sVar, wVar, l2) == 0) {
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

    private int a(RecyclerView.s sVar, RecyclerView.w wVar, int i2) {
        if (!wVar.d()) {
            return this.N.b(i2, this.I);
        }
        int a2 = sVar.a(i2);
        if (a2 == -1) {
            String str = "Cannot find span size for pre layout position. " + i2;
            return 0;
        }
        return this.N.b(a2, this.I);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void a(RecyclerView.w wVar, LinearLayoutManager.c cVar, RecyclerView.m.c cVar2) {
        int i2 = this.I;
        for (int i3 = 0; i3 < this.I && cVar.a(wVar) && i2 > 0; i3++) {
            int i4 = cVar.f2534d;
            cVar2.a(i4, Math.max(0, cVar.f2537g));
            i2 -= this.N.a(i4);
            cVar.f2534d += cVar.f2535e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a1, code lost:
    
        r22.f2528b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a3, code lost:
    
        return;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void a(androidx.recyclerview.widget.RecyclerView.s r19, androidx.recyclerview.widget.RecyclerView.w r20, androidx.recyclerview.widget.LinearLayoutManager.c r21, androidx.recyclerview.widget.LinearLayoutManager.b r22) {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.a(androidx.recyclerview.widget.RecyclerView$s, androidx.recyclerview.widget.RecyclerView$w, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.LinearLayoutManager$b):void");
    }

    private void a(View view, int i2, boolean z) {
        int i3;
        int i4;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.f2560b;
        int i5 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i6 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int f2 = f(layoutParams.f2515e, layoutParams.f2516f);
        if (this.s == 1) {
            i4 = RecyclerView.m.a(f2, i2, i6, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
            i3 = RecyclerView.m.a(this.u.g(), i(), i5, ((ViewGroup.MarginLayoutParams) layoutParams).height, true);
        } else {
            int a2 = RecyclerView.m.a(f2, i2, i5, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
            int a3 = RecyclerView.m.a(this.u.g(), r(), i6, ((ViewGroup.MarginLayoutParams) layoutParams).width, true);
            i3 = a2;
            i4 = a3;
        }
        a(view, i4, i3, z);
    }

    private void a(float f2, int i2) {
        m(Math.max(Math.round(f2 * this.I), i2));
    }

    private void a(View view, int i2, int i3, boolean z) {
        boolean a2;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z) {
            a2 = b(view, i2, i3, layoutParams);
        } else {
            a2 = a(view, i2, i3, layoutParams);
        }
        if (a2) {
            view.measure(i2, i3);
        }
    }

    private void a(RecyclerView.s sVar, RecyclerView.w wVar, int i2, int i3, boolean z) {
        int i4;
        int i5;
        int i6 = 0;
        int i7 = -1;
        if (z) {
            i7 = i2;
            i4 = 0;
            i5 = 1;
        } else {
            i4 = i2 - 1;
            i5 = -1;
        }
        while (i4 != i7) {
            View view = this.K[i4];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.f2516f = c(sVar, wVar, l(view));
            layoutParams.f2515e = i6;
            i6 += layoutParams.f2516f;
            i4 += i5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d7, code lost:
    
        if (r13 == (r2 > r8)) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00f7, code lost:
    
        if (r13 == (r2 > r10)) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0105  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View a(android.view.View r24, int r25, androidx.recyclerview.widget.RecyclerView.s r26, androidx.recyclerview.widget.RecyclerView.w r27) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$s, androidx.recyclerview.widget.RecyclerView$w):android.view.View");
    }
}
