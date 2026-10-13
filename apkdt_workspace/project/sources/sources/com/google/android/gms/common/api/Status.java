package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
@SafeParcelable.Class(creator = "StatusCreator")
/* loaded from: classes.dex */
public final class Status extends AbstractSafeParcelable implements m, ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR;

    /* renamed from: i, reason: collision with root package name */
    @ShowFirstParty
    @VisibleForTesting
    @KeepForSdk
    public static final Status f4988i = new Status(0);

    /* renamed from: j, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    public static final Status f4989j = new Status(14);

    /* renamed from: k, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    public static final Status f4990k = new Status(8);

    /* renamed from: l, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    public static final Status f4991l = new Status(15);

    @KeepForSdk
    public static final Status m = new Status(16);

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1000)
    private final int f4992e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getStatusCode", id = 1)
    private final int f4993f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getStatusMessage", id = 2)
    private final String f4994g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getPendingIntent", id = 3)
    private final PendingIntent f4995h;

    static {
        new Status(17);
        new Status(18);
        CREATOR = new s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    @KeepForSdk
    public Status(@SafeParcelable.Param(id = 1000) int i2, @SafeParcelable.Param(id = 1) int i3, @Nullable @SafeParcelable.Param(id = 2) String str, @Nullable @SafeParcelable.Param(id = 3) PendingIntent pendingIntent) {
        this.f4992e = i2;
        this.f4993f = i3;
        this.f4994g = str;
        this.f4995h = pendingIntent;
    }

    public final void a(Activity activity, int i2) {
        if (m()) {
            activity.startIntentSenderForResult(this.f4995h.getIntentSender(), i2, null, 0, 0, 0);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f4992e == status.f4992e && this.f4993f == status.f4993f && com.google.android.gms.common.internal.k.a(this.f4994g, status.f4994g) && com.google.android.gms.common.internal.k.a(this.f4995h, status.f4995h);
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.k.a(Integer.valueOf(this.f4992e), Integer.valueOf(this.f4993f), this.f4994g, this.f4995h);
    }

    @Override // com.google.android.gms.common.api.m
    @KeepForSdk
    public final Status i() {
        return this;
    }

    public final PendingIntent j() {
        return this.f4995h;
    }

    public final int k() {
        return this.f4993f;
    }

    @Nullable
    public final String l() {
        return this.f4994g;
    }

    @VisibleForTesting
    public final boolean m() {
        return this.f4995h != null;
    }

    public final boolean o() {
        return this.f4993f <= 0;
    }

    public final String p() {
        String str = this.f4994g;
        return str != null ? str : d.a(this.f4993f);
    }

    public final String toString() {
        k.a a2 = com.google.android.gms.common.internal.k.a(this);
        a2.a("statusCode", p());
        a2.a("resolution", this.f4995h);
        return a2.toString();
    }

    @Override // android.os.Parcelable
    @KeepForSdk
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, k());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, l(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.f4995h, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.f4992e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @KeepForSdk
    public Status(int i2) {
        this(i2, null);
    }

    @KeepForSdk
    public Status(int i2, @Nullable String str) {
        this(1, i2, str, null);
    }

    @KeepForSdk
    public Status(int i2, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        this(1, i2, str, pendingIntent);
    }
}
