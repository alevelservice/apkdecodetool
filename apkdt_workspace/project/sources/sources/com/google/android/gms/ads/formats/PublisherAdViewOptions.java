package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzacj;
import com.google.android.gms.internal.ads.zzack;
import com.google.android.gms.internal.ads.zzvl;
import com.google.android.gms.internal.ads.zzvm;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "PublisherAdViewOptionsCreator")
/* loaded from: classes.dex */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new j();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getManualImpressionsEnabled", id = 1)
    private final boolean f4506e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getAppEventListenerBinder", id = 2, type = "android.os.IBinder")
    private final zzvm f4507f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getDelayedBannerAdListenerBinder", id = 3)
    private final IBinder f4508g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public PublisherAdViewOptions(@SafeParcelable.Param(id = 1) boolean z, @Nullable @SafeParcelable.Param(id = 2) IBinder iBinder, @Nullable @SafeParcelable.Param(id = 3) IBinder iBinder2) {
        this.f4506e = z;
        this.f4507f = iBinder != null ? zzvl.zze(iBinder) : null;
        this.f4508g = iBinder2;
    }

    public final boolean j() {
        return this.f4506e;
    }

    @Nullable
    public final zzvm k() {
        return this.f4507f;
    }

    @Nullable
    public final zzack l() {
        return zzacj.zzv(this.f4508g);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, j());
        zzvm zzvmVar = this.f4507f;
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, zzvmVar == null ? null : zzvmVar.asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4508g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
