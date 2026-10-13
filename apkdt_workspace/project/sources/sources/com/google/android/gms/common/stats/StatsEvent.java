package com.google.android.gms.common.stats;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {
    public abstract long V();

    public abstract String W();

    public abstract int j();

    public abstract long k();

    public String toString() {
        long k2 = k();
        int j2 = j();
        long V = V();
        String W = W();
        StringBuilder sb = new StringBuilder(String.valueOf(W).length() + 53);
        sb.append(k2);
        sb.append("\t");
        sb.append(j2);
        sb.append("\t");
        sb.append(V);
        sb.append(W);
        return sb.toString();
    }
}
