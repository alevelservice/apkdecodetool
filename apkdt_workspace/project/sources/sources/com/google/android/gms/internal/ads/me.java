package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class me<T> implements hz0<T> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ le f8083a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ je f8084b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public me(ke keVar, le leVar, je jeVar) {
        this.f8083a = leVar;
        this.f8084b = jeVar;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(@Nullable T t) {
        this.f8083a.b(t);
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        this.f8084b.run();
    }
}
