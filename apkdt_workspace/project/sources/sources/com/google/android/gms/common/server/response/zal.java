package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "FieldMapPairCreator")
/* loaded from: classes.dex */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new b();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5394e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    final String f5395f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    final FastJsonResponse.Field<?, ?> f5396g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zal(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) FastJsonResponse.Field<?, ?> field) {
        this.f5394e = i2;
        this.f5395f = str;
        this.f5396g = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5394e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5395f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.f5396g, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(String str, FastJsonResponse.Field<?, ?> field) {
        this.f5394e = 1;
        this.f5395f = str;
        this.f5396g = field;
    }
}
