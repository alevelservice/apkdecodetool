package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "FieldMappingDictionaryCreator")
/* loaded from: classes.dex */
public final class zaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaj> CREATOR = new d();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5391e;

    /* renamed from: f, reason: collision with root package name */
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> f5392f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getRootClassName", id = 3)
    private final String f5393g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zaj(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) ArrayList<zam> arrayList, @SafeParcelable.Param(id = 3) String str) {
        this.f5391e = i2;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            zam zamVar = arrayList.get(i3);
            String str2 = zamVar.f5398f;
            HashMap hashMap2 = new HashMap();
            int size2 = zamVar.f5399g.size();
            for (int i4 = 0; i4 < size2; i4++) {
                zal zalVar = zamVar.f5399g.get(i4);
                hashMap2.put(zalVar.f5395f, zalVar.f5396g);
            }
            hashMap.put(str2, hashMap2);
        }
        this.f5392f = hashMap;
        m.a(str);
        this.f5393g = str;
        j();
    }

    public final Map<String, FastJsonResponse.Field<?, ?>> b(String str) {
        return this.f5392f.get(str);
    }

    public final void j() {
        Iterator<String> it = this.f5392f.keySet().iterator();
        while (it.hasNext()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f5392f.get(it.next());
            Iterator<String> it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                map.get(it2.next()).a(this);
            }
        }
    }

    public final String k() {
        return this.f5393g;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f5392f.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f5392f.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5391e);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f5392f.keySet()) {
            arrayList.add(new zam(str, this.f5392f.get(str)));
        }
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 2, arrayList, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5393g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
