package com.google.android.gms.common.api.internal;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
final class q1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ LifecycleCallback f5123e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f5124f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ r1 f5125g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q1(r1 r1Var, LifecycleCallback lifecycleCallback, String str) {
        this.f5125g = r1Var;
        this.f5123e = lifecycleCallback;
        this.f5124f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        i2 = this.f5125g.f5128f;
        if (i2 > 0) {
            LifecycleCallback lifecycleCallback = this.f5123e;
            bundle = this.f5125g.f5129g;
            if (bundle != null) {
                bundle3 = this.f5125g.f5129g;
                bundle2 = bundle3.getBundle(this.f5124f);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.a(bundle2);
        }
        i3 = this.f5125g.f5128f;
        if (i3 >= 2) {
            this.f5123e.d();
        }
        i4 = this.f5125g.f5128f;
        if (i4 >= 3) {
            this.f5123e.c();
        }
        i5 = this.f5125g.f5128f;
        if (i5 >= 4) {
            this.f5123e.e();
        }
        i6 = this.f5125g.f5128f;
        if (i6 >= 5) {
            this.f5123e.b();
        }
    }
}
