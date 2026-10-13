package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SafeParcelable.Class(creator = "SafeBrowsingConfigParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzarn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzarn> CREATOR = new s8();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final String f10987e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final String f10988f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final boolean f10989g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final boolean f10990h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final List<String> f10991i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final boolean f10992j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final boolean f10993k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    public final List<String> f10994l;

    @SafeParcelable.Constructor
    public zzarn(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) List<String> list, @SafeParcelable.Param(id = 7) boolean z3, @SafeParcelable.Param(id = 8) boolean z4, @SafeParcelable.Param(id = 9) List<String> list2) {
        this.f10987e = str;
        this.f10988f = str2;
        this.f10989g = z;
        this.f10990h = z2;
        this.f10991i = list;
        this.f10992j = z3;
        this.f10993k = z4;
        this.f10994l = list2 == null ? new ArrayList<>() : list2;
    }

    @Nullable
    public static zzarn a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new zzarn(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), nc.a(jSONObject.optJSONArray("allowed_headers"), (List<String>) null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), nc.a(jSONObject.optJSONArray("webview_permissions"), (List<String>) null));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10987e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f10988f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f10989g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f10990h);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 6, this.f10991i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f10992j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f10993k);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 9, this.f10994l, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
