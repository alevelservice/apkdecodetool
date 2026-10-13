package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.internal.k;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class u<A extends a.b, L> {

    /* renamed from: a, reason: collision with root package name */
    private final k.a<L> f5136a;

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public u(k.a<L> aVar) {
        this.f5136a = aVar;
    }

    @KeepForSdk
    public k.a<L> a() {
        return this.f5136a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public abstract void a(A a2, e.i.b.b.d.i<Boolean> iVar);
}
