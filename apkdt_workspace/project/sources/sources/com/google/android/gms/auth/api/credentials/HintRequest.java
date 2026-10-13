package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@SafeParcelable.Class(creator = "HintRequestCreator")
/* loaded from: classes.dex */
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<HintRequest> CREATOR = new l();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1000)
    private final int f4765e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getHintPickerConfig", id = 1)
    private final CredentialPickerConfig f4766f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isEmailAddressIdentifierSupported", id = 2)
    private final boolean f4767g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isPhoneNumberIdentifierSupported", id = 3)
    private final boolean f4768h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAccountTypes", id = 4)
    private final String[] f4769i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isIdTokenRequested", id = 5)
    private final boolean f4770j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getServerClientId", id = 6)
    private final String f4771k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getIdTokenNonce", id = 7)
    private final String f4772l;

    /* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private boolean f4773a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f4774b;

        /* renamed from: c, reason: collision with root package name */
        private String[] f4775c;

        /* renamed from: d, reason: collision with root package name */
        private CredentialPickerConfig f4776d = new CredentialPickerConfig.a().a();

        /* renamed from: e, reason: collision with root package name */
        private boolean f4777e = false;

        /* renamed from: f, reason: collision with root package name */
        @Nullable
        private String f4778f;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        private String f4779g;

        public final a a(boolean z) {
            this.f4774b = z;
            return this;
        }

        public final HintRequest a() {
            if (this.f4775c == null) {
                this.f4775c = new String[0];
            }
            if (!this.f4773a && !this.f4774b && this.f4775c.length == 0) {
                throw new IllegalStateException("At least one authentication method must be specified");
            }
            return new HintRequest(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public HintRequest(@SafeParcelable.Param(id = 1000) int i2, @SafeParcelable.Param(id = 1) CredentialPickerConfig credentialPickerConfig, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) String[] strArr, @SafeParcelable.Param(id = 5) boolean z3, @Nullable @SafeParcelable.Param(id = 6) String str, @Nullable @SafeParcelable.Param(id = 7) String str2) {
        this.f4765e = i2;
        com.google.android.gms.common.internal.m.a(credentialPickerConfig);
        this.f4766f = credentialPickerConfig;
        this.f4767g = z;
        this.f4768h = z2;
        com.google.android.gms.common.internal.m.a(strArr);
        this.f4769i = strArr;
        if (this.f4765e < 2) {
            this.f4770j = true;
            this.f4771k = null;
            this.f4772l = null;
        } else {
            this.f4770j = z3;
            this.f4771k = str;
            this.f4772l = str2;
        }
    }

    @NonNull
    public final String[] j() {
        return this.f4769i;
    }

    @NonNull
    public final CredentialPickerConfig k() {
        return this.f4766f;
    }

    @Nullable
    public final String l() {
        return this.f4772l;
    }

    @Nullable
    public final String m() {
        return this.f4771k;
    }

    public final boolean o() {
        return this.f4767g;
    }

    public final boolean p() {
        return this.f4770j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable) k(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, o());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4768h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, p());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, m(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, l(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.f4765e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    private HintRequest(a aVar) {
        this(2, aVar.f4776d, aVar.f4773a, aVar.f4774b, aVar.f4775c, aVar.f4777e, aVar.f4778f, aVar.f4779g);
    }
}
