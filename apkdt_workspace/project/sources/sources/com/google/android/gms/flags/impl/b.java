package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class b extends a<Boolean> {
    public static Boolean a(SharedPreferences sharedPreferences, String str, Boolean bool) {
        try {
            return (Boolean) com.google.android.gms.internal.flags.b.a(new c(sharedPreferences, str, bool));
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2.getMessage());
            if (valueOf.length() != 0) {
                "Flag value not available, returning default: ".concat(valueOf);
            } else {
                new String("Flag value not available, returning default: ");
            }
            return bool;
        }
    }
}
