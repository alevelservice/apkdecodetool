package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@SafeParcelable.Class(creator = "AccountTransferMsgCreator")
/* loaded from: classes.dex */
public final class zzl extends zzaz {
    public static final Parcelable.Creator<zzl> CREATOR = new e();

    /* renamed from: j, reason: collision with root package name */
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> f4714j;

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Indicator
    private final Set<Integer> f4715e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4716f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAuthenticatorDatas", id = 2)
    private ArrayList<zzr> f4717g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getRequestType", id = 3)
    private int f4718h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getProgress", id = 4)
    private zzo f4719i;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f4714j = hashMap;
        hashMap.put("authenticatorData", FastJsonResponse.Field.b("authenticatorData", 2, zzr.class));
        f4714j.put("progress", FastJsonResponse.Field.a("progress", 4, zzo.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzl(@SafeParcelable.Indicator Set<Integer> set, @SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) ArrayList<zzr> arrayList, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) zzo zzoVar) {
        this.f4715e = set;
        this.f4716f = i2;
        this.f4717g = arrayList;
        this.f4718h = i3;
        this.f4719i = zzoVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object a(FastJsonResponse.Field field) {
        int j2 = field.j();
        if (j2 == 1) {
            return Integer.valueOf(this.f4716f);
        }
        if (j2 == 2) {
            return this.f4717g;
        }
        if (j2 == 4) {
            return this.f4719i;
        }
        int j3 = field.j();
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unknown SafeParcelable id=");
        sb.append(j3);
        throw new IllegalStateException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean b(FastJsonResponse.Field field) {
        return this.f4715e.contains(Integer.valueOf(field.j()));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        Set<Integer> set = this.f4715e;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4716f);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.b.c(parcel, 2, this.f4717g, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4718h);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) this.f4719i, i2, true);
        }
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public zzl() {
        this.f4715e = new HashSet(1);
        this.f4716f = 1;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map a() {
        return f4714j;
    }
}
