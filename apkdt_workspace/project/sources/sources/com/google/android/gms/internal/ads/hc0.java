package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class hc0 implements Callable {

    /* renamed from: e, reason: collision with root package name */
    private final cc0 f7036e;

    private hc0(cc0 cc0Var) {
        this.f7036e = cc0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Callable a(cc0 cc0Var) {
        return new hc0(cc0Var);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f7036e.getWritableDatabase();
    }
}
