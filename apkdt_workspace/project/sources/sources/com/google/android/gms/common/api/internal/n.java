package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.internal.k;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class n<A extends a.b, L> {

    /* renamed from: a, reason: collision with root package name */
    private final k<L> f5106a;

    /* renamed from: b, reason: collision with root package name */
    private final Feature[] f5107b = null;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f5108c = false;

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public n(k<L> kVar) {
        this.f5106a = kVar;
    }

    @KeepForSdk
    public void a() {
        this.f5106a.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public abstract void a(A a2, e.i.b.b.d.i<Void> iVar);

    @KeepForSdk
    public k.a<L> b() {
        return this.f5106a.b();
    }

    @Nullable
    @KeepForSdk
    public Feature[] c() {
        return this.f5107b;
    }

    public final boolean d() {
        return this.f5108c;
    }
}
