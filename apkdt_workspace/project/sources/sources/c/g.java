package c;

/* compiled from: TaskCompletionSource.java */
/* loaded from: classes.dex */
public class g<TResult> {

    /* renamed from: a, reason: collision with root package name */
    private final f<TResult> f3137a = new f<>();

    public f<TResult> a() {
        return this.f3137a;
    }

    public boolean b(TResult tresult) {
        return this.f3137a.a((f<TResult>) tresult);
    }

    public boolean c() {
        return this.f3137a.f();
    }

    public void a(TResult tresult) {
        if (!b((g<TResult>) tresult)) {
            throw new IllegalStateException("Cannot set the result of a completed task.");
        }
    }

    public boolean b(Exception exc) {
        return this.f3137a.a(exc);
    }

    public void b() {
        if (!c()) {
            throw new IllegalStateException("Cannot cancel a completed task.");
        }
    }

    public void a(Exception exc) {
        if (!b(exc)) {
            throw new IllegalStateException("Cannot set the error on a completed task.");
        }
    }
}
