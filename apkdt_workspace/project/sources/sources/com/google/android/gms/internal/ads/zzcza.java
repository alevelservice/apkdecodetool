package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
@SafeParcelable.Class(creator = "GassResponseParcelCreator")
/* loaded from: classes.dex */
public final class zzcza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcza> CREATOR = new dw0();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f11183e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAfmaSignalsAsBytes", id = 2, type = "byte[]")
    private ev f11184f = null;

    /* renamed from: g, reason: collision with root package name */
    private byte[] f11185g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzcza(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) byte[] bArr) {
        this.f11183e = i2;
        this.f11185g = bArr;
        k();
    }

    private final void k() {
        if (this.f11184f != null || this.f11185g == null) {
            if (this.f11184f == null || this.f11185g != null) {
                if (this.f11184f != null && this.f11185g != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (this.f11184f == null && this.f11185g == null) {
                    throw new IllegalStateException("Invalid internal representation - empty");
                }
                throw new IllegalStateException("Impossible");
            }
        }
    }

    public final ev j() {
        if (!(this.f11184f != null)) {
            try {
                this.f11184f = ev.a(this.f11185g, q81.c());
                this.f11185g = null;
            } catch (o91 e2) {
                throw new IllegalStateException(e2);
            }
        }
        k();
        return this.f11184f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f11183e);
        byte[] bArr = this.f11185g;
        if (bArr == null) {
            bArr = this.f11184f.e();
        }
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, bArr, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
