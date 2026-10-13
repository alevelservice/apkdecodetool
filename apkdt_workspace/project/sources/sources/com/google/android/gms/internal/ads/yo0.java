package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.l.a;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yo0 implements ko0<zo0> {

    /* renamed from: a, reason: collision with root package name */
    private final x9 f10615a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f10616b;

    /* renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f10617c;

    /* renamed from: d, reason: collision with root package name */
    private final Executor f10618d;

    public yo0(x9 x9Var, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f10615a = x9Var;
        this.f10616b = context;
        this.f10617c = scheduledExecutorService;
        this.f10618d = executor;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<zo0> a() {
        if (((Boolean) mu1.e().a(aw1.L0)).booleanValue()) {
            final he heVar = new he();
            final qz0<a.C0077a> a2 = this.f10615a.a(this.f10616b);
            a2.a(new Runnable(this, a2, heVar) { // from class: com.google.android.gms.internal.ads.bp0

                /* renamed from: e, reason: collision with root package name */
                private final yo0 f5832e;

                /* renamed from: f, reason: collision with root package name */
                private final qz0 f5833f;

                /* renamed from: g, reason: collision with root package name */
                private final he f5834g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5832e = this;
                    this.f5833f = a2;
                    this.f5834g = heVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f5832e.a(this.f5833f, this.f5834g);
                }
            }, this.f10618d);
            this.f10617c.schedule(new Runnable(a2) { // from class: com.google.android.gms.internal.ads.ap0

                /* renamed from: e, reason: collision with root package name */
                private final qz0 f5638e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5638e = a2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f5638e.cancel(true);
                }
            }, ((Long) mu1.e().a(aw1.M0)).longValue(), TimeUnit.MILLISECONDS);
            return heVar;
        }
        return gz0.a((Throwable) new Exception("Did not ad Ad ID into query param."));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void a(qz0 qz0Var, he heVar) {
        String str;
        try {
            a.C0077a c0077a = (a.C0077a) qz0Var.get();
            if (c0077a == null || !TextUtils.isEmpty(c0077a.a())) {
                str = null;
            } else {
                mu1.a();
                str = gd.b(this.f10616b);
            }
            heVar.b(new zo0(c0077a, this.f10616b, str));
        } catch (InterruptedException | CancellationException | ExecutionException unused) {
            mu1.a();
            heVar.b(new zo0(null, this.f10616b, gd.b(this.f10616b)));
        }
    }
}
