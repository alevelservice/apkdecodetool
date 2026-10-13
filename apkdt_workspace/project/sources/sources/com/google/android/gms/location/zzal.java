package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

@SafeParcelable.Class(creator = "RemoveGeofencingRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzal> CREATOR = new t();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getGeofenceIds", id = 1)
    private final List<String> f12716e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getPendingIntent", id = 2)
    private final PendingIntent f12717f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "", getter = "getTag", id = 3)
    private final String f12718g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzal(@Nullable @SafeParcelable.Param(id = 1) List<String> list, @Nullable @SafeParcelable.Param(id = 2) PendingIntent pendingIntent, @SafeParcelable.Param(id = 3) String str) {
        this.f12716e = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.f12717f = pendingIntent;
        this.f12718g = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1, this.f12716e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f12717f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f12718g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
