package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@VisibleForTesting
@KeepForSdk
@SafeParcelable.Class(creator = "SafeParcelResponseCreator")
/* loaded from: classes.dex */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {

    @KeepForSdk
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new e();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(getter = "getVersionCode", id = 1)
    private final int f5384e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getParcel", id = 2)
    private final Parcel f5385f;

    /* renamed from: g, reason: collision with root package name */
    private final int f5386g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getFieldMappingDictionary", id = 3)
    private final zaj f5387h;

    /* renamed from: i, reason: collision with root package name */
    private final String f5388i;

    /* renamed from: j, reason: collision with root package name */
    private int f5389j;

    /* renamed from: k, reason: collision with root package name */
    private int f5390k;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public SafeParcelResponse(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) Parcel parcel, @SafeParcelable.Param(id = 3) zaj zajVar) {
        this.f5384e = i2;
        m.a(parcel);
        this.f5385f = parcel;
        this.f5386g = 2;
        this.f5387h = zajVar;
        zaj zajVar2 = this.f5387h;
        if (zajVar2 == null) {
            this.f5388i = null;
        } else {
            this.f5388i = zajVar2.k();
        }
        this.f5389j = 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0005, code lost:
    
        if (r0 != 1) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.os.Parcel b() {
        /*
            r2 = this;
            int r0 = r2.f5389j
            if (r0 == 0) goto L8
            r1 = 1
            if (r0 == r1) goto L10
            goto L1a
        L8:
            android.os.Parcel r0 = r2.f5385f
            int r0 = com.google.android.gms.common.internal.safeparcel.b.a(r0)
            r2.f5390k = r0
        L10:
            android.os.Parcel r0 = r2.f5385f
            int r1 = r2.f5390k
            com.google.android.gms.common.internal.safeparcel.b.a(r0, r1)
            r0 = 2
            r2.f5389j = r0
        L1a:
            android.os.Parcel r0 = r2.f5385f
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.SafeParcelResponse.b():android.os.Parcel");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Map<String, FastJsonResponse.Field<?, ?>> a() {
        zaj zajVar = this.f5387h;
        if (zajVar == null) {
            return null;
        }
        return zajVar.b(this.f5388i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public String toString() {
        m.a(this.f5387h, "Cannot convert to JSON on client side.");
        Parcel b2 = b();
        b2.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        a(sb, this.f5387h.b(this.f5388i), b2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        zaj zajVar;
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5384e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, b(), false);
        int i3 = this.f5386g;
        if (i3 == 0) {
            zajVar = null;
        } else if (i3 == 1) {
            zajVar = this.f5387h;
        } else if (i3 == 2) {
            zajVar = this.f5387h;
        } else {
            StringBuilder sb = new StringBuilder(34);
            sb.append("Invalid creation type: ");
            sb.append(i3);
            throw new IllegalStateException(sb.toString());
        }
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) zajVar, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public Object a(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    private final void a(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().j(), entry);
        }
        sb.append('{');
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        boolean z = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(com.google.android.gms.common.internal.safeparcel.a.a(a2));
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field<?, ?> field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (field.k()) {
                    int i2 = field.f5379h;
                    switch (i2) {
                        case 0:
                            a(sb, field, FastJsonResponse.a(field, Integer.valueOf(com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2))));
                            break;
                        case 1:
                            a(sb, field, FastJsonResponse.a(field, com.google.android.gms.common.internal.safeparcel.a.c(parcel, a2)));
                            break;
                        case 2:
                            a(sb, field, FastJsonResponse.a(field, Long.valueOf(com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2))));
                            break;
                        case 3:
                            a(sb, field, FastJsonResponse.a(field, Float.valueOf(com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2))));
                            break;
                        case 4:
                            a(sb, field, FastJsonResponse.a(field, Double.valueOf(com.google.android.gms.common.internal.safeparcel.a.v(parcel, a2))));
                            break;
                        case 5:
                            a(sb, field, FastJsonResponse.a(field, com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2)));
                            break;
                        case 6:
                            a(sb, field, FastJsonResponse.a(field, Boolean.valueOf(com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2))));
                            break;
                        case 7:
                            a(sb, field, FastJsonResponse.a(field, com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2)));
                            break;
                        case 8:
                        case 9:
                            a(sb, field, FastJsonResponse.a(field, com.google.android.gms.common.internal.safeparcel.a.g(parcel, a2)));
                            break;
                        case 10:
                            Bundle f2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
                            HashMap hashMap = new HashMap();
                            for (String str2 : f2.keySet()) {
                                hashMap.put(str2, f2.getString(str2));
                            }
                            a(sb, field, FastJsonResponse.a(field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i2);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                } else if (field.f5380i) {
                    sb.append("[");
                    switch (field.f5379h) {
                        case 0:
                            com.google.android.gms.common.util.b.a(sb, com.google.android.gms.common.internal.safeparcel.a.k(parcel, a2));
                            break;
                        case 1:
                            com.google.android.gms.common.util.b.a(sb, com.google.android.gms.common.internal.safeparcel.a.d(parcel, a2));
                            break;
                        case 2:
                            com.google.android.gms.common.util.b.a(sb, com.google.android.gms.common.internal.safeparcel.a.m(parcel, a2));
                            break;
                        case 3:
                            com.google.android.gms.common.util.b.a(sb, com.google.android.gms.common.internal.safeparcel.a.j(parcel, a2));
                            break;
                        case 4:
                            com.google.android.gms.common.util.b.a(sb, com.google.android.gms.common.internal.safeparcel.a.i(parcel, a2));
                            break;
                        case 5:
                            com.google.android.gms.common.util.b.a(sb, com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2));
                            break;
                        case 6:
                            com.google.android.gms.common.util.b.a(sb, com.google.android.gms.common.internal.safeparcel.a.e(parcel, a2));
                            break;
                        case 7:
                            com.google.android.gms.common.util.b.a(sb, com.google.android.gms.common.internal.safeparcel.a.q(parcel, a2));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] o = com.google.android.gms.common.internal.safeparcel.a.o(parcel, a2);
                            int length = o.length;
                            for (int i3 = 0; i3 < length; i3++) {
                                if (i3 > 0) {
                                    sb.append(",");
                                }
                                o[i3].setDataPosition(0);
                                a(sb, field.l(), o[i3]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.f5379h) {
                        case 0:
                            sb.append(com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2));
                            break;
                        case 1:
                            sb.append(com.google.android.gms.common.internal.safeparcel.a.c(parcel, a2));
                            break;
                        case 2:
                            sb.append(com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2));
                            break;
                        case 3:
                            sb.append(com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2));
                            break;
                        case 4:
                            sb.append(com.google.android.gms.common.internal.safeparcel.a.v(parcel, a2));
                            break;
                        case 5:
                            sb.append(com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2));
                            break;
                        case 6:
                            sb.append(com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2));
                            break;
                        case 7:
                            String p = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                            sb.append("\"");
                            sb.append(l.a(p));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] g2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, a2);
                            sb.append("\"");
                            sb.append(com.google.android.gms.common.util.c.a(g2));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] g3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, a2);
                            sb.append("\"");
                            sb.append(com.google.android.gms.common.util.c.b(g3));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle f3 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
                            Set<String> keySet = f3.keySet();
                            keySet.size();
                            sb.append("{");
                            boolean z2 = true;
                            for (String str3 : keySet) {
                                if (!z2) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(str3);
                                sb.append("\"");
                                sb.append(":");
                                sb.append("\"");
                                sb.append(l.a(f3.getString(str3)));
                                sb.append("\"");
                                z2 = false;
                            }
                            sb.append("}");
                            break;
                        case 11:
                            Parcel n = com.google.android.gms.common.internal.safeparcel.a.n(parcel, a2);
                            n.setDataPosition(0);
                            a(sb, field.l(), n);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == b2) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(b2);
        throw new a.C0088a(sb3.toString(), parcel);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public boolean b(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    private final void a(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.f5378g) {
            ArrayList arrayList = (ArrayList) obj;
            sb.append("[");
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 != 0) {
                    sb.append(",");
                }
                a(sb, field.f5377f, arrayList.get(i2));
            }
            sb.append("]");
            return;
        }
        a(sb, field.f5377f, obj);
    }

    private static void a(StringBuilder sb, int i2, Object obj) {
        switch (i2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                sb.append(l.a(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(com.google.android.gms.common.util.c.a((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(com.google.android.gms.common.util.c.b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                com.google.android.gms.common.util.m.a(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("Unknown type = ");
                sb2.append(i2);
                throw new IllegalArgumentException(sb2.toString());
        }
    }
}
