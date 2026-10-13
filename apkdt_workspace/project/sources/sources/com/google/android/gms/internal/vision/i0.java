package com.google.android.gms.internal.vision;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class i0<T> extends g0<T> {
    private final T zzlh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(T t) {
        this.zzlh = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof i0) {
            return this.zzlh.equals(((i0) obj).zzlh);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.vision.g0
    public final T get() {
        return this.zzlh;
    }

    public final int hashCode() {
        return this.zzlh.hashCode() + 1502476572;
    }

    @Override // com.google.android.gms.internal.vision.g0
    public final boolean isPresent() {
        return true;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzlh);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
