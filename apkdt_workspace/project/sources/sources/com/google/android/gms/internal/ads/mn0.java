package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mn0 implements ko0<jn0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f8196a;

    /* renamed from: b, reason: collision with root package name */
    private final Bundle f8197b;

    public mn0(tz0 tz0Var, @Nullable Bundle bundle) {
        this.f8196a = tz0Var;
        this.f8197b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<jn0> a() {
        return this.f8196a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.ln0

            /* renamed from: e, reason: collision with root package name */
            private final mn0 f7942e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7942e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f7942e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ jn0 b() {
        return new jn0(this.f8197b);
    }
}
