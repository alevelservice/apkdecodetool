package com.google.android.gms.internal.ads;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class g71 extends WeakReference<Throwable> {

    /* renamed from: a, reason: collision with root package name */
    private final int f6822a;

    public g71(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f6822a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == g71.class) {
            if (this == obj) {
                return true;
            }
            g71 g71Var = (g71) obj;
            if (this.f6822a == g71Var.f6822a && get() == g71Var.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f6822a;
    }
}
