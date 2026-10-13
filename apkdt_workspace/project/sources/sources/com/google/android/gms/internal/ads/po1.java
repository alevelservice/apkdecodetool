package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class po1 {

    /* renamed from: a, reason: collision with root package name */
    private boolean f8742a;

    public final synchronized void a() {
        while (!this.f8742a) {
            wait();
        }
    }

    public final synchronized boolean b() {
        if (this.f8742a) {
            return false;
        }
        this.f8742a = true;
        notifyAll();
        return true;
    }

    public final synchronized boolean c() {
        boolean z;
        z = this.f8742a;
        this.f8742a = false;
        return z;
    }
}
