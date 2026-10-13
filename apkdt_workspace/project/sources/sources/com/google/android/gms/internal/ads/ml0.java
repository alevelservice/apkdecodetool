package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ml0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final int f8178a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f8179b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f8180c;

    /* renamed from: d, reason: collision with root package name */
    private final int f8181d;

    /* renamed from: e, reason: collision with root package name */
    private final int f8182e;

    /* renamed from: f, reason: collision with root package name */
    private final int f8183f;

    /* renamed from: g, reason: collision with root package name */
    private final float f8184g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f8185h;

    public ml0(int i2, boolean z, boolean z2, int i3, int i4, int i5, float f2, boolean z3) {
        this.f8178a = i2;
        this.f8179b = z;
        this.f8180c = z2;
        this.f8181d = i3;
        this.f8182e = i4;
        this.f8183f = i5;
        this.f8184g = f2;
        this.f8185h = z3;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putInt("am", this.f8178a);
        bundle2.putBoolean("ma", this.f8179b);
        bundle2.putBoolean("sp", this.f8180c);
        bundle2.putInt("muv", this.f8181d);
        bundle2.putInt("rm", this.f8182e);
        bundle2.putInt("riv", this.f8183f);
        bundle2.putFloat("android_app_volume", this.f8184g);
        bundle2.putBoolean("android_app_muted", this.f8185h);
    }
}
