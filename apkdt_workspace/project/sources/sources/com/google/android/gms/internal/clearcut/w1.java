package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
final class w1 extends t1 {
    private w1() {
        super();
    }

    private static <E> i1<E> b(Object obj, long j2) {
        return (i1) y3.f(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.t1
    public final void a(Object obj, long j2) {
        b(obj, j2).W();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.t1
    public final <E> void a(Object obj, Object obj2, long j2) {
        i1 b2 = b(obj, j2);
        i1 b3 = b(obj2, j2);
        int size = b2.size();
        int size2 = b3.size();
        if (size > 0 && size2 > 0) {
            if (!b2.V()) {
                b2 = b2.i(size2 + size);
            }
            b2.addAll(b3);
        }
        if (size > 0) {
            b3 = b2;
        }
        y3.a(obj, j2, b3);
    }
}
