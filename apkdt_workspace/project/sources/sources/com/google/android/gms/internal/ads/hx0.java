package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
class hx0<E> extends gx0<E> {

    /* renamed from: a, reason: collision with root package name */
    Object[] f7198a;

    /* renamed from: b, reason: collision with root package name */
    int f7199b;

    /* renamed from: c, reason: collision with root package name */
    boolean f7200c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hx0(int i2) {
        dx0.a(i2, "initialCapacity");
        this.f7198a = new Object[i2];
        this.f7199b = 0;
    }

    private final void a(int i2) {
        Object[] objArr = this.f7198a;
        if (objArr.length < i2) {
            int length = objArr.length;
            if (i2 >= 0) {
                int i3 = length + (length >> 1) + 1;
                if (i3 < i2) {
                    i3 = Integer.highestOneBit(i2 - 1) << 1;
                }
                if (i3 < 0) {
                    i3 = Integer.MAX_VALUE;
                }
                this.f7198a = Arrays.copyOf(objArr, i3);
                this.f7200c = false;
                return;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }
        if (this.f7200c) {
            this.f7198a = (Object[]) objArr.clone();
            this.f7200c = false;
        }
    }

    public hx0<E> b(E e2) {
        uw0.a(e2);
        a(this.f7199b + 1);
        Object[] objArr = this.f7198a;
        int i2 = this.f7199b;
        this.f7199b = i2 + 1;
        objArr[i2] = e2;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.gx0
    public gx0<E> a(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            a(this.f7199b + collection.size());
            if (collection instanceof ex0) {
                this.f7199b = ((ex0) collection).zza(this.f7198a, this.f7199b);
                return this;
            }
        }
        super.a((Iterable) iterable);
        return this;
    }
}
