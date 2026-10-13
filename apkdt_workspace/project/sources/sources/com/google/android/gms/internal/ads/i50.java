package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class i50 implements Callable<y40> {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.b f7228e;

    /* renamed from: f, reason: collision with root package name */
    private final oi f7229f;

    /* renamed from: g, reason: collision with root package name */
    private final Context f7230g;

    /* renamed from: h, reason: collision with root package name */
    private final Executor f7231h;

    /* renamed from: i, reason: collision with root package name */
    private final t11 f7232i;

    /* renamed from: j, reason: collision with root package name */
    private final zzawv f7233j;

    public i50(Context context, Executor executor, t11 t11Var, zzawv zzawvVar, com.google.android.gms.ads.internal.b bVar, oi oiVar) {
        this.f7230g = context;
        this.f7231h = executor;
        this.f7232i = t11Var;
        this.f7233j = zzawvVar;
        this.f7228e = bVar;
        this.f7229f = oiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Context a(i50 i50Var) {
        return i50Var.f7230g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Executor b(i50 i50Var) {
        return i50Var.f7231h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ t11 c(i50 i50Var) {
        return i50Var.f7232i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzawv d(i50 i50Var) {
        return i50Var.f7233j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ com.google.android.gms.ads.internal.b e(i50 i50Var) {
        return i50Var.f7228e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ oi f(i50 i50Var) {
        return i50Var.f7229f;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ y40 call() {
        y40 y40Var = new y40(this);
        y40Var.b();
        return y40Var;
    }
}
