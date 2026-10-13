package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
@SafeParcelable.Class(creator = "StringToIntConverterCreator")
/* loaded from: classes.dex */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.a<String, Integer> {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new c();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5368e;

    /* renamed from: f, reason: collision with root package name */
    private final HashMap<String, Integer> f5369f;

    /* renamed from: g, reason: collision with root package name */
    private final SparseArray<String> f5370g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public StringToIntConverter(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) ArrayList<zaa> arrayList) {
        this.f5368e = i2;
        this.f5369f = new HashMap<>();
        this.f5370g = new SparseArray<>();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            zaa zaaVar = arrayList.get(i3);
            i3++;
            zaa zaaVar2 = zaaVar;
            a(zaaVar2.f5372f, zaaVar2.f5373g);
        }
    }

    @KeepForSdk
    public final StringToIntConverter a(String str, int i2) {
        this.f5369f.put(str, Integer.valueOf(i2));
        this.f5370g.put(i2, str);
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5368e);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f5369f.keySet()) {
            arrayList.add(new zaa(str, this.f5369f.get(str).intValue()));
        }
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 2, arrayList, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.a
    public final /* synthetic */ String a(Integer num) {
        String str = this.f5370g.get(num.intValue());
        return (str == null && this.f5369f.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @SafeParcelable.Class(creator = "StringToIntConverterEntryCreator")
    /* loaded from: classes.dex */
    public static final class zaa extends AbstractSafeParcelable {
        public static final Parcelable.Creator<zaa> CREATOR = new b();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.VersionField(id = 1)
        private final int f5371e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        final String f5372f;

        /* renamed from: g, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        final int f5373g;

        /* JADX INFO: Access modifiers changed from: package-private */
        @SafeParcelable.Constructor
        public zaa(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i3) {
            this.f5371e = i2;
            this.f5372f = str;
            this.f5373g = i3;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5371e);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5372f, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5373g);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        zaa(String str, int i2) {
            this.f5371e = 1;
            this.f5372f = str;
            this.f5373g = i2;
        }
    }

    @KeepForSdk
    public StringToIntConverter() {
        this.f5368e = 1;
        this.f5369f = new HashMap<>();
        this.f5370g = new SparseArray<>();
    }
}
