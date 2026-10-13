package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@SafeParcelable.Class(creator = "BeginSignInRequestCreator")
/* loaded from: classes.dex */
public final class BeginSignInRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new c();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getPasswordRequestOptions", id = 1)
    private final PasswordRequestOptions f4783e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getGoogleIdTokenRequestOptions", id = 2)
    private final GoogleIdTokenRequestOptions f4784f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getSessionId", id = 3)
    private final String f4785g;

    /* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
    @SafeParcelable.Class(creator = "GoogleIdTokenRequestOptionsCreator")
    /* loaded from: classes.dex */
    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new d();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(getter = "isSupported", id = 1)
        private final boolean f4786e;

        /* renamed from: f, reason: collision with root package name */
        @Nullable
        @SafeParcelable.Field(getter = "getServerClientId", id = 2)
        private final String f4787f;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        @SafeParcelable.Field(getter = "getNonce", id = 3)
        private final String f4788g;

        /* renamed from: h, reason: collision with root package name */
        @SafeParcelable.Field(getter = "filterByAuthorizedAccounts", id = 4)
        private final boolean f4789h;

        /* JADX INFO: Access modifiers changed from: package-private */
        @SafeParcelable.Constructor
        public GoogleIdTokenRequestOptions(@SafeParcelable.Param(id = 1) boolean z, @Nullable @SafeParcelable.Param(id = 2) String str, @Nullable @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) boolean z2) {
            this.f4786e = z;
            if (z) {
                m.a(str, (Object) "serverClientId must be provided if Google ID tokens are requested");
            }
            this.f4787f = str;
            this.f4788g = str2;
            this.f4789h = z2;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof GoogleIdTokenRequestOptions)) {
                return false;
            }
            GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
            return this.f4786e == googleIdTokenRequestOptions.f4786e && k.a(this.f4787f, googleIdTokenRequestOptions.f4787f) && k.a(this.f4788g, googleIdTokenRequestOptions.f4788g) && this.f4789h == googleIdTokenRequestOptions.f4789h;
        }

        public final int hashCode() {
            return k.a(Boolean.valueOf(this.f4786e), this.f4787f, this.f4788g, Boolean.valueOf(this.f4789h));
        }

        public final boolean j() {
            return this.f4789h;
        }

        @Nullable
        public final String k() {
            return this.f4788g;
        }

        @Nullable
        public final String l() {
            return this.f4787f;
        }

        public final boolean m() {
            return this.f4786e;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, m());
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, l(), false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, k(), false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, j());
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }
    }

    /* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
    @SafeParcelable.Class(creator = "PasswordRequestOptionsCreator")
    /* loaded from: classes.dex */
    public static final class PasswordRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new f();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(getter = "isSupported", id = 1)
        private final boolean f4790e;

        /* JADX INFO: Access modifiers changed from: package-private */
        @SafeParcelable.Constructor
        public PasswordRequestOptions(@SafeParcelable.Param(id = 1) boolean z) {
            this.f4790e = z;
        }

        public final boolean equals(@Nullable Object obj) {
            return (obj instanceof PasswordRequestOptions) && this.f4790e == ((PasswordRequestOptions) obj).f4790e;
        }

        public final int hashCode() {
            return k.a(Boolean.valueOf(this.f4790e));
        }

        public final boolean j() {
            return this.f4790e;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, j());
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public BeginSignInRequest(@SafeParcelable.Param(id = 1) PasswordRequestOptions passwordRequestOptions, @SafeParcelable.Param(id = 2) GoogleIdTokenRequestOptions googleIdTokenRequestOptions, @Nullable @SafeParcelable.Param(id = 3) String str) {
        m.a(passwordRequestOptions);
        this.f4783e = passwordRequestOptions;
        m.a(googleIdTokenRequestOptions);
        this.f4784f = googleIdTokenRequestOptions;
        this.f4785g = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof BeginSignInRequest)) {
            return false;
        }
        BeginSignInRequest beginSignInRequest = (BeginSignInRequest) obj;
        return k.a(this.f4783e, beginSignInRequest.f4783e) && k.a(this.f4784f, beginSignInRequest.f4784f) && k.a(this.f4785g, beginSignInRequest.f4785g);
    }

    public final int hashCode() {
        return k.a(this.f4783e, this.f4784f, this.f4785g);
    }

    public final GoogleIdTokenRequestOptions j() {
        return this.f4784f;
    }

    public final PasswordRequestOptions k() {
        return this.f4783e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable) k(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) j(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4785g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
