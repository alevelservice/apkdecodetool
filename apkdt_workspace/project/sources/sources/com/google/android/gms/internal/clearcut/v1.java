package com.google.android.gms.internal.clearcut;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
final class v1 extends t1 {

    /* renamed from: c, reason: collision with root package name */
    private static final Class<?> f11581c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private v1() {
        super();
    }

    private static <E> List<E> b(Object obj, long j2) {
        return (List) y3.f(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.t1
    public final void a(Object obj, long j2) {
        Object unmodifiableList;
        List list = (List) y3.f(obj, j2);
        if (list instanceof s1) {
            unmodifiableList = ((s1) list).c0();
        } else if (f11581c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            unmodifiableList = Collections.unmodifiableList(list);
        }
        y3.a(obj, j2, unmodifiableList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.clearcut.t1
    public final <E> void a(Object obj, Object obj2, long j2) {
        r1 r1Var;
        List b2 = b(obj2, j2);
        int size = b2.size();
        List b3 = b(obj, j2);
        if (b3.isEmpty()) {
            b3 = b3 instanceof s1 ? new r1(size) : new ArrayList(size);
            y3.a(obj, j2, b3);
        } else {
            if (f11581c.isAssignableFrom(b3.getClass())) {
                ArrayList arrayList = new ArrayList(b3.size() + size);
                arrayList.addAll(b3);
                r1Var = arrayList;
            } else if (b3 instanceof v3) {
                r1 r1Var2 = new r1(b3.size() + size);
                r1Var2.addAll((v3) b3);
                r1Var = r1Var2;
            }
            y3.a(obj, j2, r1Var);
            b3 = r1Var;
        }
        int size2 = b3.size();
        int size3 = b2.size();
        if (size2 > 0 && size3 > 0) {
            b3.addAll(b2);
        }
        if (size2 > 0) {
            b2 = b3;
        }
        y3.a(obj, j2, b2);
    }
}
