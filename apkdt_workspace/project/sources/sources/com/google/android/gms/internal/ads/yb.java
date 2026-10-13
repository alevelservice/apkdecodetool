package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yb extends c5 {

    /* renamed from: d, reason: collision with root package name */
    private final Context f10526d;

    private yb(Context context, x2 x2Var) {
        super(x2Var);
        this.f10526d = context;
    }

    public static bu1 a(Context context) {
        bu1 bu1Var = new bu1(new n5(new File(context.getCacheDir(), "admob_volley"), 20971520), new yb(context, new i8()));
        bu1Var.a();
        return bu1Var;
    }

    @Override // com.google.android.gms.internal.ads.c5, com.google.android.gms.internal.ads.tn1
    public final uo1 a(uq1<?> uq1Var) {
        if (uq1Var.h() && uq1Var.b() == 0) {
            if (Pattern.matches((String) mu1.e().a(aw1.t2), uq1Var.c())) {
                mu1.a();
                if (gd.c(this.f10526d, 13400000)) {
                    uo1 a2 = new e1(this.f10526d).a(uq1Var);
                    if (a2 != null) {
                        String valueOf = String.valueOf(uq1Var.c());
                        na.e(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        return a2;
                    }
                    String valueOf2 = String.valueOf(uq1Var.c());
                    na.e(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.a(uq1Var);
    }
}
