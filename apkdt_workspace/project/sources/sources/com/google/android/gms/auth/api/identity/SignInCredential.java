package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@SafeParcelable.Class(creator = "SignInCredentialCreator")
/* loaded from: classes.dex */
public final class SignInCredential extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInCredential> CREATOR = new g();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getId", id = 1)
    private final String f4792e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getDisplayName", id = 2)
    private final String f4793f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getGivenName", id = 3)
    private final String f4794g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getFamilyName", id = 4)
    private final String f4795h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getProfilePictureUri", id = 5)
    private final Uri f4796i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getPassword", id = 6)
    private final String f4797j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getGoogleIdToken", id = 7)
    private final String f4798k;

    @SafeParcelable.Constructor
    public SignInCredential(@SafeParcelable.Param(id = 1) String str, @Nullable @SafeParcelable.Param(id = 2) String str2, @Nullable @SafeParcelable.Param(id = 3) String str3, @Nullable @SafeParcelable.Param(id = 4) String str4, @Nullable @SafeParcelable.Param(id = 5) Uri uri, @Nullable @SafeParcelable.Param(id = 6) String str5, @Nullable @SafeParcelable.Param(id = 7) String str6) {
        m.b(str);
        this.f4792e = str;
        this.f4793f = str2;
        this.f4794g = str3;
        this.f4795h = str4;
        this.f4796i = uri;
        this.f4797j = str5;
        this.f4798k = str6;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SignInCredential)) {
            return false;
        }
        SignInCredential signInCredential = (SignInCredential) obj;
        return k.a(this.f4792e, signInCredential.f4792e) && k.a(this.f4793f, signInCredential.f4793f) && k.a(this.f4794g, signInCredential.f4794g) && k.a(this.f4795h, signInCredential.f4795h) && k.a(this.f4796i, signInCredential.f4796i) && k.a(this.f4797j, signInCredential.f4797j) && k.a(this.f4798k, signInCredential.f4798k);
    }

    public final int hashCode() {
        return k.a(this.f4792e, this.f4793f, this.f4794g, this.f4795h, this.f4796i, this.f4797j, this.f4798k);
    }

    @Nullable
    public final String j() {
        return this.f4793f;
    }

    @Nullable
    public final String k() {
        return this.f4795h;
    }

    @Nullable
    public final String l() {
        return this.f4794g;
    }

    @Nullable
    public final String m() {
        return this.f4798k;
    }

    public final String o() {
        return this.f4792e;
    }

    @Nullable
    public final String p() {
        return this.f4797j;
    }

    @Nullable
    public final Uri q() {
        return this.f4796i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, o(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, l(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, k(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable) q(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, p(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, m(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
