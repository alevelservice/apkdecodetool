package com.google.android.gms.internal.ads;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class z91 extends y91 {
    private z91() {
        super();
    }

    private static <E> l91<E> c(Object obj, long j2) {
        return (l91) bc1.f(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.y91
    public final <L> List<L> a(Object obj, long j2) {
        l91 c2 = c(obj, j2);
        if (c2.R()) {
            return c2;
        }
        int size = c2.size();
        l91 f2 = c2.f(size == 0 ? 10 : size << 1);
        bc1.a(obj, j2, f2);
        return f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.y91
    public final void b(Object obj, long j2) {
        c(obj, j2).T();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.y91
    public final <E> void a(Object obj, Object obj2, long j2) {
        l91 c2 = c(obj, j2);
        l91 c3 = c(obj2, j2);
        int size = c2.size();
        int size2 = c3.size();
        if (size > 0 && size2 > 0) {
            if (!c2.R()) {
                c2 = c2.f(size2 + size);
            }
            c2.addAll(c3);
        }
        if (size > 0) {
            c3 = c2;
        }
        bc1.a(obj, j2, c3);
    }
}
