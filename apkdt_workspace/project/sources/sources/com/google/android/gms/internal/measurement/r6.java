package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
abstract class r6<T, B> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Object obj);

    abstract void a(B b2, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(B b2, int i2, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(B b2, int i2, t2 t2Var);

    abstract void a(B b2, int i2, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(T t, p7 p7Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Object obj, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a(z5 z5Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(B b2, z5 z5Var) {
        int tag = z5Var.getTag();
        int i2 = tag >>> 3;
        int i3 = tag & 7;
        if (i3 == 0) {
            a((r6<T, B>) b2, i2, z5Var.a());
            return true;
        }
        if (i3 == 1) {
            b(b2, i2, z5Var.zzsk());
            return true;
        }
        if (i3 == 2) {
            a((r6<T, B>) b2, i2, z5Var.l());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return false;
            }
            if (i3 == 5) {
                a((r6<T, B>) b2, i2, z5Var.zzsl());
                return true;
            }
            throw l4.zzuy();
        }
        B a2 = a();
        int i4 = 4 | (i2 << 3);
        while (z5Var.e() != Integer.MAX_VALUE && a((r6<T, B>) a2, z5Var)) {
        }
        if (i4 == z5Var.getTag()) {
            a((r6<T, B>) b2, i2, (int) b(a2));
            return true;
        }
        throw l4.zzux();
    }

    abstract T b(B b2);

    abstract void b(B b2, int i2, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(T t, p7 p7Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(Object obj, B b2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int c(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T c(T t, T t2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T d(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B e(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int f(T t);
}
