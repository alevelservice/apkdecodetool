package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.List;
import java.util.Map;

@SafeParcelable.Class(creator = "AccountTransferProgressCreator")
/* loaded from: classes.dex */
public class zzo extends zzaz {
    public static final Parcelable.Creator<zzo> CREATOR = new f();

    /* renamed from: k, reason: collision with root package name */
    private static final a.e.a<String, FastJsonResponse.Field<?, ?>> f4720k;

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4721e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getRegisteredAccountTypes", id = 2)
    private List<String> f4722f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getInProgressAccountTypes", id = 3)
    private List<String> f4723g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getSuccessAccountTypes", id = 4)
    private List<String> f4724h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getFailedAccountTypes", id = 5)
    private List<String> f4725i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getEscrowedAccountTypes", id = 6)
    private List<String> f4726j;

    static {
        a.e.a<String, FastJsonResponse.Field<?, ?>> aVar = new a.e.a<>();
        f4720k = aVar;
        aVar.put("registered", FastJsonResponse.Field.d("registered", 2));
        f4720k.put("in_progress", FastJsonResponse.Field.d("in_progress", 3));
        f4720k.put("success", FastJsonResponse.Field.d("success", 4));
        f4720k.put("failed", FastJsonResponse.Field.d("failed", 5));
        f4720k.put("escrowed", FastJsonResponse.Field.d("escrowed", 6));
    }

    public zzo() {
        this.f4721e = 1;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Map<String, FastJsonResponse.Field<?, ?>> a() {
        return f4720k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public boolean b(FastJsonResponse.Field field) {
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4721e);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 2, this.f4722f, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 3, this.f4723g, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 4, this.f4724h, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 5, this.f4725i, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 6, this.f4726j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Object a(FastJsonResponse.Field field) {
        switch (field.j()) {
            case 1:
                return Integer.valueOf(this.f4721e);
            case 2:
                return this.f4722f;
            case 3:
                return this.f4723g;
            case 4:
                return this.f4724h;
            case 5:
                return this.f4725i;
            case 6:
                return this.f4726j;
            default:
                int j2 = field.j();
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unknown SafeParcelable id=");
                sb.append(j2);
                throw new IllegalStateException(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzo(@SafeParcelable.Param(id = 1) int i2, @Nullable @SafeParcelable.Param(id = 2) List<String> list, @Nullable @SafeParcelable.Param(id = 3) List<String> list2, @Nullable @SafeParcelable.Param(id = 4) List<String> list3, @Nullable @SafeParcelable.Param(id = 5) List<String> list4, @Nullable @SafeParcelable.Param(id = 6) List<String> list5) {
        this.f4721e = i2;
        this.f4722f = list;
        this.f4723g = list2;
        this.f4724h = list3;
        this.f4725i = list4;
        this.f4726j = list5;
    }
}
