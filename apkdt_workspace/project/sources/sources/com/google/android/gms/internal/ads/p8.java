package com.google.android.gms.internal.ads;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class p8 implements hz0<Void> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ qz0 f8659a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p8(l8 l8Var, qz0 qz0Var) {
        this.f8659a = qz0Var;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        List list;
        list = l8.n;
        list.remove(this.f8659a);
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(Void r2) {
        List list;
        list = l8.n;
        list.remove(this.f8659a);
    }
}
