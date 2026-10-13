package androidx.databinding;

import android.view.View;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MergedDataBinderMapper.java */
/* loaded from: classes.dex */
public class h extends d {

    /* renamed from: a, reason: collision with root package name */
    private Set<Class<? extends d>> f2068a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    private List<d> f2069b = new CopyOnWriteArrayList();

    /* renamed from: c, reason: collision with root package name */
    private List<String> f2070c = new CopyOnWriteArrayList();

    private boolean b() {
        boolean z = false;
        for (String str : this.f2070c) {
            try {
                Class<?> cls = Class.forName(str);
                if (d.class.isAssignableFrom(cls)) {
                    a((d) cls.newInstance());
                    this.f2070c.remove(str);
                    z = true;
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException unused2) {
                String str2 = "unable to add feature mapper for " + str;
            } catch (InstantiationException unused3) {
                String str3 = "unable to add feature mapper for " + str;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(d dVar) {
        if (this.f2068a.add(dVar.getClass())) {
            this.f2069b.add(dVar);
            Iterator<d> it = dVar.a().iterator();
            while (it.hasNext()) {
                a(it.next());
            }
        }
    }

    @Override // androidx.databinding.d
    public ViewDataBinding a(f fVar, View view, int i2) {
        Iterator<d> it = this.f2069b.iterator();
        while (it.hasNext()) {
            ViewDataBinding a2 = it.next().a(fVar, view, i2);
            if (a2 != null) {
                return a2;
            }
        }
        if (b()) {
            return a(fVar, view, i2);
        }
        return null;
    }

    @Override // androidx.databinding.d
    public ViewDataBinding a(f fVar, View[] viewArr, int i2) {
        Iterator<d> it = this.f2069b.iterator();
        while (it.hasNext()) {
            ViewDataBinding a2 = it.next().a(fVar, viewArr, i2);
            if (a2 != null) {
                return a2;
            }
        }
        if (b()) {
            return a(fVar, viewArr, i2);
        }
        return null;
    }
}
