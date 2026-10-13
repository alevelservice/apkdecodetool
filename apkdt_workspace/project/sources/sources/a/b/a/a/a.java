package a.b.a.a;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;

/* compiled from: ArchTaskExecutor.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: c, reason: collision with root package name */
    private static volatile a f57c;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private c f59b = new a.b.a.a.b();

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private c f58a = this.f59b;

    /* compiled from: ArchTaskExecutor.java */
    /* renamed from: a.b.a.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class ExecutorC0001a implements Executor {
        ExecutorC0001a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.b().b(runnable);
        }
    }

    /* compiled from: ArchTaskExecutor.java */
    /* loaded from: classes.dex */
    static class b implements Executor {
        b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.b().a(runnable);
        }
    }

    static {
        new ExecutorC0001a();
        new b();
    }

    private a() {
    }

    @NonNull
    public static a b() {
        if (f57c != null) {
            return f57c;
        }
        synchronized (a.class) {
            if (f57c == null) {
                f57c = new a();
            }
        }
        return f57c;
    }

    @Override // a.b.a.a.c
    public void a(Runnable runnable) {
        this.f58a.a(runnable);
    }

    @Override // a.b.a.a.c
    public boolean a() {
        return this.f58a.a();
    }

    @Override // a.b.a.a.c
    public void b(Runnable runnable) {
        this.f58a.b(runnable);
    }
}
