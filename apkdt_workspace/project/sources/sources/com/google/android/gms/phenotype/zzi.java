package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

@SafeParcelable.Class(creator = "FlagCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzi extends AbstractSafeParcelable implements Comparable<zzi> {
    public static final Parcelable.Creator<zzi> CREATOR = new i();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final String f13422e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final long f13423f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private final boolean f13424g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private final double f13425h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    private final String f13426i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    private final byte[] f13427j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    private final int f13428k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    public final int f13429l;

    static {
        new h();
    }

    @SafeParcelable.Constructor
    public zzi(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) double d2, @SafeParcelable.Param(id = 6) String str2, @SafeParcelable.Param(id = 7) byte[] bArr, @SafeParcelable.Param(id = 8) int i2, @SafeParcelable.Param(id = 9) int i3) {
        this.f13422e = str;
        this.f13423f = j2;
        this.f13424g = z;
        this.f13425h = d2;
        this.f13426i = str2;
        this.f13427j = bArr;
        this.f13428k = i2;
        this.f13429l = i3;
    }

    private static int a(int i2, int i3) {
        if (i2 < i3) {
            return -1;
        }
        return i2 == i3 ? 0 : 1;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzi zziVar) {
        zzi zziVar2 = zziVar;
        int compareTo = this.f13422e.compareTo(zziVar2.f13422e);
        if (compareTo != 0) {
            return compareTo;
        }
        int a2 = a(this.f13428k, zziVar2.f13428k);
        if (a2 != 0) {
            return a2;
        }
        int i2 = this.f13428k;
        if (i2 == 1) {
            long j2 = this.f13423f;
            long j3 = zziVar2.f13423f;
            if (j2 < j3) {
                return -1;
            }
            return j2 == j3 ? 0 : 1;
        }
        if (i2 == 2) {
            boolean z = this.f13424g;
            if (z == zziVar2.f13424g) {
                return 0;
            }
            return z ? 1 : -1;
        }
        if (i2 == 3) {
            return Double.compare(this.f13425h, zziVar2.f13425h);
        }
        if (i2 == 4) {
            String str = this.f13426i;
            String str2 = zziVar2.f13426i;
            if (str == str2) {
                return 0;
            }
            if (str == null) {
                return -1;
            }
            if (str2 == null) {
                return 1;
            }
            return str.compareTo(str2);
        }
        if (i2 != 5) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Invalid enum value: ");
            sb.append(i2);
            throw new AssertionError(sb.toString());
        }
        byte[] bArr = this.f13427j;
        byte[] bArr2 = zziVar2.f13427j;
        if (bArr == bArr2) {
            return 0;
        }
        if (bArr == null) {
            return -1;
        }
        if (bArr2 == null) {
            return 1;
        }
        for (int i3 = 0; i3 < Math.min(this.f13427j.length, zziVar2.f13427j.length); i3++) {
            int i4 = this.f13427j[i3] - zziVar2.f13427j[i3];
            if (i4 != 0) {
                return i4;
            }
        }
        return a(this.f13427j.length, zziVar2.f13427j.length);
    }

    public final boolean equals(Object obj) {
        int i2;
        if (obj instanceof zzi) {
            zzi zziVar = (zzi) obj;
            if (k.a(this.f13422e, zziVar.f13422e) && (i2 = this.f13428k) == zziVar.f13428k && this.f13429l == zziVar.f13429l) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        return this.f13424g == zziVar.f13424g;
                    }
                    if (i2 == 3) {
                        return this.f13425h == zziVar.f13425h;
                    }
                    if (i2 == 4) {
                        return k.a(this.f13426i, zziVar.f13426i);
                    }
                    if (i2 == 5) {
                        return Arrays.equals(this.f13427j, zziVar.f13427j);
                    }
                    StringBuilder sb = new StringBuilder(31);
                    sb.append("Invalid enum value: ");
                    sb.append(i2);
                    throw new AssertionError(sb.toString());
                }
                if (this.f13423f == zziVar.f13423f) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Flag(");
        sb.append(this.f13422e);
        sb.append(", ");
        int i2 = this.f13428k;
        if (i2 == 1) {
            sb.append(this.f13423f);
        } else if (i2 == 2) {
            sb.append(this.f13424g);
        } else if (i2 != 3) {
            if (i2 == 4) {
                sb.append("'");
                str = this.f13426i;
            } else {
                if (i2 != 5) {
                    String str2 = this.f13422e;
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 27);
                    sb2.append("Invalid type: ");
                    sb2.append(str2);
                    sb2.append(", ");
                    sb2.append(i2);
                    throw new AssertionError(sb2.toString());
                }
                if (this.f13427j == null) {
                    sb.append("null");
                } else {
                    sb.append("'");
                    str = Base64.encodeToString(this.f13427j, 3);
                }
            }
            sb.append(str);
            sb.append("'");
        } else {
            sb.append(this.f13425h);
        }
        sb.append(", ");
        sb.append(this.f13428k);
        sb.append(", ");
        sb.append(this.f13429l);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13422e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13423f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13424g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13425h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f13426i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f13427j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f13428k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f13429l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
