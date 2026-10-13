package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
@SafeParcelable.Class(creator = "ScopeCreator")
/* loaded from: classes.dex */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new r();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4986e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getScopeUri", id = 2)
    private final String f4987f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public Scope(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str) {
        com.google.android.gms.common.internal.m.a(str, (Object) "scopeUri must not be null or empty");
        this.f4986e = i2;
        this.f4987f = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.f4987f.equals(((Scope) obj).f4987f);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4987f.hashCode();
    }

    @KeepForSdk
    public final String j() {
        return this.f4987f;
    }

    public final String toString() {
        return this.f4987f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4986e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public Scope(String str) {
        this(1, str);
    }
}
