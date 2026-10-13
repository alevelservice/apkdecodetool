package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@SafeParcelable.Class(creator = "ConnectionResultCreator")
/* loaded from: classes.dex */
public final class ConnectionResult extends AbstractSafeParcelable {

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4972e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getErrorCode", id = 2)
    private final int f4973f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getResolution", id = 3)
    private final PendingIntent f4974g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getErrorMessage", id = 4)
    private final String f4975h;

    /* renamed from: i, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    public static final ConnectionResult f4971i = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new p();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ConnectionResult(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) PendingIntent pendingIntent, @SafeParcelable.Param(id = 4) String str) {
        this.f4972e = i2;
        this.f4973f = i3;
        this.f4974g = pendingIntent;
        this.f4975h = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f4973f == connectionResult.f4973f && com.google.android.gms.common.internal.k.a(this.f4974g, connectionResult.f4974g) && com.google.android.gms.common.internal.k.a(this.f4975h, connectionResult.f4975h);
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.k.a(Integer.valueOf(this.f4973f), this.f4974g, this.f4975h);
    }

    public final int j() {
        return this.f4973f;
    }

    @Nullable
    public final String k() {
        return this.f4975h;
    }

    @Nullable
    public final PendingIntent l() {
        return this.f4974g;
    }

    public final boolean m() {
        return (this.f4973f == 0 || this.f4974g == null) ? false : true;
    }

    public final boolean o() {
        return this.f4973f == 0;
    }

    public final String toString() {
        k.a a2 = com.google.android.gms.common.internal.k.a(this);
        a2.a("statusCode", m(this.f4973f));
        a2.a("resolution", this.f4974g);
        a2.a("message", this.f4975h);
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4972e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, j());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) l(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, k(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String m(int i2) {
        if (i2 == 99) {
            return "UNFINISHED";
        }
        if (i2 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i2) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i2) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    default:
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("UNKNOWN_ERROR_CODE(");
                        sb.append(i2);
                        sb.append(")");
                        return sb.toString();
                }
        }
    }

    public ConnectionResult(int i2) {
        this(i2, null, null);
    }

    public ConnectionResult(int i2, @Nullable PendingIntent pendingIntent) {
        this(i2, pendingIntent, null);
    }

    public ConnectionResult(int i2, @Nullable PendingIntent pendingIntent, String str) {
        this(1, i2, pendingIntent, str);
    }
}
