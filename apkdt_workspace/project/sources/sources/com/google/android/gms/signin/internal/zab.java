package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "AuthAccountResultCreator")
/* loaded from: classes.dex */
public final class zab extends AbstractSafeParcelable implements m {
    public static final Parcelable.Creator<zab> CREATOR = new b();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f13430e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getConnectionResultCode", id = 2)
    private int f13431f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getRawAuthResolutionIntent", id = 3)
    private Intent f13432g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zab(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @Nullable @SafeParcelable.Param(id = 3) Intent intent) {
        this.f13430e = i2;
        this.f13431f = i3;
        this.f13432g = intent;
    }

    @Override // com.google.android.gms.common.api.m
    public final Status i() {
        if (this.f13431f == 0) {
            return Status.f4988i;
        }
        return Status.m;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f13430e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13431f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.f13432g, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public zab() {
        this(0, null);
    }

    private zab(int i2, @Nullable Intent intent) {
        this(2, 0, null);
    }
}
