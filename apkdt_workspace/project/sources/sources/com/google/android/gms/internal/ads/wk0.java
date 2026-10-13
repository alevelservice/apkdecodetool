package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wk0 implements ko0<lo0<Bundle>> {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f10136a;

    /* renamed from: b, reason: collision with root package name */
    private final ca f10137b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public wk0(Executor executor, ca caVar) {
        this.f10136a = executor;
        this.f10137b = caVar;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<lo0<Bundle>> a() {
        if (((Boolean) mu1.e().a(aw1.y1)).booleanValue()) {
            return gz0.a((Object) null);
        }
        return gz0.a(this.f10137b.j(), zk0.f10775a, this.f10136a);
    }
}
