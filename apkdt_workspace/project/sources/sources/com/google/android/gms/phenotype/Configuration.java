package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

@KeepForSdk
@SafeParcelable.Class(creator = "ConfigurationCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class Configuration extends AbstractSafeParcelable implements Comparable<Configuration> {

    @KeepForSdk
    public static final Parcelable.Creator<Configuration> CREATOR = new b();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final int f13408e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final zzi[] f13409f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private final String[] f13410g;

    /* renamed from: h, reason: collision with root package name */
    private final Map<String, zzi> f13411h = new TreeMap();

    @SafeParcelable.Constructor
    public Configuration(@SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) zzi[] zziVarArr, @SafeParcelable.Param(id = 4) String[] strArr) {
        this.f13408e = i2;
        this.f13409f = zziVarArr;
        for (zzi zziVar : zziVarArr) {
            this.f13411h.put(zziVar.f13422e, zziVar);
        }
        this.f13410g = strArr;
        String[] strArr2 = this.f13410g;
        if (strArr2 != null) {
            Arrays.sort(strArr2);
        }
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Configuration configuration) {
        return this.f13408e - configuration.f13408e;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Configuration) {
            Configuration configuration = (Configuration) obj;
            if (this.f13408e == configuration.f13408e && k.a(this.f13411h, configuration.f13411h) && Arrays.equals(this.f13410g, configuration.f13410g)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.f13408e);
        sb.append(", ");
        sb.append("(");
        Iterator<zzi> it = this.f13411h.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(", ");
        }
        sb.append(")");
        sb.append(", ");
        sb.append("(");
        String[] strArr = this.f13410g;
        if (strArr != null) {
            for (String str : strArr) {
                sb.append(str);
                sb.append(", ");
            }
        } else {
            sb.append("null");
        }
        sb.append(")");
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13408e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable[]) this.f13409f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13410g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
