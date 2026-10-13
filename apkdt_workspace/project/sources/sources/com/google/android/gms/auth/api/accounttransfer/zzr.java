package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@SafeParcelable.Class(creator = "AuthenticatorAnnotatedDataCreator")
/* loaded from: classes.dex */
public class zzr extends zzaz {
    public static final Parcelable.Creator<zzr> CREATOR = new g();

    /* renamed from: k, reason: collision with root package name */
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> f4727k;

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Indicator
    private final Set<Integer> f4728e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4729f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getInfo", id = 2)
    private zzt f4730g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getSignature", id = 3)
    private String f4731h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getPackageName", id = 4)
    private String f4732i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getId", id = 5)
    private String f4733j;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
        f4727k = hashMap;
        hashMap.put("authenticatorInfo", FastJsonResponse.Field.a("authenticatorInfo", 2, zzt.class));
        f4727k.put("signature", FastJsonResponse.Field.c("signature", 3));
        f4727k.put("package", FastJsonResponse.Field.c("package", 4));
    }

    public zzr() {
        this.f4728e = new HashSet(3);
        this.f4729f = 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Object a(FastJsonResponse.Field field) {
        int j2 = field.j();
        if (j2 == 1) {
            return Integer.valueOf(this.f4729f);
        }
        if (j2 == 2) {
            return this.f4730g;
        }
        if (j2 == 3) {
            return this.f4731h;
        }
        if (j2 == 4) {
            return this.f4732i;
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
        return this.f4728e.contains(Integer.valueOf(field.j()));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        Set<Integer> set = this.f4728e;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4729f);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f4730g, i2, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4731h, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4732i, true);
        }
        if (set.contains(5)) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f4733j, true);
        }
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzr(@SafeParcelable.Indicator Set<Integer> set, @SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) zzt zztVar, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) String str3) {
        this.f4728e = set;
        this.f4729f = i2;
        this.f4730g = zztVar;
        this.f4731h = str;
        this.f4732i = str2;
        this.f4733j = str3;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public /* synthetic */ Map a() {
        return f4727k;
    }
}
