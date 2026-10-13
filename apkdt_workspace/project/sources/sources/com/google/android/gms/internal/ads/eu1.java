package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public class eu1 {

    /* renamed from: a, reason: collision with root package name */
    private final ut1 f6503a;

    /* renamed from: b, reason: collision with root package name */
    private final vt1 f6504b;

    /* renamed from: c, reason: collision with root package name */
    private final q f6505c;

    /* renamed from: d, reason: collision with root package name */
    private final p6 f6506d;

    public eu1(ut1 ut1Var, vt1 vt1Var, zu1 zu1Var, q qVar, a8 a8Var, h8 h8Var, p6 p6Var, s sVar) {
        this.f6503a = ut1Var;
        this.f6504b = vt1Var;
        this.f6505c = qVar;
        this.f6506d = p6Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        mu1.a().a(context, mu1.g().f11000e, "gmob-apps", bundle, true);
    }

    public final zzux a(Context context, String str, zzajd zzajdVar) {
        return new iu1(this, context, str, zzajdVar).a(context, false);
    }

    public final zzaaw a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new ju1(this, frameLayout, frameLayout2, context).a(context, false);
    }

    @Nullable
    public final zzamu a(Activity activity) {
        fu1 fu1Var = new fu1(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            qd.b("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return fu1Var.a(activity, z);
    }
}
