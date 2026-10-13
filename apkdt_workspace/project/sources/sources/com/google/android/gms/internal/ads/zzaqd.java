package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONArray;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "RewardItemParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzaqd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaqd> CREATOR = new f8();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final String f10979e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final int f10980f;

    public zzaqd(com.google.android.gms.ads.o.b bVar) {
        this(bVar.getType(), bVar.getAmount());
    }

    @Nullable
    public static zzaqd a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzaqd(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzaqd)) {
            zzaqd zzaqdVar = (zzaqd) obj;
            if (com.google.android.gms.common.internal.k.a(this.f10979e, zzaqdVar.f10979e) && com.google.android.gms.common.internal.k.a(Integer.valueOf(this.f10980f), Integer.valueOf(zzaqdVar.f10980f))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.k.a(this.f10979e, Integer.valueOf(this.f10980f));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10979e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f10980f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @SafeParcelable.Constructor
    public zzaqd(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2) {
        this.f10979e = str;
        this.f10980f = i2;
    }
}
