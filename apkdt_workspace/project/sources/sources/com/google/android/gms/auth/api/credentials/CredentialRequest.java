package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@SafeParcelable.Class(creator = "CredentialRequestCreator")
/* loaded from: classes.dex */
public final class CredentialRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new i();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1000)
    private final int f4757e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isPasswordLoginSupported", id = 1)
    private final boolean f4758f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAccountTypes", id = 2)
    private final String[] f4759g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getCredentialPickerConfig", id = 3)
    private final CredentialPickerConfig f4760h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getCredentialHintPickerConfig", id = 4)
    private final CredentialPickerConfig f4761i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isIdTokenRequested", id = 5)
    private final boolean f4762j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getServerClientId", id = 6)
    private final String f4763k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getIdTokenNonce", id = 7)
    private final String f4764l;

    @SafeParcelable.Field(getter = "getRequireUserMediation", id = 8)
    private final boolean m;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public CredentialRequest(@SafeParcelable.Param(id = 1000) int i2, @SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) String[] strArr, @Nullable @SafeParcelable.Param(id = 3) CredentialPickerConfig credentialPickerConfig, @Nullable @SafeParcelable.Param(id = 4) CredentialPickerConfig credentialPickerConfig2, @SafeParcelable.Param(id = 5) boolean z2, @Nullable @SafeParcelable.Param(id = 6) String str, @Nullable @SafeParcelable.Param(id = 7) String str2, @SafeParcelable.Param(id = 8) boolean z3) {
        this.f4757e = i2;
        this.f4758f = z;
        com.google.android.gms.common.internal.m.a(strArr);
        this.f4759g = strArr;
        this.f4760h = credentialPickerConfig == null ? new CredentialPickerConfig.a().a() : credentialPickerConfig;
        this.f4761i = credentialPickerConfig2 == null ? new CredentialPickerConfig.a().a() : credentialPickerConfig2;
        if (i2 < 3) {
            this.f4762j = true;
            this.f4763k = null;
            this.f4764l = null;
        } else {
            this.f4762j = z2;
            this.f4763k = str;
            this.f4764l = str2;
        }
        this.m = z3;
    }

    @NonNull
    public final String[] j() {
        return this.f4759g;
    }

    @NonNull
    public final CredentialPickerConfig k() {
        return this.f4761i;
    }

    @NonNull
    public final CredentialPickerConfig l() {
        return this.f4760h;
    }

    @Nullable
    public final String m() {
        return this.f4764l;
    }

    @Nullable
    public final String o() {
        return this.f4763k;
    }

    public final boolean p() {
        return this.f4762j;
    }

    public final boolean q() {
        return this.f4758f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, q());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) l(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) k(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, p());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, o(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, m(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.m);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.f4757e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
