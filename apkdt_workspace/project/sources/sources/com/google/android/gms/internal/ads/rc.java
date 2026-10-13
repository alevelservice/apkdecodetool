package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rc {

    /* renamed from: a, reason: collision with root package name */
    private HandlerThread f9085a = null;

    /* renamed from: b, reason: collision with root package name */
    private Handler f9086b = null;

    /* renamed from: c, reason: collision with root package name */
    private int f9087c = 0;

    /* renamed from: d, reason: collision with root package name */
    private final Object f9088d = new Object();

    public final Handler a() {
        return this.f9086b;
    }

    public final Looper b() {
        Looper looper;
        synchronized (this.f9088d) {
            if (this.f9087c == 0) {
                if (this.f9085a == null) {
                    na.e("Starting the looper thread.");
                    this.f9085a = new HandlerThread("LooperProvider");
                    this.f9085a.start();
                    this.f9086b = new jw0(this.f9085a.getLooper());
                    na.e("Looper thread started.");
                } else {
                    na.e("Resuming the looper thread");
                    this.f9088d.notifyAll();
                }
            } else {
                com.google.android.gms.common.internal.m.a(this.f9085a, "Invalid state: mHandlerThread should already been initialized.");
            }
            this.f9087c++;
            looper = this.f9085a.getLooper();
        }
        return looper;
    }
}
