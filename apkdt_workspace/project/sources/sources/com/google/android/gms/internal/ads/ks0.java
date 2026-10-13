package com.google.android.gms.internal.ads;

import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ks0 {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f7742a;

    /* renamed from: b, reason: collision with root package name */
    private final Object f7743b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("lock")
    private volatile int f7744c = js0.f7564a;

    /* renamed from: d, reason: collision with root package name */
    private volatile long f7745d = 0;

    public ks0(com.google.android.gms.common.util.e eVar) {
        this.f7742a = eVar;
    }

    private final void a(int i2, int i3) {
        d();
        long a2 = this.f7742a.a();
        synchronized (this.f7743b) {
            if (this.f7744c != i2) {
                return;
            }
            this.f7744c = i3;
            if (this.f7744c == js0.f7566c) {
                this.f7745d = a2;
            }
        }
    }

    private final void d() {
        long a2 = this.f7742a.a();
        synchronized (this.f7743b) {
            if (this.f7744c == js0.f7566c) {
                if (this.f7745d + ((Long) mu1.e().a(aw1.p3)).longValue() <= a2) {
                    this.f7744c = js0.f7564a;
                }
            }
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this.f7743b) {
            d();
            z = this.f7744c == js0.f7566c;
        }
        return z;
    }

    public final void c() {
        a(js0.f7565b, js0.f7566c);
    }

    public final void a(boolean z) {
        if (z) {
            a(js0.f7564a, js0.f7565b);
        } else {
            a(js0.f7565b, js0.f7564a);
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this.f7743b) {
            d();
            z = this.f7744c == js0.f7565b;
        }
        return z;
    }
}
