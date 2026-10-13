package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
final class i2<T> implements f2<T>, Serializable {

    @NullableDecl
    private final T zzaby;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i2(@NullableDecl T t) {
        this.zzaby = t;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (!(obj instanceof i2)) {
            return false;
        }
        T t = this.zzaby;
        T t2 = ((i2) obj).zzaby;
        if (t != t2) {
            return t != null && t.equals(t2);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final T get() {
        return this.zzaby;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaby});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzaby);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
