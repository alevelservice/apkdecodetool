package e.a.a.a.a;

import e.a.a.a.h;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: AsyncDispatcher.java */
/* loaded from: classes.dex */
public class b extends a implements Runnable {

    /* renamed from: h, reason: collision with root package name */
    private BlockingQueue<g> f16792h;

    /* renamed from: i, reason: collision with root package name */
    private AtomicBoolean f16793i;

    public b(a aVar) {
        super(aVar);
        this.f16792h = new LinkedBlockingQueue();
        this.f16793i = new AtomicBoolean(false);
    }

    @Override // e.a.a.a.a.d
    public boolean a(h hVar) {
        return hVar.c() == 1;
    }

    @Override // e.a.a.a.a.a
    public e.a.a.a.f b(e.a.a.a.c.a aVar, h hVar) {
        this.f16792h.offer(new g(aVar, hVar));
        if (this.f16793i.compareAndSet(false, true)) {
            this.f16791g.execute(this);
        }
        return e.a.a.a.f.SUCCESS;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.f16793i.get()) {
            try {
                g take = this.f16792h.take();
                if (take != null) {
                    c(take.event, take.subscriber);
                }
            } catch (Exception e2) {
                this.f16793i.set(false);
                e2.getMessage();
                return;
            }
        }
    }
}
