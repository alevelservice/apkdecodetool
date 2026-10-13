package e.a.a.a.a;

import android.os.Looper;
import e.a.a.a.h;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: BackgroundDispatcher.java */
/* loaded from: classes.dex */
public class c extends a implements Runnable {

    /* renamed from: h, reason: collision with root package name */
    private BlockingQueue<g> f16794h;

    /* renamed from: i, reason: collision with root package name */
    private AtomicBoolean f16795i;

    public c(a aVar) {
        super(aVar);
        this.f16794h = new LinkedBlockingQueue();
        this.f16795i = new AtomicBoolean(false);
    }

    @Override // e.a.a.a.a.d
    public boolean a(h hVar) {
        return hVar.c() == 3;
    }

    @Override // e.a.a.a.a.a
    public e.a.a.a.f b(e.a.a.a.c.a aVar, h hVar) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            this.f16794h.offer(new g(aVar, hVar));
            if (this.f16795i.compareAndSet(false, true)) {
                this.f16791g.execute(this);
            }
        } else {
            c(aVar, hVar);
        }
        return e.a.a.a.f.SUCCESS;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.f16795i.get()) {
            try {
                g take = this.f16794h.take();
                if (take != null) {
                    c(take.event, take.subscriber);
                }
            } catch (Exception e2) {
                this.f16795i.set(false);
                e2.getMessage();
                return;
            }
        }
    }
}
