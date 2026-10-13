package com.google.android.gms.internal.vision;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class p5 extends n5 {

    /* renamed from: c, reason: collision with root package name */
    private static final Class<?> f12478c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private p5() {
        super();
    }

    private static <E> List<E> b(Object obj, long j2) {
        return (List) o7.f(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.n5
    public final void a(Object obj, long j2) {
        Object unmodifiableList;
        List list = (List) o7.f(obj, j2);
        if (list instanceof k5) {
            unmodifiableList = ((k5) list).Y();
        } else {
            if (f12478c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof o6) && (list instanceof z4)) {
                z4 z4Var = (z4) list;
                if (z4Var.S()) {
                    z4Var.U();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        o7.a(obj, j2, unmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> a(Object obj, long j2, int i2) {
        l5 l5Var;
        List<L> arrayList;
        List<L> b2 = b(obj, j2);
        if (b2.isEmpty()) {
            if (b2 instanceof k5) {
                arrayList = new l5(i2);
            } else if ((b2 instanceof o6) && (b2 instanceof z4)) {
                arrayList = ((z4) b2).c(i2);
            } else {
                arrayList = new ArrayList<>(i2);
            }
            o7.a(obj, j2, arrayList);
            return arrayList;
        }
        if (f12478c.isAssignableFrom(b2.getClass())) {
            ArrayList arrayList2 = new ArrayList(b2.size() + i2);
            arrayList2.addAll(b2);
            o7.a(obj, j2, arrayList2);
            l5Var = arrayList2;
        } else if (b2 instanceof n7) {
            l5 l5Var2 = new l5(b2.size() + i2);
            l5Var2.addAll((n7) b2);
            o7.a(obj, j2, l5Var2);
            l5Var = l5Var2;
        } else {
            if (!(b2 instanceof o6) || !(b2 instanceof z4)) {
                return b2;
            }
            z4 z4Var = (z4) b2;
            if (z4Var.S()) {
                return b2;
            }
            z4 c2 = z4Var.c(b2.size() + i2);
            o7.a(obj, j2, c2);
            return c2;
        }
        return l5Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.n5
    public final <E> void a(Object obj, Object obj2, long j2) {
        List b2 = b(obj2, j2);
        List a2 = a(obj, j2, b2.size());
        int size = a2.size();
        int size2 = b2.size();
        if (size > 0 && size2 > 0) {
            a2.addAll(b2);
        }
        if (size > 0) {
            b2 = a2;
        }
        o7.a(obj, j2, b2);
    }
}
