package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ff1 implements ls1 {

    /* renamed from: a */
    private final Map<String, List<uq1<?>>> f6635a = new HashMap();

    /* renamed from: b */
    private final m70 f6636b;

    public ff1(m70 m70Var) {
        this.f6636b = m70Var;
    }

    public final synchronized boolean b(uq1<?> uq1Var) {
        String e2 = uq1Var.e();
        if (this.f6635a.containsKey(e2)) {
            List<uq1<?>> list = this.f6635a.get(e2);
            if (list == null) {
                list = new ArrayList<>();
            }
            uq1Var.a("waiting-for-response");
            list.add(uq1Var);
            this.f6635a.put(e2, list);
            if (w1.f10014a) {
                w1.a("Request for cacheKey=%s is in flight, putting on hold.", e2);
            }
            return true;
        }
        this.f6635a.put(e2, null);
        uq1Var.a((ls1) this);
        if (w1.f10014a) {
            w1.a("new request, sending to network %s", e2);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.ls1
    public final void a(uq1<?> uq1Var, hw1<?> hw1Var) {
        List<uq1<?>> remove;
        b bVar;
        zw0 zw0Var = hw1Var.f7194b;
        if (zw0Var != null && !zw0Var.a()) {
            String e2 = uq1Var.e();
            synchronized (this) {
                remove = this.f6635a.remove(e2);
            }
            if (remove != null) {
                if (w1.f10014a) {
                    w1.c("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), e2);
                }
                for (uq1<?> uq1Var2 : remove) {
                    bVar = this.f6636b.f8037h;
                    bVar.a(uq1Var2, hw1Var);
                }
                return;
            }
            return;
        }
        a(uq1Var);
    }

    @Override // com.google.android.gms.internal.ads.ls1
    public final synchronized void a(uq1<?> uq1Var) {
        BlockingQueue blockingQueue;
        String e2 = uq1Var.e();
        List<uq1<?>> remove = this.f6635a.remove(e2);
        if (remove != null && !remove.isEmpty()) {
            if (w1.f10014a) {
                w1.c("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), e2);
            }
            uq1<?> remove2 = remove.remove(0);
            this.f6635a.put(e2, remove);
            remove2.a((ls1) this);
            try {
                blockingQueue = this.f6636b.f8035f;
                blockingQueue.put(remove2);
            } catch (InterruptedException e3) {
                w1.b("Couldn't add request to queue. %s", e3.toString());
                Thread.currentThread().interrupt();
                this.f6636b.a();
            }
        }
    }
}
