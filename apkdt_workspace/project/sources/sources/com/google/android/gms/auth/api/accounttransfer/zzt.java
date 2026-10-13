package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@SafeParcelable.Class(creator = "AuthenticatorTransferInfoCreator")
/* loaded from: classes.dex */
public class zzt extends zzaz {
    public static final Parcelable.Creator<zzt> CREATOR = new h();

    /* renamed from: l, reason: collision with root package name */
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> f4734l;

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Indicator
    private final Set<Integer> f4735e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4736f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAccountType", id = 2)
    private String f4737g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getStatus", id = 3)
    private int f4738h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getTransferBytes", id = 4)
    private byte[] f4739i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getPendingIntent", id = 5)
    private PendingIntent f4740j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getDeviceMetaData", id = 6)
    private DeviceMetaData f4741k;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f4734l = hashMap;
        hashMap.put("accountType", FastJsonResponse.Field.c("accountType", 2));
        f4734l.put(H5PluginHandler.ZIM_IDENTIFY_STATUS, FastJsonResponse.Field.b(H5PluginHandler.ZIM_IDENTIFY_STATUS, 3));
        f4734l.put("transferBytes", FastJsonResponse.Field.a("transferBytes", 4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzt(@SafeParcelable.Indicator Set<Integer> set, @SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) byte[] bArr, @SafeParcelable.Param(id = 5) PendingIntent pendingIntent, @SafeParcelable.Param(id = 6) DeviceMetaData deviceMetaData) {
        this.f4735e = set;
        this.f4736f = i2;
        this.f4737g = str;
        this.f4738h = i3;
        this.f4739i = bArr;
        this.f4740j = pendingIntent;
        this.f4741k = deviceMetaData;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Object a(FastJsonResponse.Field field) {
        int j2 = field.j();
        if (j2 == 1) {
            return Integer.valueOf(this.f4736f);
        }
        if (j2 == 2) {
            return this.f4737g;
        }
        if (j2 == 3) {
            return Integer.valueOf(this.f4738h);
        }
        if (j2 == 4) {
            return this.f4739i;
        }
        int j3 = field.j();
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unknown SafeParcelable id=");
        sb.append(j3);
        throw new IllegalStateException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public boolean b(FastJsonResponse.Field field) {
        return this.f4735e.contains(Integer.valueOf(field.j()));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        Set<Integer> set = this.f4735e;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4736f);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4737g, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4738h);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4739i, true);
        }
        if (set.contains(5)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable) this.f4740j, i2, true);
        }
        if (set.contains(6)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable) this.f4741k, i2, true);
        }
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public /* synthetic */ Map a() {
        return f4734l;
    }

    public zzt() {
        this.f4735e = new a.e.b(3);
        this.f4736f = 1;
    }
}
