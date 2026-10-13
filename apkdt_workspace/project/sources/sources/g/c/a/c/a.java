package g.c.a.c;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import java.util.ArrayList;
import java.util.Objects;

/* compiled from: CompositeDisposable.java */
/* loaded from: classes2.dex */
public final class a implements c, d {

    /* renamed from: e, reason: collision with root package name */
    io.reactivex.rxjava3.internal.util.b<c> f18265e;

    /* renamed from: f, reason: collision with root package name */
    volatile boolean f18266f;

    public boolean a() {
        return this.f18266f;
    }

    @Override // g.c.a.c.d
    public boolean b(@NonNull c cVar) {
        Objects.requireNonNull(cVar, "disposable is null");
        if (!this.f18266f) {
            synchronized (this) {
                if (!this.f18266f) {
                    io.reactivex.rxjava3.internal.util.b<c> bVar = this.f18265e;
                    if (bVar == null) {
                        bVar = new io.reactivex.rxjava3.internal.util.b<>();
                        this.f18265e = bVar;
                    }
                    bVar.a((io.reactivex.rxjava3.internal.util.b<c>) cVar);
                    return true;
                }
            }
        }
        cVar.dispose();
        return false;
    }

    @Override // g.c.a.c.d
    public boolean c(@NonNull c cVar) {
        Objects.requireNonNull(cVar, "disposable is null");
        if (this.f18266f) {
            return false;
        }
        synchronized (this) {
            if (this.f18266f) {
                return false;
            }
            io.reactivex.rxjava3.internal.util.b<c> bVar = this.f18265e;
            if (bVar != null && bVar.b(cVar)) {
                return true;
            }
            return false;
        }
    }

    @Override // g.c.a.c.c
    public void dispose() {
        if (this.f18266f) {
            return;
        }
        synchronized (this) {
            if (this.f18266f) {
                return;
            }
            this.f18266f = true;
            io.reactivex.rxjava3.internal.util.b<c> bVar = this.f18265e;
            this.f18265e = null;
            a(bVar);
        }
    }

    @Override // g.c.a.c.d
    public boolean a(@NonNull c cVar) {
        if (!c(cVar)) {
            return false;
        }
        cVar.dispose();
        return true;
    }

    void a(@Nullable io.reactivex.rxjava3.internal.util.b<c> bVar) {
        if (bVar == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : bVar.a()) {
            if (obj instanceof c) {
                try {
                    ((c) obj).dispose();
                } catch (Throwable th) {
                    g.c.a.d.b.b(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
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
