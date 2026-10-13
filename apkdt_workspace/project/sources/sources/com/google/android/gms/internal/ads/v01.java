package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class v01 {

    /* renamed from: a, reason: collision with root package name */
    private w41 f9847a;

    private v01(w41 w41Var) {
        this.f9847a = w41Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final v01 a(w41 w41Var) {
        if (w41Var != null && w41Var.n() > 0) {
            return new v01(w41Var);
        }
        throw new GeneralSecurityException("empty keyset");
    }

    public final String toString() {
        return f11.a(this.f9847a).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final w41 a() {
        return this.f9847a;
    }
}
