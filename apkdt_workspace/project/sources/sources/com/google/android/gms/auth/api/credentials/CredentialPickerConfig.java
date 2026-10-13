package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@SafeParcelable.Class(creator = "CredentialPickerConfigCreator")
/* loaded from: classes.dex */
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new h();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1000)
    private final int f4750e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "shouldShowAddAccountButton", id = 1)
    private final boolean f4751f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "shouldShowCancelButton", id = 2)
    private final boolean f4752g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getPromptInternalId", id = 4)
    private final int f4753h;

    /* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Prompt {
        public static final int CONTINUE = 1;
        public static final int SIGN_IN = 2;
        public static final int SIGN_UP = 3;
    }

    /* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private boolean f4754a = false;

        /* renamed from: b, reason: collision with root package name */
        private boolean f4755b = true;

        /* renamed from: c, reason: collision with root package name */
        private int f4756c = 1;

        public CredentialPickerConfig a() {
            return new CredentialPickerConfig(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public CredentialPickerConfig(@SafeParcelable.Param(id = 1000) int i2, @SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) boolean z2, @SafeParcelable.Param(id = 3) boolean z3, @SafeParcelable.Param(id = 4) int i3) {
        this.f4750e = i2;
        this.f4751f = z;
        this.f4752g = z2;
        if (i2 < 2) {
            this.f4753h = z3 ? 3 : 1;
        } else {
            this.f4753h = i3;
        }
    }

    @Deprecated
    public final boolean j() {
        return this.f4753h == 3;
    }

    public final boolean k() {
        return this.f4751f;
    }

    public final boolean l() {
        return this.f4752g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, k());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, l());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, j());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4753h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.f4750e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    private CredentialPickerConfig(a aVar) {
        this(2, aVar.f4754a, aVar.f4755b, false, aVar.f4756c);
    }
}
