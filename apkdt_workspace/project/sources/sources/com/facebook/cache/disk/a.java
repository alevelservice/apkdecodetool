package com.facebook.cache.disk;

import com.facebook.cache.disk.c;

/* compiled from: DefaultEntryEvictionComparatorSupplier.java */
/* loaded from: classes.dex */
public class a implements g {

    /* compiled from: DefaultEntryEvictionComparatorSupplier.java */
    /* renamed from: com.facebook.cache.disk.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0061a implements f {
        C0061a(a aVar) {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c.a aVar, c.a aVar2) {
            long j2 = aVar.j();
            long j3 = aVar2.j();
            if (j2 < j3) {
                return -1;
            }
            return j3 == j2 ? 0 : 1;
        }
    }

    @Override // com.facebook.cache.disk.g
    public f get() {
        return new C0061a(this);
    }
}
