package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class o5 extends n5 {
    private o5() {
        super();
    }

    private static <E> z4<E> b(Object obj, long j2) {
        return (z4) o7.f(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.n5
    public final void a(Object obj, long j2) {
        b(obj, j2).U();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.n5
    public final <E> void a(Object obj, Object obj2, long j2) {
        z4 b2 = b(obj, j2);
        z4 b3 = b(obj2, j2);
        int size = b2.size();
        int size2 = b3.size();
        if (size > 0 && size2 > 0) {
            if (!b2.S()) {
                b2 = b2.c(size2 + size);
            }
            b2.addAll(b3);
        }
        if (size > 0) {
            b3 = b2;
        }
        o7.a(obj, j2, b3);
    }
}
