package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class h extends a<String> {
    public static String a(SharedPreferences sharedPreferences, String str, String str2) {
        try {
            return (String) com.google.android.gms.internal.flags.b.a(new i(sharedPreferences, str, str2));
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2.getMessage());
            if (valueOf.length() != 0) {
                "Flag value not available, returning default: ".concat(valueOf);
            } else {
                new String("Flag value not available, returning default: ");
            }
            return str2;
        }
    }
}
