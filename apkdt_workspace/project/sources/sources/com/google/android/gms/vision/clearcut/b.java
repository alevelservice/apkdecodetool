package com.google.android.gms.vision.clearcut;

import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    private final Object f13558b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("lock")
    private long f13559c = Long.MIN_VALUE;

    /* renamed from: a, reason: collision with root package name */
    private final long f13557a = Math.round(30000.0d);

    public b(double d2) {
    }

    public final boolean a() {
        synchronized (this.f13558b) {
            long currentTimeMillis = System.currentTimeMillis();
            if (this.f13559c + this.f13557a > currentTimeMillis) {
                return false;
            }
            this.f13559c = currentTimeMillis;
            return true;
        }
    }
}
