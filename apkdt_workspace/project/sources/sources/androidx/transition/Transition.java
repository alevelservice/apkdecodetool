package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class Transition implements Cloneable {
    private static final int[] K = {2, 1, 3, 4};
    private static final PathMotion L = new a();
    private static ThreadLocal<a.e.a<Animator, d>> M = new ThreadLocal<>();
    k G;
    private e H;
    private a.e.a<String, String> I;
    private ArrayList<m> x;
    private ArrayList<m> y;

    /* renamed from: e, reason: collision with root package name */
    private String f2918e = getClass().getName();

    /* renamed from: f, reason: collision with root package name */
    private long f2919f = -1;

    /* renamed from: g, reason: collision with root package name */
    long f2920g = -1;

    /* renamed from: h, reason: collision with root package name */
    private TimeInterpolator f2921h = null;

    /* renamed from: i, reason: collision with root package name */
    ArrayList<Integer> f2922i = new ArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    ArrayList<View> f2923j = new ArrayList<>();

    /* renamed from: k, reason: collision with root package name */
    private ArrayList<String> f2924k = null;

    /* renamed from: l, reason: collision with root package name */
    private ArrayList<Class> f2925l = null;
    private ArrayList<Integer> m = null;
    private ArrayList<View> n = null;
    private ArrayList<Class> o = null;
    private ArrayList<String> p = null;
    private ArrayList<Integer> q = null;
    private ArrayList<View> r = null;
    private ArrayList<Class> s = null;
    private n t = new n();
    private n u = new n();
    TransitionSet v = null;
    private int[] w = K;
    boolean z = false;
    ArrayList<Animator> A = new ArrayList<>();
    private int B = 0;
    private boolean C = false;
    private boolean D = false;
    private ArrayList<f> E = null;
    private ArrayList<Animator> F = new ArrayList<>();
    private PathMotion J = L;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface MatchOrder {
    }

    /* loaded from: classes.dex */
    static class a extends PathMotion {
        a() {
        }

        @Override // androidx.transition.PathMotion
        public Path a(float f2, float f3, float f4, float f5) {
            Path path = new Path();
            path.moveTo(f2, f3);
            path.lineTo(f4, f5);
            return path;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ a.e.a f2926e;

        b(a.e.a aVar) {
            this.f2926e = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2926e.remove(animator);
            Transition.this.A.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            Transition.this.A.add(animator);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Transition.this.a();
            animator.removeListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        View f2929a;

        /* renamed from: b, reason: collision with root package name */
        String f2930b;

        /* renamed from: c, reason: collision with root package name */
        m f2931c;

        /* renamed from: d, reason: collision with root package name */
        e0 f2932d;

        /* renamed from: e, reason: collision with root package name */
        Transition f2933e;

        d(View view, String str, Transition transition, e0 e0Var, m mVar) {
            this.f2929a = view;
            this.f2930b = str;
            this.f2931c = mVar;
            this.f2932d = e0Var;
            this.f2933e = transition;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class e {
    }

    /* loaded from: classes.dex */
    public interface f {
        void a(@NonNull Transition transition);

        void b(@NonNull Transition transition);

        void c(@NonNull Transition transition);

        void d(@NonNull Transition transition);
    }

    private static a.e.a<Animator, d> C() {
        a.e.a<Animator, d> aVar = M.get();
        if (aVar != null) {
            return aVar;
        }
        a.e.a<Animator, d> aVar2 = new a.e.a<>();
        M.set(aVar2);
        return aVar2;
    }

    private void c(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.m;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.n;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class> arrayList3 = this.o;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (this.o.get(i2).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    m mVar = new m();
                    mVar.f2983b = view;
                    if (z) {
                        c(mVar);
                    } else {
                        a(mVar);
                    }
                    mVar.f2984c.add(this);
                    b(mVar);
                    if (z) {
                        a(this.t, view, mVar);
                    } else {
                        a(this.u, view, mVar);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.q;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.r;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class> arrayList6 = this.s;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i3 = 0; i3 < size2; i3++) {
                                    if (this.s.get(i3).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                                c(viewGroup.getChildAt(i4), z);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void A() {
        B();
        a.e.a<Animator, d> C = C();
        Iterator<Animator> it = this.F.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (C.containsKey(next)) {
                B();
                a(next, C);
            }
        }
        this.F.clear();
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void B() {
        if (this.B == 0) {
            ArrayList<f> arrayList = this.E;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.E.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((f) arrayList2.get(i2)).a(this);
                }
            }
            this.D = false;
        }
        this.B++;
    }

    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @Nullable m mVar, @Nullable m mVar2) {
        return null;
    }

    @NonNull
    public Transition a(long j2) {
        this.f2920g = j2;
        return this;
    }

    public abstract void a(@NonNull m mVar);

    public long b() {
        return this.f2920g;
    }

    public abstract void c(@NonNull m mVar);

    @Nullable
    public TimeInterpolator d() {
        return this.f2921h;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void e(View view) {
        if (this.C) {
            if (!this.D) {
                a.e.a<Animator, d> C = C();
                int size = C.size();
                e0 d2 = x.d(view);
                for (int i2 = size - 1; i2 >= 0; i2--) {
                    d d3 = C.d(i2);
                    if (d3.f2929a != null && d2.equals(d3.f2932d)) {
                        androidx.transition.a.b(C.b(i2));
                    }
                }
                ArrayList<f> arrayList = this.E;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.E.clone();
                    int size2 = arrayList2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        ((f) arrayList2.get(i3)).d(this);
                    }
                }
            }
            this.C = false;
        }
    }

    @NonNull
    public PathMotion f() {
        return this.J;
    }

    @Nullable
    public k g() {
        return this.G;
    }

    public long h() {
        return this.f2919f;
    }

    @NonNull
    public List<Integer> n() {
        return this.f2922i;
    }

    public String toString() {
        return a("");
    }

    @Nullable
    public List<String> w() {
        return this.f2924k;
    }

    @Nullable
    public List<Class> x() {
        return this.f2925l;
    }

    @NonNull
    public List<View> y() {
        return this.f2923j;
    }

    @Nullable
    public String[] z() {
        return null;
    }

    @NonNull
    public Transition a(@Nullable TimeInterpolator timeInterpolator) {
        this.f2921h = timeInterpolator;
        return this;
    }

    @NonNull
    public Transition b(long j2) {
        this.f2919f = j2;
        return this;
    }

    @Override // 
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Transition mo4clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.F = new ArrayList<>();
            transition.t = new n();
            transition.u = new n();
            transition.x = null;
            transition.y = null;
            return transition;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @NonNull
    public Transition d(@NonNull View view) {
        this.f2923j.remove(view);
        return this;
    }

    private void a(a.e.a<View, m> aVar, a.e.a<View, m> aVar2, a.e.d<View> dVar, a.e.d<View> dVar2) {
        View a2;
        int b2 = dVar.b();
        for (int i2 = 0; i2 < b2; i2++) {
            View c2 = dVar.c(i2);
            if (c2 != null && b(c2) && (a2 = dVar2.a(dVar.a(i2))) != null && b(a2)) {
                m mVar = aVar.get(c2);
                m mVar2 = aVar2.get(a2);
                if (mVar != null && mVar2 != null) {
                    this.x.add(mVar);
                    this.y.add(mVar2);
                    aVar.remove(c2);
                    aVar2.remove(a2);
                }
            }
        }
    }

    private void b(a.e.a<View, m> aVar, a.e.a<View, m> aVar2) {
        m remove;
        View view;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View b2 = aVar.b(size);
            if (b2 != null && b(b2) && (remove = aVar2.remove(b2)) != null && (view = remove.f2983b) != null && b(view)) {
                this.x.add(aVar.c(size));
                this.y.add(remove);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(View view) {
        ArrayList<Class> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.m;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.n;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class> arrayList5 = this.o;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.o.get(i2).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.p != null && ViewCompat.u(view) != null && this.p.contains(ViewCompat.u(view))) {
            return false;
        }
        if ((this.f2922i.size() == 0 && this.f2923j.size() == 0 && (((arrayList = this.f2925l) == null || arrayList.isEmpty()) && ((arrayList2 = this.f2924k) == null || arrayList2.isEmpty()))) || this.f2922i.contains(Integer.valueOf(id)) || this.f2923j.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.f2924k;
        if (arrayList6 != null && arrayList6.contains(ViewCompat.u(view))) {
            return true;
        }
        if (this.f2925l != null) {
            for (int i3 = 0; i3 < this.f2925l.size(); i3++) {
                if (this.f2925l.get(i3).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void a(a.e.a<View, m> aVar, a.e.a<View, m> aVar2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            View valueAt = sparseArray.valueAt(i2);
            if (valueAt != null && b(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i2))) != null && b(view)) {
                m mVar = aVar.get(valueAt);
                m mVar2 = aVar2.get(view);
                if (mVar != null && mVar2 != null) {
                    this.x.add(mVar);
                    this.y.add(mVar2);
                    aVar.remove(valueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    @NonNull
    public String e() {
        return this.f2918e;
    }

    private void a(a.e.a<View, m> aVar, a.e.a<View, m> aVar2, a.e.a<String, View> aVar3, a.e.a<String, View> aVar4) {
        View view;
        int size = aVar3.size();
        for (int i2 = 0; i2 < size; i2++) {
            View d2 = aVar3.d(i2);
            if (d2 != null && b(d2) && (view = aVar4.get(aVar3.b(i2))) != null && b(view)) {
                m mVar = aVar.get(d2);
                m mVar2 = aVar2.get(view);
                if (mVar != null && mVar2 != null) {
                    this.x.add(mVar);
                    this.y.add(mVar2);
                    aVar.remove(d2);
                    aVar2.remove(view);
                }
            }
        }
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void c(View view) {
        if (this.D) {
            return;
        }
        a.e.a<Animator, d> C = C();
        int size = C.size();
        e0 d2 = x.d(view);
        for (int i2 = size - 1; i2 >= 0; i2--) {
            d d3 = C.d(i2);
            if (d3.f2929a != null && d2.equals(d3.f2932d)) {
                androidx.transition.a.a(C.b(i2));
            }
        }
        ArrayList<f> arrayList = this.E;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.E.clone();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((f) arrayList2.get(i3)).b(this);
            }
        }
        this.C = true;
    }

    @Nullable
    public m b(@NonNull View view, boolean z) {
        TransitionSet transitionSet = this.v;
        if (transitionSet != null) {
            return transitionSet.b(view, z);
        }
        return (z ? this.t : this.u).f2985a.get(view);
    }

    @NonNull
    public Transition b(@NonNull f fVar) {
        ArrayList<f> arrayList = this.E;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(fVar);
        if (this.E.size() == 0) {
            this.E = null;
        }
        return this;
    }

    private void a(a.e.a<View, m> aVar, a.e.a<View, m> aVar2) {
        for (int i2 = 0; i2 < aVar.size(); i2++) {
            m d2 = aVar.d(i2);
            if (b(d2.f2983b)) {
                this.x.add(d2);
                this.y.add(null);
            }
        }
        for (int i3 = 0; i3 < aVar2.size(); i3++) {
            m d3 = aVar2.d(i3);
            if (b(d3.f2983b)) {
                this.y.add(d3);
                this.x.add(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(m mVar) {
        String[] a2;
        if (this.G == null || mVar.f2982a.isEmpty() || (a2 = this.G.a()) == null) {
            return;
        }
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= a2.length) {
                z = true;
                break;
            } else if (!mVar.f2982a.containsKey(a2[i2])) {
                break;
            } else {
                i2++;
            }
        }
        if (z) {
            return;
        }
        this.G.a(mVar);
    }

    @Nullable
    public e c() {
        return this.H;
    }

    private void a(n nVar, n nVar2) {
        a.e.a<View, m> aVar = new a.e.a<>(nVar.f2985a);
        a.e.a<View, m> aVar2 = new a.e.a<>(nVar2.f2985a);
        int i2 = 0;
        while (true) {
            int[] iArr = this.w;
            if (i2 < iArr.length) {
                int i3 = iArr[i2];
                if (i3 == 1) {
                    b(aVar, aVar2);
                } else if (i3 == 2) {
                    a(aVar, aVar2, nVar.f2988d, nVar2.f2988d);
                } else if (i3 == 3) {
                    a(aVar, aVar2, nVar.f2986b, nVar2.f2986b);
                } else if (i3 == 4) {
                    a(aVar, aVar2, nVar.f2987c, nVar2.f2987c);
                }
                i2++;
            } else {
                a(aVar, aVar2);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void a(ViewGroup viewGroup, n nVar, n nVar2, ArrayList<m> arrayList, ArrayList<m> arrayList2) {
        Animator a2;
        int i2;
        int i3;
        View view;
        Animator animator;
        m mVar;
        Animator animator2;
        m mVar2;
        a.e.a<Animator, d> C = C();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long j2 = Long.MAX_VALUE;
        int i4 = 0;
        while (i4 < size) {
            m mVar3 = arrayList.get(i4);
            m mVar4 = arrayList2.get(i4);
            if (mVar3 != null && !mVar3.f2984c.contains(this)) {
                mVar3 = null;
            }
            if (mVar4 != null && !mVar4.f2984c.contains(this)) {
                mVar4 = null;
            }
            if (mVar3 != null || mVar4 != null) {
                if ((mVar3 == null || mVar4 == null || a(mVar3, mVar4)) && (a2 = a(viewGroup, mVar3, mVar4)) != null) {
                    if (mVar4 != null) {
                        view = mVar4.f2983b;
                        String[] z = z();
                        if (view == null || z == null || z.length <= 0) {
                            i2 = size;
                            i3 = i4;
                            animator2 = a2;
                            mVar2 = null;
                        } else {
                            mVar2 = new m();
                            mVar2.f2983b = view;
                            i2 = size;
                            m mVar5 = nVar2.f2985a.get(view);
                            if (mVar5 != null) {
                                int i5 = 0;
                                while (i5 < z.length) {
                                    mVar2.f2982a.put(z[i5], mVar5.f2982a.get(z[i5]));
                                    i5++;
                                    i4 = i4;
                                    mVar5 = mVar5;
                                }
                            }
                            i3 = i4;
                            int size2 = C.size();
                            int i6 = 0;
                            while (true) {
                                if (i6 >= size2) {
                                    animator2 = a2;
                                    break;
                                }
                                d dVar = C.get(C.b(i6));
                                if (dVar.f2931c != null && dVar.f2929a == view && dVar.f2930b.equals(e()) && dVar.f2931c.equals(mVar2)) {
                                    animator2 = null;
                                    break;
                                }
                                i6++;
                            }
                        }
                        animator = animator2;
                        mVar = mVar2;
                    } else {
                        i2 = size;
                        i3 = i4;
                        view = mVar3.f2983b;
                        animator = a2;
                        mVar = null;
                    }
                    if (animator != null) {
                        k kVar = this.G;
                        if (kVar != null) {
                            long a3 = kVar.a(viewGroup, this, mVar3, mVar4);
                            sparseIntArray.put(this.F.size(), (int) a3);
                            j2 = Math.min(a3, j2);
                        }
                        C.put(animator, new d(view, e(), this, x.d(viewGroup), mVar));
                        this.F.add(animator);
                        j2 = j2;
                    }
                    i4 = i3 + 1;
                    size = i2;
                }
            }
            i2 = size;
            i3 = i4;
            i4 = i3 + 1;
            size = i2;
        }
        if (j2 != 0) {
            for (int i7 = 0; i7 < sparseIntArray.size(); i7++) {
                Animator animator3 = this.F.get(sparseIntArray.keyAt(i7));
                animator3.setStartDelay((sparseIntArray.valueAt(i7) - j2) + animator3.getStartDelay());
            }
        }
    }

    private void a(Animator animator, a.e.a<Animator, d> aVar) {
        if (animator != null) {
            animator.addListener(new b(aVar));
            a(animator);
        }
    }

    @NonNull
    public Transition a(@NonNull View view) {
        this.f2923j.add(view);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ViewGroup viewGroup, boolean z) {
        ArrayList<String> arrayList;
        ArrayList<Class> arrayList2;
        a.e.a<String, String> aVar;
        a(z);
        if ((this.f2922i.size() <= 0 && this.f2923j.size() <= 0) || (((arrayList = this.f2924k) != null && !arrayList.isEmpty()) || ((arrayList2 = this.f2925l) != null && !arrayList2.isEmpty()))) {
            c(viewGroup, z);
        } else {
            for (int i2 = 0; i2 < this.f2922i.size(); i2++) {
                View findViewById = viewGroup.findViewById(this.f2922i.get(i2).intValue());
                if (findViewById != null) {
                    m mVar = new m();
                    mVar.f2983b = findViewById;
                    if (z) {
                        c(mVar);
                    } else {
                        a(mVar);
                    }
                    mVar.f2984c.add(this);
                    b(mVar);
                    if (z) {
                        a(this.t, findViewById, mVar);
                    } else {
                        a(this.u, findViewById, mVar);
                    }
                }
            }
            for (int i3 = 0; i3 < this.f2923j.size(); i3++) {
                View view = this.f2923j.get(i3);
                m mVar2 = new m();
                mVar2.f2983b = view;
                if (z) {
                    c(mVar2);
                } else {
                    a(mVar2);
                }
                mVar2.f2984c.add(this);
                b(mVar2);
                if (z) {
                    a(this.t, view, mVar2);
                } else {
                    a(this.u, view, mVar2);
                }
            }
        }
        if (z || (aVar = this.I) == null) {
            return;
        }
        int size = aVar.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            arrayList3.add(this.t.f2988d.remove(this.I.b(i4)));
        }
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = (View) arrayList3.get(i5);
            if (view2 != null) {
                this.t.f2988d.put(this.I.d(i5), view2);
            }
        }
    }

    private static void a(n nVar, View view, m mVar) {
        nVar.f2985a.put(view, mVar);
        int id = view.getId();
        if (id >= 0) {
            if (nVar.f2986b.indexOfKey(id) >= 0) {
                nVar.f2986b.put(id, null);
            } else {
                nVar.f2986b.put(id, view);
            }
        }
        String u = ViewCompat.u(view);
        if (u != null) {
            if (nVar.f2988d.containsKey(u)) {
                nVar.f2988d.put(u, null);
            } else {
                nVar.f2988d.put(u, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (nVar.f2987c.b(itemIdAtPosition) >= 0) {
                    View a2 = nVar.f2987c.a(itemIdAtPosition);
                    if (a2 != null) {
                        ViewCompat.b(a2, false);
                        nVar.f2987c.c(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                ViewCompat.b(view, true);
                nVar.f2987c.c(itemIdAtPosition, view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        if (z) {
            this.t.f2985a.clear();
            this.t.f2986b.clear();
            this.t.f2987c.a();
        } else {
            this.u.f2985a.clear();
            this.u.f2986b.clear();
            this.u.f2987c.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m a(View view, boolean z) {
        TransitionSet transitionSet = this.v;
        if (transitionSet != null) {
            return transitionSet.a(view, z);
        }
        ArrayList<m> arrayList = z ? this.x : this.y;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i2 = -1;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            m mVar = arrayList.get(i3);
            if (mVar == null) {
                return null;
            }
            if (mVar.f2983b == view) {
                i2 = i3;
                break;
            }
            i3++;
        }
        if (i2 >= 0) {
            return (z ? this.y : this.x).get(i2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ViewGroup viewGroup) {
        d dVar;
        this.x = new ArrayList<>();
        this.y = new ArrayList<>();
        a(this.t, this.u);
        a.e.a<Animator, d> C = C();
        int size = C.size();
        e0 d2 = x.d(viewGroup);
        for (int i2 = size - 1; i2 >= 0; i2--) {
            Animator b2 = C.b(i2);
            if (b2 != null && (dVar = C.get(b2)) != null && dVar.f2929a != null && d2.equals(dVar.f2932d)) {
                m mVar = dVar.f2931c;
                View view = dVar.f2929a;
                m b3 = b(view, true);
                m a2 = a(view, true);
                if (!(b3 == null && a2 == null) && dVar.f2933e.a(mVar, a2)) {
                    if (!b2.isRunning() && !b2.isStarted()) {
                        C.remove(b2);
                    } else {
                        b2.cancel();
                    }
                }
            }
        }
        a(viewGroup, this.t, this.u, this.x, this.y);
        A();
    }

    public boolean a(@Nullable m mVar, @Nullable m mVar2) {
        if (mVar == null || mVar2 == null) {
            return false;
        }
        String[] z = z();
        if (z != null) {
            for (String str : z) {
                if (!a(mVar, mVar2, str)) {
                }
            }
            return false;
        }
        Iterator<String> it = mVar.f2982a.keySet().iterator();
        while (it.hasNext()) {
            if (a(mVar, mVar2, it.next())) {
            }
        }
        return false;
        return true;
    }

    private static boolean a(m mVar, m mVar2, String str) {
        Object obj = mVar.f2982a.get(str);
        Object obj2 = mVar2.f2982a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    protected void a(Animator animator) {
        if (animator == null) {
            a();
            return;
        }
        if (b() >= 0) {
            animator.setDuration(b());
        }
        if (h() >= 0) {
            animator.setStartDelay(h());
        }
        if (d() != null) {
            animator.setInterpolator(d());
        }
        animator.addListener(new c());
        animator.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void a() {
        this.B--;
        if (this.B == 0) {
            ArrayList<f> arrayList = this.E;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.E.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((f) arrayList2.get(i2)).c(this);
                }
            }
            for (int i3 = 0; i3 < this.t.f2987c.b(); i3++) {
                View c2 = this.t.f2987c.c(i3);
                if (c2 != null) {
                    ViewCompat.b(c2, false);
                }
            }
            for (int i4 = 0; i4 < this.u.f2987c.b(); i4++) {
                View c3 = this.u.f2987c.c(i4);
                if (c3 != null) {
                    ViewCompat.b(c3, false);
                }
            }
            this.D = true;
        }
    }

    @NonNull
    public Transition a(@NonNull f fVar) {
        if (this.E == null) {
            this.E = new ArrayList<>();
        }
        this.E.add(fVar);
        return this;
    }

    public void a(@Nullable PathMotion pathMotion) {
        if (pathMotion == null) {
            this.J = L;
        } else {
            this.J = pathMotion;
        }
    }

    public void a(@Nullable e eVar) {
        this.H = eVar;
    }

    public void a(@Nullable k kVar) {
        this.G = kVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f2920g != -1) {
            str2 = str2 + "dur(" + this.f2920g + ") ";
        }
        if (this.f2919f != -1) {
            str2 = str2 + "dly(" + this.f2919f + ") ";
        }
        if (this.f2921h != null) {
            str2 = str2 + "interp(" + this.f2921h + ") ";
        }
        if (this.f2922i.size() <= 0 && this.f2923j.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.f2922i.size() > 0) {
            String str4 = str3;
            for (int i2 = 0; i2 < this.f2922i.size(); i2++) {
                if (i2 > 0) {
                    str4 = str4 + ", ";
                }
                str4 = str4 + this.f2922i.get(i2);
            }
            str3 = str4;
        }
        if (this.f2923j.size() > 0) {
            for (int i3 = 0; i3 < this.f2923j.size(); i3++) {
                if (i3 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.f2923j.get(i3);
            }
        }
        return str3 + ")";
    }
}
