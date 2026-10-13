package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
abstract class vb1<T, B> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Object obj);

    abstract void a(B b2, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(B b2, int i2, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(B b2, int i2, t71 t71Var);

    abstract void a(B b2, int i2, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(T t, tc1 tc1Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Object obj, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a(eb1 eb1Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(B b2, eb1 eb1Var) {
        int tag = eb1Var.getTag();
        int i2 = tag >>> 3;
        int i3 = tag & 7;
        if (i3 == 0) {
            a((vb1<T, B>) b2, i2, eb1Var.q());
            return true;
        }
        if (i3 == 1) {
            b(b2, i2, eb1Var.f());
            return true;
        }
        if (i3 == 2) {
            a((vb1<T, B>) b2, i2, eb1Var.l());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return false;
            }
            if (i3 == 5) {
                a((vb1<T, B>) b2, i2, eb1Var.g());
                return true;
            }
            throw o91.zzbac();
        }
        B a2 = a();
        int i4 = 4 | (i2 << 3);
        while (eb1Var.s() != Integer.MAX_VALUE && a((vb1<T, B>) a2, eb1Var)) {
        }
        if (i4 == eb1Var.getTag()) {
            a((vb1<T, B>) b2, i2, (int) b(a2));
            return true;
        }
        throw o91.zzbab();
    }

    abstract T b(B b2);

    abstract void b(B b2, int i2, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(T t, tc1 tc1Var);

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
