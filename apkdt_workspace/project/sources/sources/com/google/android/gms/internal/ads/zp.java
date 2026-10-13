package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.WorkerThread;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zp extends uo {

    /* renamed from: f, reason: collision with root package name */
    private final zzack f10823f;

    /* renamed from: g, reason: collision with root package name */
    private final Runnable f10824g;

    /* renamed from: h, reason: collision with root package name */
    private final Executor f10825h;

    public zp(rq rqVar, zzack zzackVar, Runnable runnable, Executor executor) {
        super(rqVar);
        this.f10823f = zzackVar;
        this.f10824g = runnable;
        this.f10825h = executor;
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final void a(ViewGroup viewGroup, zztw zztwVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(Runnable runnable) {
        try {
            if (this.f10823f.zzq(ObjectWrapper.wrap(runnable))) {
                return;
            }
            runnable.run();
        } catch (RemoteException unused) {
            runnable.run();
        }
    }

    @Override // com.google.android.gms.internal.ads.sq
    @WorkerThread
    public final void c() {
        final AtomicReference atomicReference = new AtomicReference(this.f10824g);
        final Runnable runnable = new Runnable(atomicReference) { // from class: com.google.android.gms.internal.ads.cq

            /* renamed from: e, reason: collision with root package name */
            private final AtomicReference f6085e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6085e = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable2 = (Runnable) this.f6085e.getAndSet(null);
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        this.f10825h.execute(new Runnable(this, runnable) { // from class: com.google.android.gms.internal.ads.bq

            /* renamed from: e, reason: collision with root package name */
            private final zp f5836e;

            /* renamed from: f, reason: collision with root package name */
            private final Runnable f5837f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5836e = this;
                this.f5837f = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5836e.a(this.f5837f);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final zzwk f() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final ms0 g() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final View h() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final int i() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.uo
    public final void j() {
    }
}
