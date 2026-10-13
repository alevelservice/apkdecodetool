package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qn implements com.google.android.gms.ads.internal.overlay.m, vt, wt, fq1 {

    /* renamed from: e, reason: collision with root package name */
    private final hn f8975e;

    /* renamed from: f, reason: collision with root package name */
    private final on f8976f;

    /* renamed from: h, reason: collision with root package name */
    private final o4<JSONObject, JSONObject> f8978h;

    /* renamed from: i, reason: collision with root package name */
    private final Executor f8979i;

    /* renamed from: j, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f8980j;

    /* renamed from: g, reason: collision with root package name */
    private final Set<fi> f8977g = new HashSet();

    /* renamed from: k, reason: collision with root package name */
    private final AtomicBoolean f8981k = new AtomicBoolean(false);

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("this")
    private final sn f8982l = new sn();
    private boolean m = false;
    private WeakReference<?> n = new WeakReference<>(this);

    public qn(l4 l4Var, on onVar, Executor executor, hn hnVar, com.google.android.gms.common.util.e eVar) {
        this.f8975e = hnVar;
        x3<JSONObject> x3Var = b4.f5712b;
        this.f8978h = l4Var.a("google.afma.activeView.handleUpdate", x3Var, x3Var);
        this.f8976f = onVar;
        this.f8979i = executor;
        this.f8980j = eVar;
    }

    private final void e() {
        Iterator<fi> it = this.f8977g.iterator();
        while (it.hasNext()) {
            this.f8975e.b(it.next());
        }
        this.f8975e.a();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void a() {
    }

    public final synchronized void a(fi fiVar) {
        this.f8977g.add(fiVar);
        this.f8975e.a(fiVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final void b() {
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final synchronized void b(@Nullable Context context) {
        this.f8982l.f9402b = true;
        c();
    }

    public final synchronized void c() {
        if (!(this.n.get() != null)) {
            d();
            return;
        }
        if (!this.m && this.f8981k.get()) {
            try {
                this.f8982l.f9403c = this.f8980j.c();
                final JSONObject d2 = this.f8976f.d(this.f8982l);
                for (final fi fiVar : this.f8977g) {
                    this.f8979i.execute(new Runnable(fiVar, d2) { // from class: com.google.android.gms.internal.ads.pn

                        /* renamed from: e, reason: collision with root package name */
                        private final fi f8730e;

                        /* renamed from: f, reason: collision with root package name */
                        private final JSONObject f8731f;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f8730e = fiVar;
                            this.f8731f = d2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f8730e.zzb("AFMA_updateActiveView", this.f8731f);
                        }
                    });
                }
                de.b(this.f8978h.b(d2), "ActiveViewListener.callActiveViewJs");
            } catch (Exception e2) {
                na.e("Failed to call ActiveViewJS", e2);
            }
        }
    }

    public final synchronized void d() {
        e();
        this.m = true;
    }

    @Override // com.google.android.gms.internal.ads.wt
    public final synchronized void onAdImpression() {
        if (this.f8981k.compareAndSet(false, true)) {
            this.f8975e.a(this);
            c();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final synchronized void onPause() {
        this.f8982l.f9402b = true;
        c();
    }

    @Override // com.google.android.gms.ads.internal.overlay.m
    public final synchronized void onResume() {
        this.f8982l.f9402b = false;
        c();
    }

    @Override // com.google.android.gms.internal.ads.fq1
    public final synchronized void zza(cq1 cq1Var) {
        this.f8982l.f9401a = cq1Var.f6096j;
        this.f8982l.f9405e = cq1Var;
        c();
    }

    public final void a(Object obj) {
        this.n = new WeakReference<>(obj);
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final synchronized void a(@Nullable Context context) {
        this.f8982l.f9402b = false;
        c();
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final synchronized void c(@Nullable Context context) {
        this.f8982l.f9404d = "u";
        c();
        e();
        this.m = true;
    }
}
