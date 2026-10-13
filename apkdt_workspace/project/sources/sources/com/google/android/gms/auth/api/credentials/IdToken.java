package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@SafeParcelable.Class(creator = "IdTokenCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class IdToken extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<IdToken> CREATOR = new m();

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    @SafeParcelable.Field(getter = "getAccountType", id = 1)
    private final String f4780e;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    @SafeParcelable.Field(getter = "getIdToken", id = 2)
    private final String f4781f;

    @SafeParcelable.Constructor
    public IdToken(@NonNull @SafeParcelable.Param(id = 1) String str, @NonNull @SafeParcelable.Param(id = 2) String str2) {
        com.google.android.gms.common.internal.m.a(!TextUtils.isEmpty(str), "account type string cannot be null or empty");
        com.google.android.gms.common.internal.m.a(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.f4780e = str;
        this.f4781f = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IdToken)) {
            return false;
        }
        IdToken idToken = (IdToken) obj;
        return com.google.android.gms.common.internal.k.a(this.f4780e, idToken.f4780e) && com.google.android.gms.common.internal.k.a(this.f4781f, idToken.f4781f);
    }

    @NonNull
    public final String j() {
        return this.f4780e;
    }

    @NonNull
    public final String k() {
        return this.f4781f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, k(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
