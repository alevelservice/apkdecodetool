package com.google.android.gms.internal.measurement;

import java.util.List;

/* loaded from: classes.dex */
final class w4 extends v4 {
    private w4() {
        super();
    }

    private static <E> i4<E> c(Object obj, long j2) {
        return (i4) x6.f(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.v4
    public final <L> List<L> a(Object obj, long j2) {
        i4 c2 = c(obj, j2);
        if (c2.Q()) {
            return c2;
        }
        int size = c2.size();
        i4 zzap = c2.zzap(size == 0 ? 10 : size << 1);
        x6.a(obj, j2, zzap);
        return zzap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.v4
    public final void b(Object obj, long j2) {
        c(obj, j2).P();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.v4
    public final <E> void a(Object obj, Object obj2, long j2) {
        i4 c2 = c(obj, j2);
        i4 c3 = c(obj2, j2);
        int size = c2.size();
        int size2 = c3.size();
        if (size > 0 && size2 > 0) {
            if (!c2.Q()) {
                c2 = c2.zzap(size2 + size);
            }
            c2.addAll(c3);
        }
        if (size > 0) {
            c3 = c2;
        }
        x6.a(obj, j2, c3);
    }
}
