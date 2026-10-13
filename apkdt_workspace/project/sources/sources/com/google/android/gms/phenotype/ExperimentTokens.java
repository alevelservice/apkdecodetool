package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@KeepForSdk
@SafeParcelable.Class(creator = "ExperimentTokensCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class ExperimentTokens extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<ExperimentTokens> CREATOR = new g();
    private static final byte[][] m = new byte[0];

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final String f13412e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final byte[] f13413f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private final byte[][] f13414g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private final byte[][] f13415h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    private final byte[][] f13416i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    private final byte[][] f13417j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    private final int[] f13418k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    private final byte[][] f13419l;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface a {
    }

    static {
        byte[][] bArr = m;
        new ExperimentTokens("", null, bArr, bArr, bArr, bArr, null, null);
        new c();
        new d();
        new e();
        new f();
    }

    @SafeParcelable.Constructor
    public ExperimentTokens(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) byte[] bArr, @SafeParcelable.Param(id = 4) byte[][] bArr2, @SafeParcelable.Param(id = 5) byte[][] bArr3, @SafeParcelable.Param(id = 6) byte[][] bArr4, @SafeParcelable.Param(id = 7) byte[][] bArr5, @SafeParcelable.Param(id = 8) int[] iArr, @SafeParcelable.Param(id = 9) byte[][] bArr6) {
        this.f13412e = str;
        this.f13413f = bArr;
        this.f13414g = bArr2;
        this.f13415h = bArr3;
        this.f13416i = bArr4;
        this.f13417j = bArr5;
        this.f13418k = iArr;
        this.f13419l = bArr6;
    }

    private static List<Integer> a(int[] iArr) {
        if (iArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i2 : iArr) {
            arrayList.add(Integer.valueOf(i2));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static List<String> a(byte[][] bArr) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte[] bArr2 : bArr) {
            arrayList.add(Base64.encodeToString(bArr2, 3));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void a(StringBuilder sb, String str, byte[][] bArr) {
        String str2;
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            str2 = "null";
        } else {
            sb.append("(");
            int length = bArr.length;
            int i2 = 0;
            boolean z = true;
            while (i2 < length) {
                byte[] bArr2 = bArr[i2];
                if (!z) {
                    sb.append(", ");
                }
                sb.append("'");
                sb.append(Base64.encodeToString(bArr2, 3));
                sb.append("'");
                i2++;
                z = false;
            }
            str2 = ")";
        }
        sb.append(str2);
    }

    public boolean equals(Object obj) {
        if (obj instanceof ExperimentTokens) {
            ExperimentTokens experimentTokens = (ExperimentTokens) obj;
            if (k.a(this.f13412e, experimentTokens.f13412e) && Arrays.equals(this.f13413f, experimentTokens.f13413f) && k.a(a(this.f13414g), a(experimentTokens.f13414g)) && k.a(a(this.f13415h), a(experimentTokens.f13415h)) && k.a(a(this.f13416i), a(experimentTokens.f13416i)) && k.a(a(this.f13417j), a(experimentTokens.f13417j)) && k.a(a(this.f13418k), a(experimentTokens.f13418k)) && k.a(a(this.f13419l), a(experimentTokens.f13419l))) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        String sb;
        StringBuilder sb2 = new StringBuilder("ExperimentTokens");
        sb2.append("(");
        String str = this.f13412e;
        if (str == null) {
            sb = "null";
        } else {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 2);
            sb3.append("'");
            sb3.append(str);
            sb3.append("'");
            sb = sb3.toString();
        }
        sb2.append(sb);
        sb2.append(", ");
        byte[] bArr = this.f13413f;
        sb2.append("direct");
        sb2.append("=");
        if (bArr == null) {
            sb2.append("null");
        } else {
            sb2.append("'");
            sb2.append(Base64.encodeToString(bArr, 3));
            sb2.append("'");
        }
        sb2.append(", ");
        a(sb2, "GAIA", this.f13414g);
        sb2.append(", ");
        a(sb2, "PSEUDO", this.f13415h);
        sb2.append(", ");
        a(sb2, "ALWAYS", this.f13416i);
        sb2.append(", ");
        a(sb2, "OTHER", this.f13417j);
        sb2.append(", ");
        int[] iArr = this.f13418k;
        sb2.append("weak");
        sb2.append("=");
        if (iArr == null) {
            sb2.append("null");
        } else {
            sb2.append("(");
            int length = iArr.length;
            int i2 = 0;
            boolean z = true;
            while (i2 < length) {
                int i3 = iArr[i2];
                if (!z) {
                    sb2.append(", ");
                }
                sb2.append(i3);
                i2++;
                z = false;
            }
            sb2.append(")");
        }
        sb2.append(", ");
        a(sb2, "directs", this.f13419l);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13412e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13413f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13414g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13415h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f13416i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f13417j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f13418k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f13419l, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
