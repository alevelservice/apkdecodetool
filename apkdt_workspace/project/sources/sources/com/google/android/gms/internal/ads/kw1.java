package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kw1 {
    public static boolean a(@Nullable pw1 pw1Var, @Nullable nw1 nw1Var, String... strArr) {
        if (pw1Var == null || nw1Var == null || !pw1Var.f8800a || nw1Var == null) {
            return false;
        }
        return pw1Var.a(nw1Var, com.google.android.gms.ads.internal.n.j().c(), strArr);
    }

    @Nullable
    public static nw1 a(@Nullable pw1 pw1Var) {
        if (pw1Var == null) {
            return null;
        }
        return pw1Var.a(com.google.android.gms.ads.internal.n.j().c());
    }
}
