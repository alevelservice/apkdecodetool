package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class gw1 {
    public static void a(ew1 ew1Var, @Nullable fw1 fw1Var) {
        if (fw1Var.a() != null) {
            if (!TextUtils.isEmpty(fw1Var.b())) {
                ew1Var.a(fw1Var.a(), fw1Var.b(), fw1Var.c(), fw1Var.d());
                return;
            }
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
    }
}
