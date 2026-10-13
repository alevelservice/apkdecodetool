package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.common.api.internal.p;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class f extends a.m.b.a<Void> implements p {
    private Semaphore o;
    private Set<com.google.android.gms.common.api.f> p;

    public f(Context context, Set<com.google.android.gms.common.api.f> set) {
        super(context);
        this.o = new Semaphore(0);
        this.p = set;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // a.m.b.a
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final Void t() {
        Iterator<com.google.android.gms.common.api.f> it = this.p.iterator();
        if (!it.hasNext()) {
            try {
                this.o.tryAcquire(0, 5L, TimeUnit.SECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
            return null;
        }
        it.next().a(this);
        throw null;
    }

    @Override // a.m.b.b
    protected final void l() {
        this.o.drainPermits();
        e();
    }
}
