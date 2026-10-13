package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class aa1 extends y91 {

    /* renamed from: c, reason: collision with root package name */
    private static final Class<?> f5552c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private aa1() {
        super();
    }

    private static <E> List<E> c(Object obj, long j2) {
        return (List) bc1.f(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.y91
    public final <L> List<L> a(Object obj, long j2) {
        return a(obj, j2, 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.y91
    public final void b(Object obj, long j2) {
        Object unmodifiableList;
        List list = (List) bc1.f(obj, j2);
        if (list instanceof v91) {
            unmodifiableList = ((v91) list).d0();
        } else {
            if (f5552c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof za1) && (list instanceof l91)) {
                l91 l91Var = (l91) list;
                if (l91Var.R()) {
                    l91Var.T();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        bc1.a(obj, j2, unmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> a(Object obj, long j2, int i2) {
        w91 w91Var;
        List<L> arrayList;
        List<L> c2 = c(obj, j2);
        if (c2.isEmpty()) {
            if (c2 instanceof v91) {
                arrayList = new w91(i2);
            } else if ((c2 instanceof za1) && (c2 instanceof l91)) {
                arrayList = ((l91) c2).f(i2);
            } else {
                arrayList = new ArrayList<>(i2);
            }
            bc1.a(obj, j2, arrayList);
            return arrayList;
        }
        if (f5552c.isAssignableFrom(c2.getClass())) {
            ArrayList arrayList2 = new ArrayList(c2.size() + i2);
            arrayList2.addAll(c2);
            bc1.a(obj, j2, arrayList2);
            w91Var = arrayList2;
        } else if (c2 instanceof ac1) {
            w91 w91Var2 = new w91(c2.size() + i2);
            w91Var2.addAll((ac1) c2);
            bc1.a(obj, j2, w91Var2);
            w91Var = w91Var2;
        } else {
            if (!(c2 instanceof za1) || !(c2 instanceof l91)) {
                return c2;
            }
            l91 l91Var = (l91) c2;
            if (l91Var.R()) {
                return c2;
            }
            l91 f2 = l91Var.f(c2.size() + i2);
            bc1.a(obj, j2, f2);
            return f2;
        }
        return w91Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.y91
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
        bc1.a(obj, j2, c2);
    }
}
