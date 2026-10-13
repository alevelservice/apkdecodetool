package e.a.a.a.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import e.a.a.a.h;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: MainDispatcher.java */
/* loaded from: classes.dex */
public class e extends e.a.a.a.a.a implements d {

    /* renamed from: h, reason: collision with root package name */
    private BlockingQueue<g> f16796h;

    /* renamed from: i, reason: collision with root package name */
    private Handler f16797i;

    /* compiled from: MainDispatcher.java */
    /* loaded from: classes.dex */
    private class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            while (!e.this.f16796h.isEmpty()) {
                g gVar = (g) e.this.f16796h.poll();
                if (gVar != null) {
                    e.this.c(gVar.event, gVar.subscriber);
                }
            }
        }
    }

    public e(e.a.a.a.a.a aVar) {
        super(aVar);
        this.f16796h = new LinkedBlockingQueue();
        this.f16797i = new a(Looper.getMainLooper());
    }

    @Override // e.a.a.a.a.a
    public e.a.a.a.f b(e.a.a.a.c.a aVar, h hVar) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return c(aVar, hVar);
        }
        this.f16796h.offer(new g(aVar, hVar));
        Handler handler = this.f16797i;
        if (handler.sendMessage(handler.obtainMessage())) {
            return e.a.a.a.f.SUCCESS;
        }
        throw new e.a.a.a.e.a("Dispatcher Event Fail");
    }

    @Override // e.a.a.a.a.d
    public boolean a(h hVar) {
        return hVar.c() == 2;
    }
}
