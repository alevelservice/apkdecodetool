package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.alipay.mobile.security.bio.workspace.Env;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bo0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f5814a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f5815b;

    /* renamed from: c, reason: collision with root package name */
    private final String f5816c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f5817d;

    /* renamed from: e, reason: collision with root package name */
    private final int f5818e;

    /* renamed from: f, reason: collision with root package name */
    private final int f5819f;

    /* renamed from: g, reason: collision with root package name */
    private final int f5820g;

    public bo0(boolean z, boolean z2, String str, boolean z3, int i2, int i3, int i4) {
        this.f5814a = z;
        this.f5815b = z2;
        this.f5816c = str;
        this.f5817d = z3;
        this.f5818e = i2;
        this.f5819f = i3;
        this.f5820g = i4;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.f5816c);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) mu1.e().a(aw1.L1));
        bundle2.putInt("target_api", this.f5818e);
        bundle2.putInt("dv", this.f5819f);
        bundle2.putInt("lv", this.f5820g);
        Bundle a2 = dt0.a(bundle2, "sdk_env");
        a2.putBoolean("mf", ((Boolean) mu1.e().a(aw1.N1)).booleanValue());
        a2.putBoolean("instant_app", this.f5814a);
        a2.putBoolean("lite", this.f5815b);
        a2.putBoolean("is_privileged_process", this.f5817d);
        bundle2.putBundle("sdk_env", a2);
        Bundle a3 = dt0.a(a2, "build_meta");
        a3.putString("cl", "257050558");
        a3.putString("rapid_rc", Env.NAME_DEV);
        a3.putString("rapid_rollup", "HEAD");
        a2.putBundle("build_meta", a3);
    }
}
