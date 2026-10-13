package com.google.android.gms.internal.vision;

import java.io.Serializable;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class o0<T> implements k0<T>, Serializable {

    @NullableDecl
    private final T zzlk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(@NullableDecl T t) {
        this.zzlk = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof o0) {
            return h0.a(this.zzlk, ((o0) obj).zzlk);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.vision.k0
    public final T get() {
        return this.zzlk;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzlk});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzlk);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
