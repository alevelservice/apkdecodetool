package com.google.android.gms.internal.ads;

import java.lang.reflect.Method;
import java.security.GeneralSecurityException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jf1 {

    /* renamed from: a, reason: collision with root package name */
    static s01 f7478a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(cf1 cf1Var) {
        Method a2;
        if (f7478a != null) {
            return true;
        }
        String str = (String) mu1.e().a(aw1.B1);
        if (str == null || str.length() == 0) {
            str = (cf1Var == null || (a2 = cf1Var.a("Rx/heC2JEYsbYRXDgEN1gsty+F6bGgJ1u7nhpEb4M3zTVmNdSKl8jv7T9QBOGiBo", "VJKYVzPjjk7QpAOgA66fh/W7w026ne08y+a0kIFLwtw=")) == null) ? null : (String) a2.invoke(null, new Object[0]);
            if (str == null) {
                return false;
            }
        }
        try {
            v01 a3 = y01.a(qd0.a(str, true));
            n01.a(x11.f10249a);
            f7478a = z11.a(a3, null);
        } catch (IllegalArgumentException | GeneralSecurityException unused) {
        }
        return f7478a != null;
    }
}
