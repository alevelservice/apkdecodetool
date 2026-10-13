package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ne<T> implements hz0<T> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ke f8324a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ne(ke keVar) {
        this.f8324a = keVar;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(@Nullable T t) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f8324a.f7675b;
        atomicInteger.set(1);
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f8324a.f7675b;
        atomicInteger.set(-1);
    }
}
