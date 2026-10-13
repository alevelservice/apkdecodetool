package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class f extends a<Long> {
    public static Long a(SharedPreferences sharedPreferences, String str, Long l2) {
        try {
            return (Long) com.google.android.gms.internal.flags.b.a(new g(sharedPreferences, str, l2));
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2.getMessage());
            if (valueOf.length() != 0) {
                "Flag value not available, returning default: ".concat(valueOf);
            } else {
                new String("Flag value not available, returning default: ");
            }
            return l2;
        }
    }
}
