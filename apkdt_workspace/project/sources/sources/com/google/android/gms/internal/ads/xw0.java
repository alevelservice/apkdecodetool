package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class xw0<T> extends vw0<T> {
    private final T zzcyr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xw0(T t) {
        this.zzcyr = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof xw0) {
            return this.zzcyr.equals(((xw0) obj).zzcyr);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzcyr.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzcyr);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.vw0
    public final T zzaoa() {
        return this.zzcyr;
    }
}
