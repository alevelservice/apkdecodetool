package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.clearcut.a;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.clearcut.j5;
import com.google.android.gms.internal.clearcut.zzr;
import com.google.android.gms.phenotype.ExperimentTokens;
import java.util.Arrays;

@SafeParcelable.Class(creator = "LogEventParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zze extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zze> CREATOR = new e();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public zzr f4905e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public byte[] f4906f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private int[] f4907g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private String[] f4908h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    private int[] f4909i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    private byte[][] f4910j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    private ExperimentTokens[] f4911k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "true", id = 8)
    private boolean f4912l;
    public final j5 m;
    public final a.c n;
    public final a.c o;

    public zze(zzr zzrVar, j5 j5Var, a.c cVar, a.c cVar2, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, ExperimentTokens[] experimentTokensArr, boolean z) {
        this.f4905e = zzrVar;
        this.m = j5Var;
        this.n = cVar;
        this.o = null;
        this.f4907g = iArr;
        this.f4908h = null;
        this.f4909i = iArr2;
        this.f4910j = null;
        this.f4911k = null;
        this.f4912l = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zze(@SafeParcelable.Param(id = 2) zzr zzrVar, @SafeParcelable.Param(id = 3) byte[] bArr, @SafeParcelable.Param(id = 4) int[] iArr, @SafeParcelable.Param(id = 5) String[] strArr, @SafeParcelable.Param(id = 6) int[] iArr2, @SafeParcelable.Param(id = 7) byte[][] bArr2, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) ExperimentTokens[] experimentTokensArr) {
        this.f4905e = zzrVar;
        this.f4906f = bArr;
        this.f4907g = iArr;
        this.f4908h = strArr;
        this.m = null;
        this.n = null;
        this.o = null;
        this.f4909i = iArr2;
        this.f4910j = bArr2;
        this.f4911k = experimentTokensArr;
        this.f4912l = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zze) {
            zze zzeVar = (zze) obj;
            if (k.a(this.f4905e, zzeVar.f4905e) && Arrays.equals(this.f4906f, zzeVar.f4906f) && Arrays.equals(this.f4907g, zzeVar.f4907g) && Arrays.equals(this.f4908h, zzeVar.f4908h) && k.a(this.m, zzeVar.m) && k.a(this.n, zzeVar.n) && k.a(this.o, zzeVar.o) && Arrays.equals(this.f4909i, zzeVar.f4909i) && Arrays.deepEquals(this.f4910j, zzeVar.f4910j) && Arrays.equals(this.f4911k, zzeVar.f4911k) && this.f4912l == zzeVar.f4912l) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return k.a(this.f4905e, this.f4906f, this.f4907g, this.f4908h, this.m, this.n, this.o, this.f4909i, this.f4910j, this.f4911k, Boolean.valueOf(this.f4912l));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LogEventParcelable[");
        sb.append(this.f4905e);
        sb.append(", LogEventBytes: ");
        byte[] bArr = this.f4906f;
        sb.append(bArr == null ? null : new String(bArr));
        sb.append(", TestCodes: ");
        sb.append(Arrays.toString(this.f4907g));
        sb.append(", MendelPackages: ");
        sb.append(Arrays.toString(this.f4908h));
        sb.append(", LogEvent: ");
        sb.append(this.m);
        sb.append(", ExtensionProducer: ");
        sb.append(this.n);
        sb.append(", VeProducer: ");
        sb.append(this.o);
        sb.append(", ExperimentIDs: ");
        sb.append(Arrays.toString(this.f4909i));
        sb.append(", ExperimentTokens: ");
        sb.append(Arrays.toString(this.f4910j));
        sb.append(", ExperimentTokensParcelables: ");
        sb.append(Arrays.toString(this.f4911k));
        sb.append(", AddPhenotypeExperimentTokens: ");
        sb.append(this.f4912l);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f4905e, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4906f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4907g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f4908h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f4909i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f4910j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f4912l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, (Parcelable[]) this.f4911k, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
