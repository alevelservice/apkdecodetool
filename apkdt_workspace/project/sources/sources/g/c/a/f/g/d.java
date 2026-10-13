package g.c.a.f.g;

import g.c.a.b.g;
import io.reactivex.rxjava3.annotations.NonNull;
import java.util.concurrent.ThreadFactory;

/* compiled from: NewThreadScheduler.java */
/* loaded from: classes2.dex */
public final class d extends g.c.a.b.g {

    /* renamed from: b, reason: collision with root package name */
    private static final g f18326b = new g("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx3.newthread-priority", 5).intValue())));

    /* renamed from: a, reason: collision with root package name */
    final ThreadFactory f18327a;

    public d() {
        this(f18326b);
    }

    @Override // g.c.a.b.g
    @NonNull
    public g.b a() {
        return new e(this.f18327a);
    }

    public d(ThreadFactory threadFactory) {
        this.f18327a = threadFactory;
    }
}
