package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sm1 extends Thread {

    /* renamed from: e, reason: collision with root package name */
    private final BlockingQueue<uq1<?>> f9396e;

    /* renamed from: f, reason: collision with root package name */
    private final tn1 f9397f;

    /* renamed from: g, reason: collision with root package name */
    private final a f9398g;

    /* renamed from: h, reason: collision with root package name */
    private final b f9399h;

    /* renamed from: i, reason: collision with root package name */
    private volatile boolean f9400i = false;

    public sm1(BlockingQueue<uq1<?>> blockingQueue, tn1 tn1Var, a aVar, b bVar) {
        this.f9396e = blockingQueue;
        this.f9397f = tn1Var;
        this.f9398g = aVar;
        this.f9399h = bVar;
    }

    private final void b() {
        uq1<?> take = this.f9396e.take();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        take.a(3);
        try {
            take.a("network-queue-take");
            take.d();
            TrafficStats.setThreadStatsTag(take.zzc());
            uo1 a2 = this.f9397f.a(take);
            take.a("network-http-complete");
            if (a2.f9788e && take.l()) {
                take.b("not-modified");
                take.m();
                return;
            }
            hw1<?> a3 = take.a(a2);
            take.a("network-parse-complete");
            if (take.h() && a3.f7194b != null) {
                this.f9398g.a(take.e(), a3.f7194b);
                take.a("network-cache-written");
            }
            take.k();
            this.f9399h.a(take, a3);
            take.a(a3);
        } catch (r0 e2) {
            e2.zza(SystemClock.elapsedRealtime() - elapsedRealtime);
            this.f9399h.a(take, e2);
            take.m();
        } catch (Exception e3) {
            w1.a(e3, "Unhandled exception %s", e3.toString());
            r0 r0Var = new r0(e3);
            r0Var.zza(SystemClock.elapsedRealtime() - elapsedRealtime);
            this.f9399h.a(take, r0Var);
            take.m();
        } finally {
            take.a(4);
        }
    }

    public final void a() {
        this.f9400i = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                b();
            } catch (InterruptedException unused) {
                if (this.f9400i) {
                    Thread.currentThread().interrupt();
                    return;
                }
                w1.b("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
