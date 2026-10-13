package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class r00 implements o0<Object> {

    /* renamed from: a, reason: collision with root package name */
    private WeakReference<p00> f9022a;

    private r00(p00 p00Var) {
        this.f9022a = new WeakReference<>(p00Var);
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final void a(Object obj, Map<String, String> map) {
        p00 p00Var = this.f9022a.get();
        if (p00Var != null && "_ac".equals(map.get("eventName"))) {
            p00Var.f8618h.onAdClicked();
        }
    }
}
