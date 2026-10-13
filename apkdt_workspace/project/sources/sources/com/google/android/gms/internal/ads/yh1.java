package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(21)
/* loaded from: classes.dex */
public final class yh1 {

    /* renamed from: a, reason: collision with root package name */
    private final int[] f10564a;

    /* renamed from: b, reason: collision with root package name */
    private final int f10565b;

    static {
        new yh1(new int[]{2}, 2);
    }

    private yh1(int[] iArr, int i2) {
        this.f10564a = Arrays.copyOf(iArr, iArr.length);
        Arrays.sort(this.f10564a);
        this.f10565b = 2;
    }

    public final boolean a(int i2) {
        return Arrays.binarySearch(this.f10564a, i2) >= 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yh1)) {
            return false;
        }
        yh1 yh1Var = (yh1) obj;
        return Arrays.equals(this.f10564a, yh1Var.f10564a) && this.f10565b == yh1Var.f10565b;
    }

    public final int hashCode() {
        return this.f10565b + (Arrays.hashCode(this.f10564a) * 31);
    }

    public final String toString() {
        int i2 = this.f10565b;
        String arrays = Arrays.toString(this.f10564a);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i2);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
