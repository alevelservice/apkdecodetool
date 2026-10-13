package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class we1<T> implements oe1<Set<T>> {

    /* renamed from: a, reason: collision with root package name */
    private final List<af1<T>> f10103a;

    /* renamed from: b, reason: collision with root package name */
    private final List<af1<Collection<T>>> f10104b;

    static {
        re1.a(Collections.emptySet());
    }

    private we1(List<af1<T>> list, List<af1<Collection<T>>> list2) {
        this.f10103a = list;
        this.f10104b = list2;
    }

    public static <T> ye1<T> a(int i2, int i3) {
        return new ye1<>(i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        int size = this.f10103a.size();
        ArrayList arrayList = new ArrayList(this.f10104b.size());
        int size2 = this.f10104b.size();
        int i2 = size;
        for (int i3 = 0; i3 < size2; i3++) {
            Collection<T> collection = this.f10104b.get(i3).get();
            i2 += collection.size();
            arrayList.add(collection);
        }
        HashSet b2 = ne1.b(i2);
        int size3 = this.f10103a.size();
        for (int i4 = 0; i4 < size3; i4++) {
            T t = this.f10103a.get(i4).get();
            ue1.a(t);
            b2.add(t);
        }
        int size4 = arrayList.size();
        for (int i5 = 0; i5 < size4; i5++) {
            for (Object obj : (Collection) arrayList.get(i5)) {
                ue1.a(obj);
                b2.add(obj);
            }
        }
        return Collections.unmodifiableSet(b2);
    }
}
