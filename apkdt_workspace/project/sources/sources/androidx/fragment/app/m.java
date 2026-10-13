package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.t;
import androidx.core.view.y;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: FragmentTransitionImpl.java */
@SuppressLint({"UnknownNullness"})
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class m {

    /* compiled from: FragmentTransitionImpl.java */
    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f2305e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f2306f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ ArrayList f2307g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ ArrayList f2308h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ ArrayList f2309i;

        a(m mVar, int i2, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f2305e = i2;
            this.f2306f = arrayList;
            this.f2307g = arrayList2;
            this.f2308h = arrayList3;
            this.f2309i = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i2 = 0; i2 < this.f2305e; i2++) {
                ViewCompat.a((View) this.f2306f.get(i2), (String) this.f2307g.get(i2));
                ViewCompat.a((View) this.f2308h.get(i2), (String) this.f2309i.get(i2));
            }
        }
    }

    /* compiled from: FragmentTransitionImpl.java */
    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ArrayList f2310e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Map f2311f;

        b(m mVar, ArrayList arrayList, Map map) {
            this.f2310e = arrayList;
            this.f2311f = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2310e.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = (View) this.f2310e.get(i2);
                String u = ViewCompat.u(view);
                if (u != null) {
                    ViewCompat.a(view, m.a((Map<String, String>) this.f2311f, u));
                }
            }
        }
    }

    /* compiled from: FragmentTransitionImpl.java */
    /* loaded from: classes.dex */
    class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ArrayList f2312e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Map f2313f;

        c(m mVar, ArrayList arrayList, Map map) {
            this.f2312e = arrayList;
            this.f2313f = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2312e.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = (View) this.f2312e.get(i2);
                ViewCompat.a(view, (String) this.f2313f.get(ViewCompat.u(view)));
            }
        }
    }

    public abstract Object a(Object obj, Object obj2, Object obj3);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect.set(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    public abstract void a(ViewGroup viewGroup, Object obj);

    public abstract void a(Object obj, Rect rect);

    public abstract void a(Object obj, View view);

    public abstract void a(Object obj, View view, ArrayList<View> arrayList);

    public abstract void a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    public abstract void a(Object obj, ArrayList<View> arrayList);

    public abstract void a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    public abstract boolean a(Object obj);

    public abstract Object b(Object obj);

    public abstract Object b(Object obj, Object obj2, Object obj3);

    public abstract void b(Object obj, View view);

    public abstract void b(Object obj, View view, ArrayList<View> arrayList);

    public abstract void b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    public abstract Object c(Object obj);

    public abstract void c(Object obj, View view);

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<String> a(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = arrayList.get(i2);
            arrayList2.add(ViewCompat.u(view));
            ViewCompat.a(view, (String) null);
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i2 = 0; i2 < size; i2++) {
            View view2 = arrayList.get(i2);
            String u = ViewCompat.u(view2);
            arrayList4.add(u);
            if (u != null) {
                ViewCompat.a(view2, (String) null);
                String str = map.get(u);
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        break;
                    }
                    if (str.equals(arrayList3.get(i3))) {
                        ViewCompat.a(arrayList2.get(i3), u);
                        break;
                    }
                    i3++;
                }
            }
        }
        t.a(view, new a(this, size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (y.a(viewGroup)) {
                    arrayList.add(viewGroup);
                    return;
                }
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    a(arrayList, viewGroup.getChildAt(i2));
                }
                return;
            }
            arrayList.add(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Map<String, View> map, @NonNull View view) {
        if (view.getVisibility() == 0) {
            String u = ViewCompat.u(view);
            if (u != null) {
                map.put(u, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    a(map, viewGroup.getChildAt(i2));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, ArrayList<View> arrayList, Map<String, String> map) {
        t.a(view, new b(this, arrayList, map));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ViewGroup viewGroup, ArrayList<View> arrayList, Map<String, String> map) {
        t.a(viewGroup, new c(this, arrayList, map));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(List<View> list, View view) {
        int size = list.size();
        if (a(list, view, size)) {
            return;
        }
        list.add(view);
        for (int i2 = size; i2 < list.size(); i2++) {
            View view2 = list.get(i2);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = viewGroup.getChildAt(i3);
                    if (!a(list, childAt, size)) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    private static boolean a(List<View> list, View view, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            if (list.get(i3) == view) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean a(List list) {
        return list == null || list.isEmpty();
    }

    static String a(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }
}
