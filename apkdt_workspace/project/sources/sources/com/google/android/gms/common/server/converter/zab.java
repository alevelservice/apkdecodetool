package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "ConverterWrapperCreator")
/* loaded from: classes.dex */
public final class zab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zab> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5374e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getStringToIntConverter", id = 2)
    private final StringToIntConverter f5375f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zab(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) StringToIntConverter stringToIntConverter) {
        this.f5374e = i2;
        this.f5375f = stringToIntConverter;
    }

    public static zab a(FastJsonResponse.a<?, ?> aVar) {
        if (aVar instanceof StringToIntConverter) {
            return new zab((StringToIntConverter) aVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    public final FastJsonResponse.a<?, ?> j() {
        StringToIntConverter stringToIntConverter = this.f5375f;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5374e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f5375f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    private zab(StringToIntConverter stringToIntConverter) {
        this.f5374e = 1;
        this.f5375f = stringToIntConverter;
    }
}
