package androidx.coordinatorlayout.widget;

import a.i.m.f;
import a.i.m.g;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* compiled from: DirectedAcyclicGraph.java */
@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public final class a<T> {

    /* renamed from: a, reason: collision with root package name */
    private final f<ArrayList<T>> f1634a = new g(10);

    /* renamed from: b, reason: collision with root package name */
    private final a.e.g<T, ArrayList<T>> f1635b = new a.e.g<>();

    /* renamed from: c, reason: collision with root package name */
    private final ArrayList<T> f1636c = new ArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    private final HashSet<T> f1637d = new HashSet<>();

    public void a(@NonNull T t) {
        if (this.f1635b.containsKey(t)) {
            return;
        }
        this.f1635b.put(t, null);
    }

    public boolean b(@NonNull T t) {
        return this.f1635b.containsKey(t);
    }

    @Nullable
    public List c(@NonNull T t) {
        return this.f1635b.get(t);
    }

    @Nullable
    public List<T> d(@NonNull T t) {
        int size = this.f1635b.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList<T> d2 = this.f1635b.d(i2);
            if (d2 != null && d2.contains(t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f1635b.b(i2));
            }
        }
        return arrayList;
    }

    public boolean e(@NonNull T t) {
        int size = this.f1635b.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList<T> d2 = this.f1635b.d(i2);
            if (d2 != null && d2.contains(t)) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    private ArrayList<T> c() {
        ArrayList<T> a2 = this.f1634a.a();
        return a2 == null ? new ArrayList<>() : a2;
    }

    @NonNull
    public ArrayList<T> b() {
        this.f1636c.clear();
        this.f1637d.clear();
        int size = this.f1635b.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(this.f1635b.b(i2), this.f1636c, this.f1637d);
        }
        return this.f1636c;
    }

    public void a(@NonNull T t, @NonNull T t2) {
        if (this.f1635b.containsKey(t) && this.f1635b.containsKey(t2)) {
            ArrayList<T> arrayList = this.f1635b.get(t);
            if (arrayList == null) {
                arrayList = c();
                this.f1635b.put(t, arrayList);
            }
            arrayList.add(t2);
            return;
        }
        throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
    }

    public void a() {
        int size = this.f1635b.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList<T> d2 = this.f1635b.d(i2);
            if (d2 != null) {
                a((ArrayList) d2);
            }
        }
        this.f1635b.clear();
    }

    private void a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (!hashSet.contains(t)) {
            hashSet.add(t);
            ArrayList<T> arrayList2 = this.f1635b.get(t);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    a(arrayList2.get(i2), arrayList, hashSet);
                }
            }
            hashSet.remove(t);
            arrayList.add(t);
            return;
        }
        throw new RuntimeException("This graph contains cyclic dependencies");
    }

    private void a(@NonNull ArrayList<T> arrayList) {
        arrayList.clear();
        this.f1634a.a(arrayList);
    }
}
