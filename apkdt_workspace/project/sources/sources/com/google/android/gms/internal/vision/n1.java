package com.google.android.gms.internal.vision;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class n1 extends WeakReference<Throwable> {

    /* renamed from: a, reason: collision with root package name */
    private final int f12440a;

    public n1(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f12440a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == n1.class) {
            if (this == obj) {
                return true;
            }
            n1 n1Var = (n1) obj;
            if (this.f12440a == n1Var.f12440a && get() == n1Var.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f12440a;
    }
}
