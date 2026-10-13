package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class m70 extends Thread {

    /* renamed from: k, reason: collision with root package name */
    private static final boolean f8033k = w1.f10014a;

    /* renamed from: e, reason: collision with root package name */
    private final BlockingQueue<uq1<?>> f8034e;

    /* renamed from: f, reason: collision with root package name */
    private final BlockingQueue<uq1<?>> f8035f;

    /* renamed from: g, reason: collision with root package name */
    private final a f8036g;

    /* renamed from: h, reason: collision with root package name */
    private final b f8037h;

    /* renamed from: i, reason: collision with root package name */
    private volatile boolean f8038i = false;

    /* renamed from: j, reason: collision with root package name */
    private final ff1 f8039j = new ff1(this);

    public m70(BlockingQueue<uq1<?>> blockingQueue, BlockingQueue<uq1<?>> blockingQueue2, a aVar, b bVar) {
        this.f8034e = blockingQueue;
        this.f8035f = blockingQueue2;
        this.f8036g = aVar;
        this.f8037h = bVar;
    }

    private final void b() {
        uq1<?> take = this.f8034e.take();
        take.a("cache-queue-take");
        take.a(1);
        try {
            take.d();
            zw0 zza = this.f8036g.zza(take.e());
            if (zza == null) {
                take.a("cache-miss");
                if (!ff1.a(this.f8039j, take)) {
                    this.f8035f.put(take);
                }
                return;
            }
            if (zza.a()) {
                take.a("cache-hit-expired");
                take.a(zza);
                if (!ff1.a(this.f8039j, take)) {
                    this.f8035f.put(take);
                }
                return;
            }
            take.a("cache-hit");
            hw1<?> a2 = take.a(new uo1(zza.f10856a, zza.f10862g));
            take.a("cache-hit-parsed");
            if (!(zza.f10861f < System.currentTimeMillis())) {
                this.f8037h.a(take, a2);
            } else {
                take.a("cache-hit-refresh-needed");
                take.a(zza);
                a2.f7196d = true;
                if (!ff1.a(this.f8039j, take)) {
                    this.f8037h.a(take, a2, new gg1(this, take));
                } else {
                    this.f8037h.a(take, a2);
                }
            }
        } finally {
            take.a(2);
        }
    }

    public final void a() {
        this.f8038i = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f8033k) {
            w1.c("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f8036g.initialize();
        while (true) {
            try {
                b();
            } catch (InterruptedException unused) {
                if (this.f8038i) {
                    Thread.currentThread().interrupt();
                    return;
                }
                w1.b("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
