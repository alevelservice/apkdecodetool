package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SafeParcelable.Class(creator = "HttpRequestParcelCreator")
/* loaded from: classes.dex */
public final class zzaej extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaej> CREATOR = new c1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    private final String f10899e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final String[] f10900f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final String[] f10901g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzaej(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String[] strArr, @SafeParcelable.Param(id = 3) String[] strArr2) {
        this.f10899e = str;
        this.f10900f = strArr;
        this.f10901g = strArr2;
    }

    public static zzaej a(uq1<?> uq1Var) {
        Map<String, String> a2 = uq1Var.a();
        int size = a2.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i2 = 0;
        for (Map.Entry<String, String> entry : a2.entrySet()) {
            strArr[i2] = entry.getKey();
            strArr2[i2] = entry.getValue();
            i2++;
        }
        return new zzaej(uq1Var.c(), strArr, strArr2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10899e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10900f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f10901g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
