package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
final class b2<T> extends z1<T> {
    private final T zzabr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b2(T t) {
        this.zzabr = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof b2) {
            return this.zzabr.equals(((b2) obj).zzabr);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.z1
    public final T get() {
        return this.zzabr;
    }

    public final int hashCode() {
        return this.zzabr.hashCode() + 1502476572;
    }

    @Override // com.google.android.gms.internal.measurement.z1
    public final boolean isPresent() {
        return true;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzabr);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
