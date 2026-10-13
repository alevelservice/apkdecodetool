package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nn0 implements ko0<lo0<Bundle>> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f8400a;

    /* renamed from: b, reason: collision with root package name */
    private final String f8401b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nn0(Context context, @Nullable String str) {
        this.f8400a = context;
        this.f8401b = str;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<lo0<Bundle>> a() {
        return gz0.a(this.f8401b == null ? null : new lo0(this) { // from class: com.google.android.gms.internal.ads.qn0

            /* renamed from: a, reason: collision with root package name */
            private final nn0 f8983a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8983a = this;
            }

            @Override // com.google.android.gms.internal.ads.lo0
            public final void a(Object obj) {
                this.f8983a.a((Bundle) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(Bundle bundle) {
        bundle.putString("rewarded_sku_package", this.f8400a.getPackageName());
    }
}
