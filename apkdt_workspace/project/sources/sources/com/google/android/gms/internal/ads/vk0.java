package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vk0 implements ko0<sk0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f9946a;

    /* renamed from: b, reason: collision with root package name */
    private final ws0 f9947b;

    public vk0(tz0 tz0Var, ws0 ws0Var) {
        this.f9946a = tz0Var;
        this.f9947b = ws0Var;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<sk0> a() {
        return this.f9946a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.uk0

            /* renamed from: e, reason: collision with root package name */
            private final vk0 f9747e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9747e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f9747e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ sk0 b() {
        return new sk0(this.f9947b.f10201j);
    }
}
