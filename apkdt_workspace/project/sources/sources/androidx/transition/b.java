package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FragmentTransitionSupport.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class b extends androidx.fragment.app.m {

    /* compiled from: FragmentTransitionSupport.java */
    /* loaded from: classes.dex */
    class a extends Transition.e {
        a(b bVar, Rect rect) {
        }
    }

    /* compiled from: FragmentTransitionSupport.java */
    /* renamed from: androidx.transition.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0052b implements Transition.f {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f2952e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f2953f;

        C0052b(b bVar, View view, ArrayList arrayList) {
            this.f2952e = view;
            this.f2953f = arrayList;
        }

        @Override // androidx.transition.Transition.f
        public void a(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.f
        public void b(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.f
        public void c(@NonNull Transition transition) {
            transition.b(this);
            this.f2952e.setVisibility(8);
            int size = this.f2953f.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((View) this.f2953f.get(i2)).setVisibility(0);
            }
        }

        @Override // androidx.transition.Transition.f
        public void d(@NonNull Transition transition) {
        }
    }

    /* compiled from: FragmentTransitionSupport.java */
    /* loaded from: classes.dex */
    class c implements Transition.f {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f2954e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f2955f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Object f2956g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ ArrayList f2957h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ Object f2958i;

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ ArrayList f2959j;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f2954e = obj;
            this.f2955f = arrayList;
            this.f2956g = obj2;
            this.f2957h = arrayList2;
            this.f2958i = obj3;
            this.f2959j = arrayList3;
        }

        @Override // androidx.transition.Transition.f
        public void a(@NonNull Transition transition) {
            Object obj = this.f2954e;
            if (obj != null) {
                b.this.a(obj, this.f2955f, (ArrayList<View>) null);
            }
            Object obj2 = this.f2956g;
            if (obj2 != null) {
                b.this.a(obj2, this.f2957h, (ArrayList<View>) null);
            }
            Object obj3 = this.f2958i;
            if (obj3 != null) {
                b.this.a(obj3, this.f2959j, (ArrayList<View>) null);
            }
        }

        @Override // androidx.transition.Transition.f
        public void b(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.f
        public void c(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.f
        public void d(@NonNull Transition transition) {
        }
    }

    /* compiled from: FragmentTransitionSupport.java */
    /* loaded from: classes.dex */
    class d extends Transition.e {
        d(b bVar, Rect rect) {
        }
    }

    @Override // androidx.fragment.app.m
    public boolean a(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.m
    public Object b(Object obj) {
        if (obj != null) {
            return ((Transition) obj).mo4clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.m
    public Object c(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.a((Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.m
    public void a(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        int i2 = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int C = transitionSet.C();
            while (i2 < C) {
                a(transitionSet.a(i2), arrayList);
                i2++;
            }
            return;
        }
        if (a(transition) || !androidx.fragment.app.m.a((List) transition.y())) {
            return;
        }
        int size = arrayList.size();
        while (i2 < size) {
            transition.a(arrayList.get(i2));
            i2++;
        }
    }

    @Override // androidx.fragment.app.m
    public void b(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> y = transitionSet.y();
        y.clear();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            androidx.fragment.app.m.a(y, arrayList.get(i2));
        }
        y.add(view);
        arrayList.add(view);
        a(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.m
    public void c(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            a(view, rect);
            ((Transition) obj).a(new a(this, rect));
        }
    }

    @Override // androidx.fragment.app.m
    public Object b(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.a((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.a((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.a((Transition) obj3);
        }
        return transitionSet;
    }

    private static boolean a(Transition transition) {
        return (androidx.fragment.app.m.a((List) transition.n()) && androidx.fragment.app.m.a((List) transition.w()) && androidx.fragment.app.m.a((List) transition.x())) ? false : true;
    }

    @Override // androidx.fragment.app.m
    public void b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.y().clear();
            transitionSet.y().addAll(arrayList2);
            a((Object) transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.m
    public void a(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).a(new C0052b(this, view, arrayList));
    }

    @Override // androidx.fragment.app.m
    public Object a(Object obj, Object obj2, Object obj3) {
        Transition transition = (Transition) obj;
        Transition transition2 = (Transition) obj2;
        Transition transition3 = (Transition) obj3;
        if (transition != null && transition2 != null) {
            TransitionSet transitionSet = new TransitionSet();
            transitionSet.a(transition);
            transitionSet.a(transition2);
            transitionSet.b(1);
            transition = transitionSet;
        } else if (transition == null) {
            transition = transition2 != null ? transition2 : null;
        }
        if (transition3 == null) {
            return transition;
        }
        TransitionSet transitionSet2 = new TransitionSet();
        if (transition != null) {
            transitionSet2.a(transition);
        }
        transitionSet2.a(transition3);
        return transitionSet2;
    }

    @Override // androidx.fragment.app.m
    public void b(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).d(view);
        }
    }

    @Override // androidx.fragment.app.m
    public void a(ViewGroup viewGroup, Object obj) {
        j.a(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.m
    public void a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).a(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.m
    public void a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        Transition transition = (Transition) obj;
        int i2 = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int C = transitionSet.C();
            while (i2 < C) {
                a((Object) transitionSet.a(i2), arrayList, arrayList2);
                i2++;
            }
            return;
        }
        if (a(transition)) {
            return;
        }
        List<View> y = transition.y();
        if (y.size() == arrayList.size() && y.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i2 < size) {
                transition.a(arrayList2.get(i2));
                i2++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.d(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.m
    public void a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).a(view);
        }
    }

    @Override // androidx.fragment.app.m
    public void a(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).a(new d(this, rect));
        }
    }
}
