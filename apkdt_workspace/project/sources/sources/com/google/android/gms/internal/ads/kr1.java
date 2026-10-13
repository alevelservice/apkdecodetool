package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kr1 {

    /* renamed from: a, reason: collision with root package name */
    final long f7737a;

    /* renamed from: b, reason: collision with root package name */
    final String f7738b;

    /* renamed from: c, reason: collision with root package name */
    final int f7739c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kr1(long j2, String str, int i2) {
        this.f7737a = j2;
        this.f7738b = str;
        this.f7739c = i2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof kr1)) {
            kr1 kr1Var = (kr1) obj;
            if (kr1Var.f7737a == this.f7737a && kr1Var.f7739c == this.f7739c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.f7737a;
    }
}
