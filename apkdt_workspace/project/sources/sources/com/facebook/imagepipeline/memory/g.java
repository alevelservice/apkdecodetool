package com.facebook.imagepipeline.memory;

import android.util.SparseArray;
import com.facebook.common.internal.VisibleForTesting;
import java.util.LinkedList;
import javax.annotation.Nullable;

/* compiled from: BucketMap.java */
/* loaded from: classes.dex */
public class g<T> {

    /* renamed from: a, reason: collision with root package name */
    protected final SparseArray<b<T>> f3850a = new SparseArray<>();

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    @Nullable
    b<T> f3851b;

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    @Nullable
    b<T> f3852c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BucketMap.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b<I> {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        b<I> f3853a;

        /* renamed from: b, reason: collision with root package name */
        int f3854b;

        /* renamed from: c, reason: collision with root package name */
        LinkedList<I> f3855c;

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        b<I> f3856d;

        public String toString() {
            return "LinkedEntry(key: " + this.f3854b + ")";
        }

        private b(@Nullable b<I> bVar, int i2, LinkedList<I> linkedList, @Nullable b<I> bVar2) {
            this.f3853a = bVar;
            this.f3854b = i2;
            this.f3855c = linkedList;
            this.f3856d = bVar2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b(b<T> bVar) {
        if (this.f3851b == bVar) {
            return;
        }
        c(bVar);
        b<T> bVar2 = this.f3851b;
        if (bVar2 == 0) {
            this.f3851b = bVar;
            this.f3852c = bVar;
        } else {
            bVar.f3856d = bVar2;
            bVar2.f3853a = bVar;
            this.f3851b = bVar;
        }
    }

    private synchronized void c(b<T> bVar) {
        b bVar2 = (b<T>) bVar.f3853a;
        b bVar3 = (b<T>) bVar.f3856d;
        if (bVar2 != null) {
            bVar2.f3856d = bVar3;
        }
        if (bVar3 != null) {
            bVar3.f3853a = bVar2;
        }
        bVar.f3853a = null;
        bVar.f3856d = null;
        if (bVar == this.f3851b) {
            this.f3851b = bVar3;
        }
        if (bVar == this.f3852c) {
            this.f3852c = bVar2;
        }
    }

    @Nullable
    public synchronized T a(int i2) {
        b<T> bVar = this.f3850a.get(i2);
        if (bVar == null) {
            return null;
        }
        T pollFirst = bVar.f3855c.pollFirst();
        b(bVar);
        return pollFirst;
    }

    public synchronized void a(int i2, T t) {
        b<T> bVar = this.f3850a.get(i2);
        if (bVar == null) {
            bVar = new b<>(null, i2, new LinkedList(), null);
            this.f3850a.put(i2, bVar);
        }
        bVar.f3855c.addLast(t);
        b(bVar);
    }

    @Nullable
    public synchronized T a() {
        b<T> bVar = this.f3852c;
        if (bVar == null) {
            return null;
        }
        T pollLast = bVar.f3855c.pollLast();
        a(bVar);
        return pollLast;
    }

    private void a(b<T> bVar) {
        if (bVar == null || !bVar.f3855c.isEmpty()) {
            return;
        }
        c(bVar);
        this.f3850a.remove(bVar.f3854b);
    }
}
