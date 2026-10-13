package com.google.android.gms.internal.ads;

import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cw1 {
    public static boolean a(String str) {
        return a((String) mu1.e().a(aw1.S2), str);
    }

    private static boolean a(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                return Pattern.matches(str, str2);
            } catch (RuntimeException e2) {
                com.google.android.gms.ads.internal.n.g().a(e2, "NonagonUtil.isPatternMatched");
            }
        }
        return false;
    }
}
