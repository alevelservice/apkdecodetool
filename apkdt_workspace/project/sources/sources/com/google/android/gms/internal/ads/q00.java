package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class q00 implements o0<Object> {

    /* renamed from: a, reason: collision with root package name */
    private WeakReference<p00> f8825a;

    private q00(p00 p00Var) {
        this.f8825a = new WeakReference<>(p00Var);
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final void a(Object obj, Map<String, String> map) {
        p00 p00Var = this.f8825a.get();
        if (p00Var == null) {
            return;
        }
        p00.a(p00Var).g();
    }
}
