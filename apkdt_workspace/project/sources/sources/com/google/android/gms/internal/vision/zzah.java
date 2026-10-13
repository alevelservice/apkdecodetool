package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
@SafeParcelable.Class(creator = "TextRecognizerOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzah> CREATOR = new d();

    @SafeParcelable.Constructor
    public zzah() {
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, com.google.android.gms.common.internal.safeparcel.b.a(parcel));
    }
}
