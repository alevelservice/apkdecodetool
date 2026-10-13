package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nx extends cw<fq1> implements fq1 {

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private Map<View, bq1> f8448f;

    /* renamed from: g, reason: collision with root package name */
    private final Context f8449g;

    /* renamed from: h, reason: collision with root package name */
    private final ns0 f8450h;

    public nx(Context context, Set<ox<fq1>> set, ns0 ns0Var) {
        super(set);
        this.f8448f = new WeakHashMap(1);
        this.f8449g = context;
        this.f8450h = ns0Var;
    }

    public final synchronized void a(View view) {
        bq1 bq1Var = this.f8448f.get(view);
        if (bq1Var == null) {
            bq1Var = new bq1(this.f8449g, view);
            bq1Var.a(this);
            this.f8448f.put(view, bq1Var);
        }
        if (this.f8450h != null && this.f8450h.N) {
            if (((Boolean) mu1.e().a(aw1.c1)).booleanValue()) {
                bq1Var.a(((Long) mu1.e().a(aw1.b1)).longValue());
                return;
            }
        }
        bq1Var.a();
    }

    public final synchronized void b(View view) {
        if (this.f8448f.containsKey(view)) {
            this.f8448f.get(view).b(this);
            this.f8448f.remove(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.fq1
    public final synchronized void zza(final cq1 cq1Var) {
        a(new ew(cq1Var) { // from class: com.google.android.gms.internal.ads.qx

            /* renamed from: a, reason: collision with root package name */
            private final cq1 f9017a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9017a = cq1Var;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                ((fq1) obj).zza(this.f9017a);
            }
        });
    }
}
