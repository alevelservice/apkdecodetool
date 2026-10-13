package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zj0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f10771a;

    /* renamed from: b, reason: collision with root package name */
    private final zztw f10772b;

    /* renamed from: c, reason: collision with root package name */
    private final List<Parcelable> f10773c;

    public zj0(Context context, zztw zztwVar, List<Parcelable> list) {
        this.f10771a = context;
        this.f10772b = zztwVar;
        this.f10773c = list;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        com.google.android.gms.ads.internal.n.c();
        bundle2.putString("activity", wa.f(this.f10771a));
        Bundle bundle3 = new Bundle();
        bundle3.putInt("width", this.f10772b.f11250i);
        bundle3.putInt("height", this.f10772b.f11247f);
        bundle2.putBundle("size", bundle3);
        if (this.f10773c.size() > 0) {
            List<Parcelable> list = this.f10773c;
            bundle2.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
        }
    }
}
