package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SafeParcelable.Class(creator = "CacheOfferingCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzrl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzrl> CREATOR = new yr1();

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(id = 2)
    public final String f11225e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final long f11226f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private final String f11227g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private final String f11228h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    private final String f11229i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    private final Bundle f11230j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final boolean f11231k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    public long f11232l;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzrl(@Nullable @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) String str3, @SafeParcelable.Param(id = 6) String str4, @SafeParcelable.Param(id = 7) Bundle bundle, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) long j3) {
        this.f11225e = str;
        this.f11226f = j2;
        this.f11227g = str2 == null ? "" : str2;
        this.f11228h = str3 == null ? "" : str3;
        this.f11229i = str4 != null ? str4 : "";
        this.f11230j = bundle == null ? new Bundle() : bundle;
        this.f11231k = z;
        this.f11232l = j3;
    }

    @Nullable
    public static zzrl a(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                int size = pathSegments.size();
                StringBuilder sb = new StringBuilder(62);
                sb.append("Expected 2 path parts for namespace and id, found :");
                sb.append(size);
                qd.d(sb.toString());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter(HummerConstants.URL);
            boolean equals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long parseLong = queryParameter2 == null ? 0L : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            com.google.android.gms.ads.internal.n.e();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzrl(queryParameter, parseLong, host, str, str2, bundle, equals, 0L);
        } catch (NullPointerException | NumberFormatException e2) {
            qd.c("Unable to parse Uri into cache offering.", e2);
            return null;
        }
    }

    @Nullable
    public static zzrl b(String str) {
        return a(Uri.parse(str));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11225e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f11226f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f11227g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f11228h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f11229i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f11230j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f11231k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f11232l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
