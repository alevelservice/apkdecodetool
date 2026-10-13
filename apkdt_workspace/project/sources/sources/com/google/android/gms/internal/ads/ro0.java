package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class ro0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f9186a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f9187b;

    /* renamed from: c, reason: collision with root package name */
    private final String f9188c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f9189d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f9190e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f9191f;

    /* renamed from: g, reason: collision with root package name */
    private final String f9192g;

    /* renamed from: h, reason: collision with root package name */
    private final ArrayList<String> f9193h;

    /* renamed from: i, reason: collision with root package name */
    private final String f9194i;

    /* renamed from: j, reason: collision with root package name */
    private final String f9195j;

    /* renamed from: k, reason: collision with root package name */
    private final String f9196k;

    /* renamed from: l, reason: collision with root package name */
    private final boolean f9197l;
    private final String m;
    private final long n;

    public ro0(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList<String> arrayList, @Nullable String str3, @Nullable String str4, String str5, boolean z6, String str6, long j2) {
        this.f9186a = z;
        this.f9187b = z2;
        this.f9188c = str;
        this.f9189d = z3;
        this.f9190e = z4;
        this.f9191f = z5;
        this.f9192g = str2;
        this.f9193h = arrayList;
        this.f9194i = str3;
        this.f9195j = str4;
        this.f9196k = str5;
        this.f9197l = z6;
        this.m = str6;
        this.n = j2;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.f9186a);
        bundle2.putBoolean("coh", this.f9187b);
        bundle2.putString("gl", this.f9188c);
        bundle2.putBoolean("simulator", this.f9189d);
        bundle2.putBoolean("is_latchsky", this.f9190e);
        bundle2.putBoolean("is_sidewinder", this.f9191f);
        bundle2.putString("hl", this.f9192g);
        if (!this.f9193h.isEmpty()) {
            bundle2.putStringArrayList("hl_list", this.f9193h);
        }
        bundle2.putString("mv", this.f9194i);
        bundle2.putString("submodel", this.m);
        Bundle a2 = dt0.a(bundle2, "device");
        bundle2.putBundle("device", a2);
        a2.putString("build", this.f9196k);
        if (((Boolean) mu1.e().a(aw1.K1)).booleanValue()) {
            a2.putLong("remaining_data_partition_space", this.n);
        }
        Bundle a3 = dt0.a(a2, "browser");
        a2.putBundle("browser", a3);
        a3.putBoolean("is_browser_custom_tabs_capable", this.f9197l);
        if (TextUtils.isEmpty(this.f9195j)) {
            return;
        }
        Bundle a4 = dt0.a(a2, "play_store");
        a2.putBundle("play_store", a4);
        a4.putString("package_version", this.f9195j);
    }
}
