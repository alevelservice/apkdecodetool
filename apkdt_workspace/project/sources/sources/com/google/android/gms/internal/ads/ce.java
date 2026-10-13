package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ce implements hz0<Object> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f5985a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(String str) {
        this.f5985a = str;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(@Nullable Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        com.google.android.gms.ads.internal.n.g().a(th, this.f5985a);
    }
}
