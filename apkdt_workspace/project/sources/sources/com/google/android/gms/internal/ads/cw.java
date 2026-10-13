package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class cw<ListenerT> {

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private final Map<ListenerT, Executor> f6124e = new HashMap();

    /* JADX INFO: Access modifiers changed from: protected */
    public cw(Set<ox<ListenerT>> set) {
        a(set);
    }

    public final synchronized void a(ox<ListenerT> oxVar) {
        a(oxVar.f8600a, oxVar.f8601b);
    }

    public final synchronized void a(ListenerT listenert, Executor executor) {
        this.f6124e.put(listenert, executor);
    }

    private final synchronized void a(Set<ox<ListenerT>> set) {
        Iterator<ox<ListenerT>> it = set.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final synchronized void a(final ew<ListenerT> ewVar) {
        for (Map.Entry<ListenerT, Executor> entry : this.f6124e.entrySet()) {
            final ListenerT key = entry.getKey();
            entry.getValue().execute(new Runnable(ewVar, key) { // from class: com.google.android.gms.internal.ads.fw

                /* renamed from: e, reason: collision with root package name */
                private final ew f6727e;

                /* renamed from: f, reason: collision with root package name */
                private final Object f6728f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6727e = ewVar;
                    this.f6728f = key;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        this.f6727e.b(this.f6728f);
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.n.g().b(th, "EventEmitter.notify");
                        na.e("Event emitter exception.", th);
                    }
                }
            });
        }
    }
}
