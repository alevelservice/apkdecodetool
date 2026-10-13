package g.c.a.f.a;

import g.c.a.c.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* compiled from: ListCompositeDisposable.java */
/* loaded from: classes2.dex */
public final class c implements g.c.a.c.c, d {

    /* renamed from: e, reason: collision with root package name */
    List<g.c.a.c.c> f18271e;

    /* renamed from: f, reason: collision with root package name */
    volatile boolean f18272f;

    @Override // g.c.a.c.d
    public boolean a(g.c.a.c.c cVar) {
        if (!c(cVar)) {
            return false;
        }
        cVar.dispose();
        return true;
    }

    @Override // g.c.a.c.d
    public boolean b(g.c.a.c.c cVar) {
        Objects.requireNonNull(cVar, "d is null");
        if (!this.f18272f) {
            synchronized (this) {
                if (!this.f18272f) {
                    List list = this.f18271e;
                    if (list == null) {
                        list = new LinkedList();
                        this.f18271e = list;
                    }
                    list.add(cVar);
                    return true;
                }
            }
        }
        cVar.dispose();
        return false;
    }

    @Override // g.c.a.c.d
    public boolean c(g.c.a.c.c cVar) {
        Objects.requireNonNull(cVar, "Disposable item is null");
        if (this.f18272f) {
            return false;
        }
        synchronized (this) {
            if (this.f18272f) {
                return false;
            }
            List<g.c.a.c.c> list = this.f18271e;
            if (list != null && list.remove(cVar)) {
                return true;
            }
            return false;
        }
    }

    @Override // g.c.a.c.c
    public void dispose() {
        if (this.f18272f) {
            return;
        }
        synchronized (this) {
            if (this.f18272f) {
                return;
            }
            this.f18272f = true;
            List<g.c.a.c.c> list = this.f18271e;
            this.f18271e = null;
            a(list);
        }
    }

    void a(List<g.c.a.c.c> list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = null;
        Iterator<g.c.a.c.c> it = list.iterator();
        while (it.hasNext()) {
            try {
                it.next().dispose();
            } catch (Throwable th) {
                g.c.a.d.b.b(th);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th);
            }
        }
        if (arrayList != null) {
            if (arrayList.size() == 1) {
                throw io.reactivex.rxjava3.internal.util.a.a((Throwable) arrayList.get(0));
            }
            throw new g.c.a.d.a(arrayList);
        }
    }
}
