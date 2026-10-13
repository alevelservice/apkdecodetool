package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.InputStream;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SafeParcelable.Class(creator = "CacheEntryParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzrg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzrg> CREATOR = new xr1();

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    @SafeParcelable.Field(getter = "getContentFileDescriptor", id = 2)
    private ParcelFileDescriptor f11224e;

    public zzrg() {
        this(null);
    }

    private final synchronized ParcelFileDescriptor l() {
        return this.f11224e;
    }

    public final synchronized boolean j() {
        return this.f11224e != null;
    }

    @Nullable
    public final synchronized InputStream k() {
        if (this.f11224e == null) {
            return null;
        }
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.f11224e);
        this.f11224e = null;
        return autoCloseInputStream;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) l(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @SafeParcelable.Constructor
    public zzrg(@Nullable @SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor) {
        this.f11224e = parcelFileDescriptor;
    }
}
