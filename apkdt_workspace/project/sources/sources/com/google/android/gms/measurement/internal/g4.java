package com.google.android.gms.measurement.internal;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g4 extends Thread {

    /* renamed from: e, reason: collision with root package name */
    private final Object f12930e;

    /* renamed from: f, reason: collision with root package name */
    private final BlockingQueue<h4<?>> f12931f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ d4 f12932g;

    public g4(d4 d4Var, String str, BlockingQueue<h4<?>> blockingQueue) {
        this.f12932g = d4Var;
        com.google.android.gms.common.internal.m.a(str);
        com.google.android.gms.common.internal.m.a(blockingQueue);
        this.f12930e = new Object();
        this.f12931f = blockingQueue;
        setName(str);
    }

    public final void a() {
        synchronized (this.f12930e) {
            this.f12930e.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        g4 g4Var;
        g4 g4Var2;
        Object obj3;
        Object obj4;
        Semaphore semaphore2;
        Object obj5;
        g4 g4Var3;
        g4 g4Var4;
        boolean z;
        Semaphore semaphore3;
        boolean z2 = false;
        while (!z2) {
            try {
                semaphore3 = this.f12932g.f12834j;
                semaphore3.acquire();
                z2 = true;
            } catch (InterruptedException e2) {
                a(e2);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                h4<?> poll = this.f12931f.poll();
                if (poll != null) {
                    Process.setThreadPriority(poll.f12967f ? threadPriority : 10);
                    poll.run();
                } else {
                    synchronized (this.f12930e) {
                        if (this.f12931f.peek() == null) {
                            z = this.f12932g.f12835k;
                            if (!z) {
                                try {
                                    this.f12930e.wait(30000L);
                                } catch (InterruptedException e3) {
                                    a(e3);
                                }
                            }
                        }
                    }
                    obj3 = this.f12932g.f12833i;
                    synchronized (obj3) {
                        if (this.f12931f.peek() == null) {
                            break;
                        }
                    }
                }
            }
            obj4 = this.f12932g.f12833i;
            synchronized (obj4) {
                semaphore2 = this.f12932g.f12834j;
                semaphore2.release();
                obj5 = this.f12932g.f12833i;
                obj5.notifyAll();
                g4Var3 = this.f12932g.f12827c;
                if (this != g4Var3) {
                    g4Var4 = this.f12932g.f12828d;
                    if (this == g4Var4) {
                        d4.b(this.f12932g, null);
                    } else {
                        this.f12932g.zzab().q().a("Current scheduler thread is neither worker nor network");
                    }
                } else {
                    d4.a(this.f12932g, null);
                }
            }
        } catch (Throwable th) {
            obj = this.f12932g.f12833i;
            synchronized (obj) {
                semaphore = this.f12932g.f12834j;
                semaphore.release();
                obj2 = this.f12932g.f12833i;
                obj2.notifyAll();
                g4Var = this.f12932g.f12827c;
                if (this != g4Var) {
                    g4Var2 = this.f12932g.f12828d;
                    if (this == g4Var2) {
                        d4.b(this.f12932g, null);
                    } else {
                        this.f12932g.zzab().q().a("Current scheduler thread is neither worker nor network");
                    }
                } else {
                    d4.a(this.f12932g, null);
                }
                throw th;
            }
        }
    }

    private final void a(InterruptedException interruptedException) {
        this.f12932g.zzab().t().a(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }
}
