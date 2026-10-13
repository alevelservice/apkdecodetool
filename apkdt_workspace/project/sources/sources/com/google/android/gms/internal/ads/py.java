package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class py extends sq {

    /* renamed from: f, reason: collision with root package name */
    private final Context f8810f;

    /* renamed from: g, reason: collision with root package name */
    private final WeakReference<fi> f8811g;

    /* renamed from: h, reason: collision with root package name */
    private final dx f8812h;

    /* renamed from: i, reason: collision with root package name */
    private final sz f8813i;

    /* renamed from: j, reason: collision with root package name */
    private final pr f8814j;

    /* renamed from: k, reason: collision with root package name */
    private final qv0 f8815k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f8816l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public py(rq rqVar, Context context, @Nullable fi fiVar, dx dxVar, sz szVar, pr prVar, qv0 qv0Var) {
        super(rqVar);
        this.f8816l = false;
        this.f8810f = context;
        this.f8811g = new WeakReference<>(fiVar);
        this.f8812h = dxVar;
        this.f8813i = szVar;
        this.f8814j = prVar;
        this.f8815k = qv0Var;
    }

    public final void a(boolean z) {
        this.f8812h.d();
        this.f8813i.a(z, this.f8810f);
        this.f8816l = true;
    }

    public final boolean f() {
        return this.f8814j.c();
    }

    public final void finalize() {
        try {
            fi fiVar = this.f8811g.get();
            if (((Boolean) mu1.e().a(aw1.J3)).booleanValue()) {
                if (!this.f8816l && fiVar != null) {
                    tz0 tz0Var = yd.f10543d;
                    fiVar.getClass();
                    tz0Var.execute(oy.a(fiVar));
                }
            } else if (fiVar != null) {
                fiVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean g() {
        if (((Boolean) mu1.e().a(aw1.w0)).booleanValue()) {
            com.google.android.gms.ads.internal.n.c();
            if (wa.g(this.f8810f)) {
                qd.d("It is not recommended to show an interstitial when app is not in foreground.");
                if (((Boolean) mu1.e().a(aw1.x0)).booleanValue()) {
                    this.f8815k.a(this.f9421a.f9986b.f9630b.f8769b);
                }
                return false;
            }
        }
        return !this.f8816l;
    }
}
