package e.i.b.a.i.w.j;

import e.i.b.a.i.w.j.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventStoreConfig.java */
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    static final d f17768a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventStoreConfig.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        abstract a a(int i2);

        abstract a a(long j2);

        abstract d a();

        abstract a b(int i2);

        abstract a b(long j2);

        abstract a c(int i2);
    }

    static {
        a f2 = f();
        f2.b(10485760L);
        f2.b(200);
        f2.a(e.b.b.a.a.a.c.DEBUG_INT);
        f2.a(604800000L);
        f2.c(81920);
        f17768a = f2.a();
    }

    static a f() {
        return new a.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long e();
}
