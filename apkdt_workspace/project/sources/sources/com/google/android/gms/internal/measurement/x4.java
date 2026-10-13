package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
final class x4 extends v4 {

    /* renamed from: c, reason: collision with root package name */
    private static final Class<?> f12189c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private x4() {
        super();
    }

    private static <E> List<E> c(Object obj, long j2) {
        return (List) x6.f(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.v4
    public final <L> List<L> a(Object obj, long j2) {
        return a(obj, j2, 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.v4
    public final void b(Object obj, long j2) {
        Object unmodifiableList;
        List list = (List) x6.f(obj, j2);
        if (list instanceof s4) {
            unmodifiableList = ((s4) list).b0();
        } else {
            if (f12189c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof v5) && (list instanceof i4)) {
                i4 i4Var = (i4) list;
                if (i4Var.Q()) {
                    i4Var.P();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        x6.a(obj, j2, unmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> a(Object obj, long j2, int i2) {
        t4 t4Var;
        List<L> arrayList;
        List<L> c2 = c(obj, j2);
        if (c2.isEmpty()) {
            if (c2 instanceof s4) {
                arrayList = new t4(i2);
            } else if ((c2 instanceof v5) && (c2 instanceof i4)) {
                arrayList = ((i4) c2).zzap(i2);
            } else {
                arrayList = new ArrayList<>(i2);
            }
            x6.a(obj, j2, arrayList);
            return arrayList;
        }
        if (f12189c.isAssignableFrom(c2.getClass())) {
            ArrayList arrayList2 = new ArrayList(c2.size() + i2);
            arrayList2.addAll(c2);
            x6.a(obj, j2, arrayList2);
            t4Var = arrayList2;
        } else if (c2 instanceof w6) {
            t4 t4Var2 = new t4(c2.size() + i2);
            t4Var2.addAll((w6) c2);
            x6.a(obj, j2, t4Var2);
            t4Var = t4Var2;
        } else {
            if (!(c2 instanceof v5) || !(c2 instanceof i4)) {
                return c2;
            }
            i4 i4Var = (i4) c2;
            if (i4Var.Q()) {
                return c2;
            }
            i4 zzap = i4Var.zzap(c2.size() + i2);
            x6.a(obj, j2, zzap);
            return zzap;
        }
        return t4Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.v4
    public final <E> void a(Object obj, Object obj2, long j2) {
        List c2 = c(obj2, j2);
        List a2 = a(obj, j2, c2.size());
        int size = a2.size();
        int size2 = c2.size();
        if (size > 0 && size2 > 0) {
            a2.addAll(c2);
        }
        if (size > 0) {
            c2 = a2;
        }
        x6.a(obj, j2, c2);
    }
}
