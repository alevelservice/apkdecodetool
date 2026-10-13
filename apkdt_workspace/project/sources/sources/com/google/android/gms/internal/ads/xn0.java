package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xn0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final String f10393a;

    /* renamed from: b, reason: collision with root package name */
    private final String f10394b;

    /* renamed from: c, reason: collision with root package name */
    private final String f10395c;

    /* renamed from: d, reason: collision with root package name */
    private final String f10396d;

    /* renamed from: e, reason: collision with root package name */
    private final Long f10397e;

    public xn0(String str, String str2, String str3, String str4, Long l2) {
        this.f10393a = str;
        this.f10394b = str2;
        this.f10395c = str3;
        this.f10396d = str4;
        this.f10397e = l2;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        dt0.a(bundle2, "gmp_app_id", this.f10393a);
        dt0.a(bundle2, "fbs_aiid", this.f10394b);
        dt0.a(bundle2, "fbs_aeid", this.f10395c);
        dt0.a(bundle2, "apm_id_origin", this.f10396d);
        Long l2 = this.f10397e;
        if (l2 != null) {
            bundle2.putLong("sai_timeout", l2.longValue());
        }
    }
}
