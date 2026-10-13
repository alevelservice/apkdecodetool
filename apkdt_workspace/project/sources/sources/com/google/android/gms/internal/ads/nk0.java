package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nk0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final zztw f8370a;

    /* renamed from: b, reason: collision with root package name */
    private final String f8371b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f8372c;

    /* renamed from: d, reason: collision with root package name */
    private final String f8373d;

    /* renamed from: e, reason: collision with root package name */
    private final float f8374e;

    /* renamed from: f, reason: collision with root package name */
    private final int f8375f;

    /* renamed from: g, reason: collision with root package name */
    private final int f8376g;

    /* renamed from: h, reason: collision with root package name */
    private final String f8377h;

    public nk0(zztw zztwVar, String str, boolean z, String str2, float f2, int i2, int i3, String str3) {
        com.google.android.gms.common.internal.m.a(zztwVar, "the adSize must not be null");
        this.f8370a = zztwVar;
        this.f8371b = str;
        this.f8372c = z;
        this.f8373d = str2;
        this.f8374e = f2;
        this.f8375f = i2;
        this.f8376g = i3;
        this.f8377h = str3;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        dt0.a(bundle2, "smart_w", "full", this.f8370a.f11250i == -1);
        dt0.a(bundle2, "smart_h", "auto", this.f8370a.f11247f == -2);
        dt0.a(bundle2, "ene", (Boolean) true, this.f8370a.n);
        dt0.a(bundle2, "rafmt", "102", this.f8370a.q);
        dt0.a(bundle2, "format", this.f8371b);
        dt0.a(bundle2, "fluid", "height", this.f8372c);
        dt0.a(bundle2, "sz", this.f8373d, !TextUtils.isEmpty(r0));
        bundle2.putFloat("u_sd", this.f8374e);
        bundle2.putInt("sw", this.f8375f);
        bundle2.putInt("sh", this.f8376g);
        String str = this.f8377h;
        dt0.a(bundle2, "sc", str, true ^ TextUtils.isEmpty(str));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        zztw[] zztwVarArr = this.f8370a.f11252k;
        if (zztwVarArr == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.f8370a.f11247f);
            bundle3.putInt("width", this.f8370a.f11250i);
            bundle3.putBoolean("is_fluid_height", this.f8370a.m);
            arrayList.add(bundle3);
        } else {
            for (zztw zztwVar : zztwVarArr) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", zztwVar.m);
                bundle4.putInt("height", zztwVar.f11247f);
                bundle4.putInt("width", zztwVar.f11250i);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
