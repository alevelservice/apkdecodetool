package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
@SafeParcelable.Class(creator = "GassRequestParcelCreator")
/* loaded from: classes.dex */
public final class zzcyy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcyy> CREATOR = new cw0();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f11180e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final String f11181f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final String f11182g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzcyy(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2) {
        this.f11180e = i2;
        this.f11181f = str;
        this.f11182g = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f11180e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11181f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f11182g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public zzcyy(String str, String str2) {
        this(1, str, str2);
    }
}
