package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@SafeParcelable.Class(creator = "SignInConfigurationCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new n();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getConsumerPkgName", id = 2)
    private final String f4856e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getGoogleConfig", id = 5)
    private GoogleSignInOptions f4857f;

    @SafeParcelable.Constructor
    public SignInConfiguration(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 5) GoogleSignInOptions googleSignInOptions) {
        com.google.android.gms.common.internal.m.b(str);
        this.f4856e = str;
        this.f4857f = googleSignInOptions;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SignInConfiguration)) {
            return false;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
        if (this.f4856e.equals(signInConfiguration.f4856e)) {
            GoogleSignInOptions googleSignInOptions = this.f4857f;
            if (googleSignInOptions == null) {
                if (signInConfiguration.f4857f == null) {
                    return true;
                }
            } else if (googleSignInOptions.equals(signInConfiguration.f4857f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        a aVar = new a();
        aVar.a(this.f4856e);
        aVar.a(this.f4857f);
        return aVar.a();
    }

    public final GoogleSignInOptions j() {
        return this.f4857f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4856e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable) this.f4857f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
