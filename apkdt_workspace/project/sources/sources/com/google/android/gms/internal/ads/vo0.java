package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vo0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final String f9961a;

    /* renamed from: b, reason: collision with root package name */
    private final int f9962b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9963c;

    /* renamed from: d, reason: collision with root package name */
    private final int f9964d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f9965e;

    /* renamed from: f, reason: collision with root package name */
    private final int f9966f;

    public vo0(String str, int i2, int i3, int i4, boolean z, int i5) {
        this.f9961a = str;
        this.f9962b = i2;
        this.f9963c = i3;
        this.f9964d = i4;
        this.f9965e = z;
        this.f9966f = i5;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        dt0.a(bundle2, "carrier", this.f9961a, !TextUtils.isEmpty(r0));
        dt0.a(bundle2, "cnt", Integer.valueOf(this.f9962b), this.f9962b != -2);
        bundle2.putInt("gnt", this.f9963c);
        bundle2.putInt("pt", this.f9964d);
        Bundle a2 = dt0.a(bundle2, "device");
        bundle2.putBundle("device", a2);
        Bundle a3 = dt0.a(a2, "network");
        a2.putBundle("network", a3);
        a3.putInt("active_network_state", this.f9966f);
        a3.putBoolean("active_network_metered", this.f9965e);
    }
}
