package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class pv implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final WeakReference<kv> f8790e;

    private pv(kv kvVar) {
        this.f8790e = new WeakReference<>(kvVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        kv kvVar = this.f8790e.get();
        if (kvVar != null) {
            kv.a(kvVar);
        }
    }
}
