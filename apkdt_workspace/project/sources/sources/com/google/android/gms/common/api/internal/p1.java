package com.google.android.gms.common.api.internal;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
final class p1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ LifecycleCallback f5118e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f5119f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ o1 f5120g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p1(o1 o1Var, LifecycleCallback lifecycleCallback, String str) {
        this.f5120g = o1Var;
        this.f5118e = lifecycleCallback;
        this.f5119f = str;
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
        i2 = this.f5120g.f5113f;
        if (i2 > 0) {
            LifecycleCallback lifecycleCallback = this.f5118e;
            bundle = this.f5120g.f5114g;
            if (bundle != null) {
                bundle3 = this.f5120g.f5114g;
                bundle2 = bundle3.getBundle(this.f5119f);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.a(bundle2);
        }
        i3 = this.f5120g.f5113f;
        if (i3 >= 2) {
            this.f5118e.d();
        }
        i4 = this.f5120g.f5113f;
        if (i4 >= 3) {
            this.f5118e.c();
        }
        i5 = this.f5120g.f5113f;
        if (i5 >= 4) {
            this.f5118e.e();
        }
        i6 = this.f5120g.f5113f;
        if (i6 >= 5) {
            this.f5118e.b();
        }
    }
}
