package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "SignInButtonConfigCreator")
/* loaded from: classes.dex */
public class SignInButtonConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInButtonConfig> CREATOR = new c0();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5272e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getButtonSize", id = 2)
    private final int f5273f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getColorScheme", id = 3)
    private final int f5274g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getScopes", id = 4)
    @Deprecated
    private final Scope[] f5275h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public SignInButtonConfig(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) int i4, @SafeParcelable.Param(id = 4) Scope[] scopeArr) {
        this.f5272e = i2;
        this.f5273f = i3;
        this.f5274g = i4;
        this.f5275h = scopeArr;
    }

    public int j() {
        return this.f5273f;
    }

    public int k() {
        return this.f5274g;
    }

    @Deprecated
    public Scope[] l() {
        return this.f5275h;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5272e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, j());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, k());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable[]) l(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public SignInButtonConfig(int i2, int i3, Scope[] scopeArr) {
        this(1, i2, i3, null);
    }
}
