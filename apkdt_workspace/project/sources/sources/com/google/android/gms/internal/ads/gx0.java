package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class gx0<E> {
    public gx0<E> a(Iterable<? extends E> iterable) {
        Iterator<? extends E> it = iterable.iterator();
        while (it.hasNext()) {
            a((gx0<E>) it.next());
        }
        return this;
    }

    public abstract gx0<E> a(E e2);

    public gx0<E> a(Iterator<? extends E> it) {
        while (it.hasNext()) {
            a((gx0<E>) it.next());
        }
        return this;
    }
}
