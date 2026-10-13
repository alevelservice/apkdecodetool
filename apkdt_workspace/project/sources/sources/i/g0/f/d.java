package i.g0.f;

import i.d0;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: RouteDatabase.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private final Set<d0> f18497a = new LinkedHashSet();

    public synchronized void a(d0 d0Var) {
        this.f18497a.remove(d0Var);
    }

    public synchronized void b(d0 d0Var) {
        this.f18497a.add(d0Var);
    }

    public synchronized boolean c(d0 d0Var) {
        return this.f18497a.contains(d0Var);
    }
}
