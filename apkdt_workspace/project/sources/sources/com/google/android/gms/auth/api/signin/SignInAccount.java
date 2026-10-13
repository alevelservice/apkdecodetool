package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@SafeParcelable.Class(creator = "SignInAccountCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new j();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "", id = 4)
    @Deprecated
    private String f4840e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getGoogleSignInAccount", id = 7)
    private GoogleSignInAccount f4841f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "", id = 8)
    @Deprecated
    private String f4842g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public SignInAccount(@SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 7) GoogleSignInAccount googleSignInAccount, @SafeParcelable.Param(id = 8) String str2) {
        this.f4841f = googleSignInAccount;
        m.a(str, (Object) "8.3 and 8.4 SDKs require non-null email");
        this.f4840e = str;
        m.a(str2, (Object) "8.3 and 8.4 SDKs require non-null userId");
        this.f4842g = str2;
    }

    @Nullable
    public final GoogleSignInAccount j() {
        return this.f4841f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4840e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, (Parcelable) this.f4841f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f4842g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
