package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
final class x1<T> extends z1<T> {
    static final x1<Object> zzabp = new x1<>();

    private x1() {
    }

    public final boolean equals(@NullableDecl Object obj) {
        return obj == this;
    }

    @Override // com.google.android.gms.internal.measurement.z1
    public final T get() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    public final int hashCode() {
        return 2040732332;
    }

    @Override // com.google.android.gms.internal.measurement.z1
    public final boolean isPresent() {
        return false;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
