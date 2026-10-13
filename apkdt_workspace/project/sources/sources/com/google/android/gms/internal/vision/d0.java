package com.google.android.gms.internal.vision;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class d0<T> extends g0<T> {
    static final d0<Object> zzlf = new d0<>();

    private d0() {
    }

    public final boolean equals(@NullableDecl Object obj) {
        return obj == this;
    }

    @Override // com.google.android.gms.internal.vision.g0
    public final T get() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    public final int hashCode() {
        return 2040732332;
    }

    @Override // com.google.android.gms.internal.vision.g0
    public final boolean isPresent() {
        return false;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
