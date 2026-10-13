package androidx.fragment.app;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.core.view.t;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentTransition.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f2261a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b, reason: collision with root package name */
    private static final m f2262b;

    /* renamed from: c, reason: collision with root package name */
    private static final m f2263c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public static class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ArrayList f2264e;

        a(ArrayList arrayList) {
            this.f2264e = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            k.a((ArrayList<View>) this.f2264e, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public static class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f2265e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ m f2266f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ View f2267g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ Fragment f2268h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ ArrayList f2269i;

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ ArrayList f2270j;

        /* renamed from: k, reason: collision with root package name */
        final /* synthetic */ ArrayList f2271k;

        /* renamed from: l, reason: collision with root package name */
        final /* synthetic */ Object f2272l;

        b(Object obj, m mVar, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f2265e = obj;
            this.f2266f = mVar;
            this.f2267g = view;
            this.f2268h = fragment;
            this.f2269i = arrayList;
            this.f2270j = arrayList2;
            this.f2271k = arrayList3;
            this.f2272l = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f2265e;
            if (obj != null) {
                this.f2266f.b(obj, this.f2267g);
                this.f2270j.addAll(k.a(this.f2266f, this.f2265e, this.f2268h, (ArrayList<View>) this.f2269i, this.f2267g));
            }
            if (this.f2271k != null) {
                if (this.f2272l != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.f2267g);
                    this.f2266f.a(this.f2272l, this.f2271k, arrayList);
                }
                this.f2271k.clear();
                this.f2271k.add(this.f2267g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public static class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Fragment f2273e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Fragment f2274f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ boolean f2275g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ a.e.a f2276h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ View f2277i;

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ m f2278j;

        /* renamed from: k, reason: collision with root package name */
        final /* synthetic */ Rect f2279k;

        c(Fragment fragment, Fragment fragment2, boolean z, a.e.a aVar, View view, m mVar, Rect rect) {
            this.f2273e = fragment;
            this.f2274f = fragment2;
            this.f2275g = z;
            this.f2276h = aVar;
            this.f2277i = view;
            this.f2278j = mVar;
            this.f2279k = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            k.a(this.f2273e, this.f2274f, this.f2275g, (a.e.a<String, View>) this.f2276h, false);
            View view = this.f2277i;
            if (view != null) {
                this.f2278j.a(view, this.f2279k);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public static class d implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ m f2280e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ a.e.a f2281f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Object f2282g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ e f2283h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ ArrayList f2284i;

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ View f2285j;

        /* renamed from: k, reason: collision with root package name */
        final /* synthetic */ Fragment f2286k;

        /* renamed from: l, reason: collision with root package name */
        final /* synthetic */ Fragment f2287l;
        final /* synthetic */ boolean m;
        final /* synthetic */ ArrayList n;
        final /* synthetic */ Object o;
        final /* synthetic */ Rect p;

        d(m mVar, a.e.a aVar, Object obj, e eVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f2280e = mVar;
            this.f2281f = aVar;
            this.f2282g = obj;
            this.f2283h = eVar;
            this.f2284i = arrayList;
            this.f2285j = view;
            this.f2286k = fragment;
            this.f2287l = fragment2;
            this.m = z;
            this.n = arrayList2;
            this.o = obj2;
            this.p = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.e.a<String, View> a2 = k.a(this.f2280e, (a.e.a<String, String>) this.f2281f, this.f2282g, this.f2283h);
            if (a2 != null) {
                this.f2284i.addAll(a2.values());
                this.f2284i.add(this.f2285j);
            }
            k.a(this.f2286k, this.f2287l, this.m, a2, false);
            Object obj = this.f2282g;
            if (obj != null) {
                this.f2280e.b(obj, this.n, this.f2284i);
                View a3 = k.a(a2, this.f2283h, this.o, this.m);
                if (a3 != null) {
                    this.f2280e.a(a3, this.p);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public Fragment f2288a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f2289b;

        /* renamed from: c, reason: collision with root package name */
        public androidx.fragment.app.a f2290c;

        /* renamed from: d, reason: collision with root package name */
        public Fragment f2291d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f2292e;

        /* renamed from: f, reason: collision with root package name */
        public androidx.fragment.app.a f2293f;

        e() {
        }
    }

    static {
        f2262b = Build.VERSION.SDK_INT >= 21 ? new l() : null;
        f2263c = a();
    }

    private static m a() {
        try {
            return (m) Class.forName("androidx.transition.b").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    private static void b(h hVar, int i2, e eVar, View view, a.e.a<String, String> aVar) {
        Fragment fragment;
        Fragment fragment2;
        m a2;
        Object obj;
        ViewGroup viewGroup = hVar.v.a() ? (ViewGroup) hVar.v.a(i2) : null;
        if (viewGroup == null || (a2 = a((fragment2 = eVar.f2291d), (fragment = eVar.f2288a))) == null) {
            return;
        }
        boolean z = eVar.f2289b;
        boolean z2 = eVar.f2292e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object a3 = a(a2, fragment, z);
        Object b2 = b(a2, fragment2, z2);
        Object b3 = b(a2, viewGroup, view, aVar, eVar, arrayList2, arrayList, a3, b2);
        if (a3 == null && b3 == null) {
            obj = b2;
            if (obj == null) {
                return;
            }
        } else {
            obj = b2;
        }
        ArrayList<View> a4 = a(a2, obj, fragment2, arrayList2, view);
        ArrayList<View> a5 = a(a2, a3, fragment, arrayList, view);
        a(a5, 4);
        Object a6 = a(a2, a3, obj, b3, fragment, z);
        if (a6 != null) {
            a(a2, obj, fragment2, a4);
            ArrayList<String> a7 = a2.a(arrayList);
            a2.a(a6, a3, a5, obj, a4, b3, arrayList);
            a2.a(viewGroup, a6);
            a2.a(viewGroup, arrayList2, arrayList, a7, aVar);
            a(a5, 0);
            a2.b(b3, arrayList2, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(h hVar, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, boolean z) {
        if (hVar.t < 1) {
            return;
        }
        SparseArray sparseArray = new SparseArray();
        for (int i4 = i2; i4 < i3; i4++) {
            androidx.fragment.app.a aVar = arrayList.get(i4);
            if (arrayList2.get(i4).booleanValue()) {
                b(aVar, (SparseArray<e>) sparseArray, z);
            } else {
                a(aVar, (SparseArray<e>) sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(hVar.u.c());
            int size = sparseArray.size();
            for (int i5 = 0; i5 < size; i5++) {
                int keyAt = sparseArray.keyAt(i5);
                a.e.a<String, String> a2 = a(keyAt, arrayList, arrayList2, i2, i3);
                e eVar = (e) sparseArray.valueAt(i5);
                if (z) {
                    b(hVar, keyAt, eVar, view, a2);
                } else {
                    a(hVar, keyAt, eVar, view, a2);
                }
            }
        }
    }

    private static a.e.a<String, String> a(int i2, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i3, int i4) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        a.e.a<String, String> aVar = new a.e.a<>();
        for (int i5 = i4 - 1; i5 >= i3; i5--) {
            androidx.fragment.app.a aVar2 = arrayList.get(i5);
            if (aVar2.b(i2)) {
                boolean booleanValue = arrayList2.get(i5).booleanValue();
                ArrayList<String> arrayList5 = aVar2.o;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (booleanValue) {
                        arrayList3 = aVar2.o;
                        arrayList4 = aVar2.p;
                    } else {
                        ArrayList<String> arrayList6 = aVar2.o;
                        arrayList3 = aVar2.p;
                        arrayList4 = arrayList6;
                    }
                    for (int i6 = 0; i6 < size; i6++) {
                        String str = arrayList4.get(i6);
                        String str2 = arrayList3.get(i6);
                        String remove = aVar.remove(str2);
                        if (remove != null) {
                            aVar.put(str, remove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    private static Object b(m mVar, Fragment fragment, boolean z) {
        Object exitTransition;
        if (fragment == null) {
            return null;
        }
        if (z) {
            exitTransition = fragment.getReturnTransition();
        } else {
            exitTransition = fragment.getExitTransition();
        }
        return mVar.b(exitTransition);
    }

    private static Object b(m mVar, ViewGroup viewGroup, View view, a.e.a<String, String> aVar, e eVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        Fragment fragment = eVar.f2288a;
        Fragment fragment2 = eVar.f2291d;
        if (fragment != null) {
            fragment.requireView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = eVar.f2289b;
        Object a2 = aVar.isEmpty() ? null : a(mVar, fragment, fragment2, z);
        a.e.a<String, View> b2 = b(mVar, aVar, a2, eVar);
        a.e.a<String, View> a3 = a(mVar, aVar, a2, eVar);
        if (aVar.isEmpty()) {
            if (b2 != null) {
                b2.clear();
            }
            if (a3 != null) {
                a3.clear();
            }
            obj3 = null;
        } else {
            a(arrayList, b2, aVar.keySet());
            a(arrayList2, a3, aVar.values());
            obj3 = a2;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        a(fragment, fragment2, z, b2, true);
        if (obj3 != null) {
            arrayList2.add(view);
            mVar.b(obj3, view, arrayList);
            a(mVar, obj3, obj2, b2, eVar.f2292e, eVar.f2293f);
            Rect rect2 = new Rect();
            View a4 = a(a3, eVar, obj, z);
            if (a4 != null) {
                mVar.a(obj, rect2);
            }
            rect = rect2;
            view2 = a4;
        } else {
            view2 = null;
            rect = null;
        }
        t.a(viewGroup, new c(fragment, fragment2, z, a3, view2, mVar, rect));
        return obj3;
    }

    private static void a(m mVar, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.mAdded && fragment.mHidden && fragment.mHiddenChanged) {
            fragment.setHideReplaced(true);
            mVar.a(obj, fragment.getView(), arrayList);
            t.a(fragment.mContainer, new a(arrayList));
        }
    }

    private static void a(h hVar, int i2, e eVar, View view, a.e.a<String, String> aVar) {
        Fragment fragment;
        Fragment fragment2;
        m a2;
        Object obj;
        ViewGroup viewGroup = hVar.v.a() ? (ViewGroup) hVar.v.a(i2) : null;
        if (viewGroup == null || (a2 = a((fragment2 = eVar.f2291d), (fragment = eVar.f2288a))) == null) {
            return;
        }
        boolean z = eVar.f2289b;
        boolean z2 = eVar.f2292e;
        Object a3 = a(a2, fragment, z);
        Object b2 = b(a2, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object a4 = a(a2, viewGroup, view, aVar, eVar, (ArrayList<View>) arrayList, arrayList2, a3, b2);
        if (a3 == null && a4 == null) {
            obj = b2;
            if (obj == null) {
                return;
            }
        } else {
            obj = b2;
        }
        ArrayList<View> a5 = a(a2, obj, fragment2, (ArrayList<View>) arrayList, view);
        Object obj2 = (a5 == null || a5.isEmpty()) ? null : obj;
        a2.a(a3, view);
        Object a6 = a(a2, a3, obj2, a4, fragment, eVar.f2289b);
        if (a6 != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            a2.a(a6, a3, arrayList3, obj2, a5, a4, arrayList2);
            a(a2, viewGroup, fragment, view, arrayList2, a3, arrayList3, obj2, a5);
            a2.a((View) viewGroup, arrayList2, (Map<String, String>) aVar);
            a2.a(viewGroup, a6);
            a2.a(viewGroup, arrayList2, (Map<String, String>) aVar);
        }
    }

    private static a.e.a<String, View> b(m mVar, a.e.a<String, String> aVar, Object obj, e eVar) {
        androidx.core.app.l exitTransitionCallback;
        ArrayList<String> arrayList;
        if (!aVar.isEmpty() && obj != null) {
            Fragment fragment = eVar.f2291d;
            a.e.a<String, View> aVar2 = new a.e.a<>();
            mVar.a((Map<String, View>) aVar2, fragment.requireView());
            androidx.fragment.app.a aVar3 = eVar.f2293f;
            if (eVar.f2292e) {
                exitTransitionCallback = fragment.getEnterTransitionCallback();
                arrayList = aVar3.p;
            } else {
                exitTransitionCallback = fragment.getExitTransitionCallback();
                arrayList = aVar3.o;
            }
            aVar2.a((Collection<?>) arrayList);
            if (exitTransitionCallback != null) {
                exitTransitionCallback.a(arrayList, aVar2);
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    String str = arrayList.get(size);
                    View view = aVar2.get(str);
                    if (view == null) {
                        aVar.remove(str);
                    } else if (!str.equals(ViewCompat.u(view))) {
                        aVar.put(ViewCompat.u(view), aVar.remove(str));
                    }
                }
            } else {
                aVar.a((Collection<?>) aVar2.keySet());
            }
            return aVar2;
        }
        aVar.clear();
        return null;
    }

    private static void a(m mVar, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        t.a(viewGroup, new b(obj, mVar, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }

    private static m a(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        m mVar = f2262b;
        if (mVar != null && a(mVar, arrayList)) {
            return f2262b;
        }
        m mVar2 = f2263c;
        if (mVar2 != null && a(mVar2, arrayList)) {
            return f2263c;
        }
        if (f2262b == null && f2263c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    public static void b(androidx.fragment.app.a aVar, SparseArray<e> sparseArray, boolean z) {
        if (aVar.s.v.a()) {
            for (int size = aVar.f2241a.size() - 1; size >= 0; size--) {
                a(aVar, aVar.f2241a.get(size), sparseArray, true, z);
            }
        }
    }

    private static boolean a(m mVar, List<Object> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!mVar.a(list.get(i2))) {
                return false;
            }
        }
        return true;
    }

    private static Object a(m mVar, Fragment fragment, Fragment fragment2, boolean z) {
        Object sharedElementEnterTransition;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        if (z) {
            sharedElementEnterTransition = fragment2.getSharedElementReturnTransition();
        } else {
            sharedElementEnterTransition = fragment.getSharedElementEnterTransition();
        }
        return mVar.c(mVar.b(sharedElementEnterTransition));
    }

    private static Object a(m mVar, Fragment fragment, boolean z) {
        Object enterTransition;
        if (fragment == null) {
            return null;
        }
        if (z) {
            enterTransition = fragment.getReenterTransition();
        } else {
            enterTransition = fragment.getEnterTransition();
        }
        return mVar.b(enterTransition);
    }

    private static void a(ArrayList<View> arrayList, a.e.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View d2 = aVar.d(size);
            if (collection.contains(ViewCompat.u(d2))) {
                arrayList.add(d2);
            }
        }
    }

    private static Object a(m mVar, ViewGroup viewGroup, View view, a.e.a<String, String> aVar, e eVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object a2;
        a.e.a<String, String> aVar2;
        Object obj3;
        Rect rect;
        Fragment fragment = eVar.f2288a;
        Fragment fragment2 = eVar.f2291d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = eVar.f2289b;
        if (aVar.isEmpty()) {
            aVar2 = aVar;
            a2 = null;
        } else {
            a2 = a(mVar, fragment, fragment2, z);
            aVar2 = aVar;
        }
        a.e.a<String, View> b2 = b(mVar, aVar2, a2, eVar);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(b2.values());
            obj3 = a2;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        a(fragment, fragment2, z, b2, true);
        if (obj3 != null) {
            rect = new Rect();
            mVar.b(obj3, view, arrayList);
            a(mVar, obj3, obj2, b2, eVar.f2292e, eVar.f2293f);
            if (obj != null) {
                mVar.a(obj, rect);
            }
        } else {
            rect = null;
        }
        t.a(viewGroup, new d(mVar, aVar, obj3, eVar, arrayList2, view, fragment, fragment2, z, arrayList, obj, rect));
        return obj3;
    }

    static a.e.a<String, View> a(m mVar, a.e.a<String, String> aVar, Object obj, e eVar) {
        androidx.core.app.l enterTransitionCallback;
        ArrayList<String> arrayList;
        String a2;
        Fragment fragment = eVar.f2288a;
        View view = fragment.getView();
        if (!aVar.isEmpty() && obj != null && view != null) {
            a.e.a<String, View> aVar2 = new a.e.a<>();
            mVar.a((Map<String, View>) aVar2, view);
            androidx.fragment.app.a aVar3 = eVar.f2290c;
            if (eVar.f2289b) {
                enterTransitionCallback = fragment.getExitTransitionCallback();
                arrayList = aVar3.o;
            } else {
                enterTransitionCallback = fragment.getEnterTransitionCallback();
                arrayList = aVar3.p;
            }
            if (arrayList != null) {
                aVar2.a((Collection<?>) arrayList);
                aVar2.a((Collection<?>) aVar.values());
            }
            if (enterTransitionCallback != null) {
                enterTransitionCallback.a(arrayList, aVar2);
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    String str = arrayList.get(size);
                    View view2 = aVar2.get(str);
                    if (view2 == null) {
                        String a3 = a(aVar, str);
                        if (a3 != null) {
                            aVar.remove(a3);
                        }
                    } else if (!str.equals(ViewCompat.u(view2)) && (a2 = a(aVar, str)) != null) {
                        aVar.put(a2, ViewCompat.u(view2));
                    }
                }
            } else {
                a(aVar, aVar2);
            }
            return aVar2;
        }
        aVar.clear();
        return null;
    }

    private static String a(a.e.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (str.equals(aVar.d(i2))) {
                return aVar.b(i2);
            }
        }
        return null;
    }

    static View a(a.e.a<String, View> aVar, e eVar, Object obj, boolean z) {
        ArrayList<String> arrayList;
        String str;
        androidx.fragment.app.a aVar2 = eVar.f2290c;
        if (obj == null || aVar == null || (arrayList = aVar2.o) == null || arrayList.isEmpty()) {
            return null;
        }
        if (z) {
            str = aVar2.o.get(0);
        } else {
            str = aVar2.p.get(0);
        }
        return aVar.get(str);
    }

    private static void a(m mVar, Object obj, Object obj2, a.e.a<String, View> aVar, boolean z, androidx.fragment.app.a aVar2) {
        String str;
        ArrayList<String> arrayList = aVar2.o;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (z) {
            str = aVar2.p.get(0);
        } else {
            str = aVar2.o.get(0);
        }
        View view = aVar.get(str);
        mVar.c(obj, view);
        if (obj2 != null) {
            mVar.c(obj2, view);
        }
    }

    private static void a(a.e.a<String, String> aVar, a.e.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.d(size))) {
                aVar.c(size);
            }
        }
    }

    static void a(Fragment fragment, Fragment fragment2, boolean z, a.e.a<String, View> aVar, boolean z2) {
        androidx.core.app.l enterTransitionCallback;
        if (z) {
            enterTransitionCallback = fragment2.getEnterTransitionCallback();
        } else {
            enterTransitionCallback = fragment.getEnterTransitionCallback();
        }
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList2.add(aVar.b(i2));
                arrayList.add(aVar.d(i2));
            }
            if (z2) {
                enterTransitionCallback.b(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.a(arrayList2, arrayList, (List<View>) null);
            }
        }
    }

    static ArrayList<View> a(m mVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View view2 = fragment.getView();
        if (view2 != null) {
            mVar.a(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        mVar.a(obj, arrayList2);
        return arrayList2;
    }

    static void a(ArrayList<View> arrayList, int i2) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i2);
        }
    }

    private static Object a(m mVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        boolean z2;
        if (obj == null || obj2 == null || fragment == null) {
            z2 = true;
        } else if (z) {
            z2 = fragment.getAllowReturnTransitionOverlap();
        } else {
            z2 = fragment.getAllowEnterTransitionOverlap();
        }
        if (z2) {
            return mVar.b(obj2, obj, obj3);
        }
        return mVar.a(obj2, obj, obj3);
    }

    public static void a(androidx.fragment.app.a aVar, SparseArray<e> sparseArray, boolean z) {
        int size = aVar.f2241a.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(aVar, aVar.f2241a.get(i2), sparseArray, false, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0092, code lost:
    
        if (r10.mHidden == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0041, code lost:
    
        if (r10.mAdded != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0094, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0076, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(androidx.fragment.app.a r16, androidx.fragment.app.j.a r17, android.util.SparseArray<androidx.fragment.app.k.e> r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.k.a(androidx.fragment.app.a, androidx.fragment.app.j$a, android.util.SparseArray, boolean, boolean):void");
    }

    private static e a(e eVar, SparseArray<e> sparseArray, int i2) {
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e();
        sparseArray.put(i2, eVar2);
        return eVar2;
    }
}
