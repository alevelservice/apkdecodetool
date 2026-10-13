package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
abstract class t1 {

    /* renamed from: a, reason: collision with root package name */
    private static final t1 f11565a;

    /* renamed from: b, reason: collision with root package name */
    private static final t1 f11566b;

    static {
        u1 u1Var = null;
        f11565a = new v1();
        f11566b = new w1();
    }

    private t1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t1 a() {
        return f11565a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t1 b() {
        return f11566b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Object obj, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> void a(Object obj, Object obj2, long j2);
}
