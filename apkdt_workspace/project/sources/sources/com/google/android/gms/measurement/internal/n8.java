package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.measurement.n0;
import com.google.android.gms.internal.measurement.p0;
import com.google.android.gms.internal.measurement.v0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes.dex */
public final class n8 extends h8 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public n8(g8 g8Var) {
        super(g8Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object b(com.google.android.gms.internal.measurement.n0 n0Var, String str) {
        com.google.android.gms.internal.measurement.p0 a2 = a(n0Var, str);
        if (a2 == null) {
            return null;
        }
        if (a2.o()) {
            return a2.p();
        }
        if (a2.q()) {
            return Long.valueOf(a2.s());
        }
        if (a2.u()) {
            return Double.valueOf(a2.v());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(v0.a aVar, Object obj) {
        com.google.android.gms.common.internal.m.a(obj);
        aVar.h();
        aVar.i();
        aVar.j();
        if (obj instanceof String) {
            aVar.b((String) obj);
            return;
        }
        if (obj instanceof Long) {
            aVar.b(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            aVar.a(((Double) obj).doubleValue());
        } else {
            zzab().q().a("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] c(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            zzab().q().a("Failed to gzip content", e2);
            throw e2;
        }
    }

    @Override // com.google.android.gms.measurement.internal.h8
    protected final boolean r() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final List<Integer> s() {
        Map<String, String> a2 = j.a(this.f12872b.getContext());
        if (a2 == null || a2.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int intValue = j.R.a(null).intValue();
        for (Map.Entry<String, String> entry : a2.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int parseInt = Integer.parseInt(entry.getValue());
                    if (parseInt != 0) {
                        arrayList.add(Integer.valueOf(parseInt));
                        if (arrayList.size() >= intValue) {
                            zzab().t().a("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e2) {
                    zzab().t().a("Experiment ID NumberFormatException", e2);
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] b(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e2) {
            zzab().q().a("Failed to ungzip content", e2);
            throw e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(p0.a aVar, Object obj) {
        com.google.android.gms.common.internal.m.a(obj);
        aVar.h();
        aVar.i();
        aVar.j();
        if (obj instanceof String) {
            aVar.b((String) obj);
            return;
        }
        if (obj instanceof Long) {
            aVar.a(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            aVar.a(((Double) obj).doubleValue());
        } else {
            zzab().q().a("Ignoring invalid (type) event param value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.gms.internal.measurement.p0 a(com.google.android.gms.internal.measurement.n0 n0Var, String str) {
        for (com.google.android.gms.internal.measurement.p0 p0Var : n0Var.q()) {
            if (p0Var.n().equals(str)) {
                return p0Var;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(n0.a aVar, String str, Object obj) {
        List<com.google.android.gms.internal.measurement.p0> j2 = aVar.j();
        int i2 = 0;
        while (true) {
            if (i2 >= j2.size()) {
                i2 = -1;
                break;
            } else if (str.equals(j2.get(i2).n())) {
                break;
            } else {
                i2++;
            }
        }
        p0.a z = com.google.android.gms.internal.measurement.p0.z();
        z.a(str);
        if (obj instanceof Long) {
            z.a(((Long) obj).longValue());
        } else if (obj instanceof String) {
            z.b((String) obj);
        } else if (obj instanceof Double) {
            z.a(((Double) obj).doubleValue());
        }
        if (i2 >= 0) {
            aVar.a(i2, z);
        } else {
            aVar.a(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(com.google.android.gms.internal.measurement.q0 q0Var) {
        List<com.google.android.gms.internal.measurement.p0> q;
        if (q0Var == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (com.google.android.gms.internal.measurement.r0 r0Var : q0Var.n()) {
            if (r0Var != null) {
                a(sb, 1);
                sb.append("bundle {\n");
                if (r0Var.H()) {
                    a(sb, 1, "protocol_version", Integer.valueOf(r0Var.I()));
                }
                a(sb, 1, "platform", r0Var.R());
                if (r0Var.V()) {
                    a(sb, 1, "gmp_version", Long.valueOf(r0Var.w()));
                }
                if (r0Var.W()) {
                    a(sb, 1, "uploading_gmp_version", Long.valueOf(r0Var.X()));
                }
                if (r0Var.s0()) {
                    a(sb, 1, "dynamite_version", Long.valueOf(r0Var.y()));
                }
                if (r0Var.l0()) {
                    a(sb, 1, "config_version", Long.valueOf(r0Var.m0()));
                }
                a(sb, 1, "gmp_app_id", r0Var.p());
                a(sb, 1, "admob_app_id", r0Var.r0());
                a(sb, 1, "app_id", r0Var.s());
                a(sb, 1, "app_version", r0Var.u());
                if (r0Var.i0()) {
                    a(sb, 1, "app_version_major", Integer.valueOf(r0Var.j0()));
                }
                a(sb, 1, "firebase_instance_id", r0Var.o());
                if (r0Var.b0()) {
                    a(sb, 1, "dev_cert_hash", Long.valueOf(r0Var.x()));
                }
                a(sb, 1, "app_store", r0Var.v());
                if (r0Var.J()) {
                    a(sb, 1, "upload_timestamp_millis", Long.valueOf(r0Var.K()));
                }
                if (r0Var.L()) {
                    a(sb, 1, "start_timestamp_millis", Long.valueOf(r0Var.F()));
                }
                if (r0Var.M()) {
                    a(sb, 1, "end_timestamp_millis", Long.valueOf(r0Var.G()));
                }
                if (r0Var.N()) {
                    a(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(r0Var.O()));
                }
                if (r0Var.P()) {
                    a(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(r0Var.Q()));
                }
                a(sb, 1, "app_instance_id", r0Var.n());
                a(sb, 1, "resettable_device_id", r0Var.Y());
                a(sb, 1, "device_id", r0Var.k0());
                a(sb, 1, "ds_id", r0Var.o0());
                if (r0Var.Z()) {
                    a(sb, 1, "limited_ad_tracking", Boolean.valueOf(r0Var.a0()));
                }
                a(sb, 1, "os_version", r0Var.q());
                a(sb, 1, "device_model", r0Var.S());
                a(sb, 1, "user_default_language", r0Var.A());
                if (r0Var.T()) {
                    a(sb, 1, "time_zone_offset_minutes", Integer.valueOf(r0Var.U()));
                }
                if (r0Var.c0()) {
                    a(sb, 1, "bundle_sequential_index", Integer.valueOf(r0Var.d0()));
                }
                if (r0Var.f0()) {
                    a(sb, 1, "service_upload", Boolean.valueOf(r0Var.g0()));
                }
                a(sb, 1, "health_monitor", r0Var.e0());
                if (r0Var.n0() && r0Var.z() != 0) {
                    a(sb, 1, "android_id", Long.valueOf(r0Var.z()));
                }
                if (r0Var.p0()) {
                    a(sb, 1, "retry_counter", Integer.valueOf(r0Var.q0()));
                }
                List<com.google.android.gms.internal.measurement.v0> D = r0Var.D();
                int i2 = 2;
                if (D != null) {
                    for (com.google.android.gms.internal.measurement.v0 v0Var : D) {
                        if (v0Var != null) {
                            a(sb, 2);
                            sb.append("user_property {\n");
                            a(sb, 2, "set_timestamp_millis", v0Var.w() ? Long.valueOf(v0Var.x()) : null);
                            a(sb, 2, "name", i().c(v0Var.n()));
                            a(sb, 2, "string_value", v0Var.p());
                            a(sb, 2, "int_value", v0Var.q() ? Long.valueOf(v0Var.s()) : null);
                            a(sb, 2, "double_value", v0Var.u() ? Double.valueOf(v0Var.v()) : null);
                            a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.l0> h0 = r0Var.h0();
                String s = r0Var.s();
                if (h0 != null) {
                    for (com.google.android.gms.internal.measurement.l0 l0Var : h0) {
                        if (l0Var != null) {
                            a(sb, i2);
                            sb.append("audience_membership {\n");
                            if (l0Var.q()) {
                                a(sb, i2, "audience_id", Integer.valueOf(l0Var.s()));
                            }
                            if (l0Var.u()) {
                                a(sb, i2, "new_audience", Boolean.valueOf(l0Var.v()));
                            }
                            a(sb, 2, "current_data", l0Var.n(), s);
                            a(sb, 2, "previous_data", l0Var.p(), s);
                            a(sb, 2);
                            sb.append("}\n");
                            i2 = 2;
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.n0> B = r0Var.B();
                if (B != null) {
                    for (com.google.android.gms.internal.measurement.n0 n0Var : B) {
                        if (n0Var != null) {
                            a(sb, 2);
                            sb.append("event {\n");
                            a(sb, 2, "name", i().a(n0Var.o()));
                            if (n0Var.u()) {
                                a(sb, 2, "timestamp_millis", Long.valueOf(n0Var.p()));
                            }
                            if (n0Var.w()) {
                                a(sb, 2, "previous_timestamp_millis", Long.valueOf(n0Var.v()));
                            }
                            if (n0Var.x()) {
                                a(sb, 2, "count", Integer.valueOf(n0Var.n()));
                            }
                            if (n0Var.s() != 0 && (q = n0Var.q()) != null) {
                                for (com.google.android.gms.internal.measurement.p0 p0Var : q) {
                                    if (p0Var != null) {
                                        a(sb, 3);
                                        sb.append("param {\n");
                                        a(sb, 3, "name", i().b(p0Var.n()));
                                        a(sb, 3, "string_value", p0Var.p());
                                        a(sb, 3, "int_value", p0Var.q() ? Long.valueOf(p0Var.s()) : null);
                                        a(sb, 3, "double_value", p0Var.u() ? Double.valueOf(p0Var.v()) : null);
                                        a(sb, 3);
                                        sb.append("}\n");
                                    }
                                }
                            }
                            a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                a(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(com.google.android.gms.internal.measurement.z zVar) {
        if (zVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (zVar.q()) {
            a(sb, 0, "filter_id", Integer.valueOf(zVar.n()));
        }
        a(sb, 0, "event_name", i().a(zVar.o()));
        String a2 = a(zVar.w(), zVar.x(), zVar.z());
        if (!a2.isEmpty()) {
            a(sb, 0, "filter_type", a2);
        }
        a(sb, 1, "event_count_filter", zVar.v());
        sb.append("  filters {\n");
        Iterator<com.google.android.gms.internal.measurement.a0> it = zVar.s().iterator();
        while (it.hasNext()) {
            a(sb, 2, it.next());
        }
        a(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(com.google.android.gms.internal.measurement.c0 c0Var) {
        if (c0Var == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (c0Var.p()) {
            a(sb, 0, "filter_id", Integer.valueOf(c0Var.n()));
        }
        a(sb, 0, "property_name", i().c(c0Var.o()));
        String a2 = a(c0Var.q(), c0Var.s(), c0Var.v());
        if (!a2.isEmpty()) {
            a(sb, 0, "filter_type", a2);
        }
        a(sb, 1, c0Var.w());
        sb.append("}\n");
        return sb.toString();
    }

    private static String a(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    private final void a(StringBuilder sb, int i2, String str, com.google.android.gms.internal.measurement.t0 t0Var, String str2) {
        if (t0Var == null) {
            return;
        }
        a(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (t0Var.q() != 0) {
            a(sb, 4);
            sb.append("results: ");
            int i3 = 0;
            for (Long l2 : t0Var.p()) {
                int i4 = i3 + 1;
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i3 = i4;
            }
            sb.append('\n');
        }
        if (t0Var.o() != 0) {
            a(sb, 4);
            sb.append("status: ");
            int i5 = 0;
            for (Long l3 : t0Var.n()) {
                int i6 = i5 + 1;
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(l3);
                i5 = i6;
            }
            sb.append('\n');
        }
        if (d().i(str2)) {
            if (t0Var.u() != 0) {
                a(sb, 4);
                sb.append("dynamic_filter_timestamps: {");
                int i7 = 0;
                for (com.google.android.gms.internal.measurement.m0 m0Var : t0Var.s()) {
                    int i8 = i7 + 1;
                    if (i7 != 0) {
                        sb.append(", ");
                    }
                    sb.append(m0Var.o() ? Integer.valueOf(m0Var.n()) : null);
                    sb.append(":");
                    sb.append(m0Var.p() ? Long.valueOf(m0Var.q()) : null);
                    i7 = i8;
                }
                sb.append("}\n");
            }
            if (t0Var.w() != 0) {
                a(sb, 4);
                sb.append("sequence_filter_timestamps: {");
                int i9 = 0;
                for (com.google.android.gms.internal.measurement.u0 u0Var : t0Var.v()) {
                    int i10 = i9 + 1;
                    if (i9 != 0) {
                        sb.append(", ");
                    }
                    sb.append(u0Var.o() ? Integer.valueOf(u0Var.n()) : null);
                    sb.append(": [");
                    Iterator<Long> it = u0Var.p().iterator();
                    int i11 = 0;
                    while (it.hasNext()) {
                        long longValue = it.next().longValue();
                        int i12 = i11 + 1;
                        if (i11 != 0) {
                            sb.append(", ");
                        }
                        sb.append(longValue);
                        i11 = i12;
                    }
                    sb.append("]");
                    i9 = i10;
                }
                sb.append("}\n");
            }
        }
        a(sb, 3);
        sb.append("}\n");
    }

    private final void a(StringBuilder sb, int i2, String str, com.google.android.gms.internal.measurement.b0 b0Var) {
        if (b0Var == null) {
            return;
        }
        a(sb, i2);
        sb.append(str);
        sb.append(" {\n");
        if (b0Var.n()) {
            a(sb, i2, "comparison_type", b0Var.o().name());
        }
        if (b0Var.p()) {
            a(sb, i2, "match_as_float", Boolean.valueOf(b0Var.q()));
        }
        a(sb, i2, "comparison_value", b0Var.u());
        a(sb, i2, "min_comparison_value", b0Var.w());
        a(sb, i2, "max_comparison_value", b0Var.y());
        a(sb, i2);
        sb.append("}\n");
    }

    private final void a(StringBuilder sb, int i2, com.google.android.gms.internal.measurement.a0 a0Var) {
        if (a0Var == null) {
            return;
        }
        a(sb, i2);
        sb.append("filter {\n");
        if (a0Var.s()) {
            a(sb, i2, "complement", Boolean.valueOf(a0Var.u()));
        }
        a(sb, i2, "param_name", i().b(a0Var.v()));
        int i3 = i2 + 1;
        com.google.android.gms.internal.measurement.d0 o = a0Var.o();
        if (o != null) {
            a(sb, i3);
            sb.append("string_filter");
            sb.append(" {\n");
            if (o.n()) {
                a(sb, i3, "match_type", o.o().name());
            }
            a(sb, i3, "expression", o.q());
            if (o.s()) {
                a(sb, i3, "case_sensitive", Boolean.valueOf(o.u()));
            }
            if (o.w() > 0) {
                a(sb, i3 + 1);
                sb.append("expression_list {\n");
                for (String str : o.v()) {
                    a(sb, i3 + 2);
                    sb.append(str);
                    sb.append("\n");
                }
                sb.append("}\n");
            }
            a(sb, i3);
            sb.append("}\n");
        }
        a(sb, i3, "number_filter", a0Var.q());
        a(sb, i2);
        sb.append("}\n");
    }

    private static void a(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append("  ");
        }
    }

    private static void a(StringBuilder sb, int i2, String str, Object obj) {
        if (obj == null) {
            return;
        }
        a(sb, i2 + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T extends Parcelable> T a(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            return creator.createFromParcel(obtain);
        } catch (a.C0088a unused) {
            zzab().q().a("Failed to load parcelable from buffer");
            return null;
        } finally {
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean a(zzai zzaiVar, zzn zznVar) {
        com.google.android.gms.common.internal.m.a(zzaiVar);
        com.google.android.gms.common.internal.m.a(zznVar);
        if (!TextUtils.isEmpty(zznVar.f13392f) || !TextUtils.isEmpty(zznVar.v)) {
            return true;
        }
        zzae();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(List<Long> list, int i2) {
        if (i2 < (list.size() << 6)) {
            return ((1 << (i2 % 64)) & list.get(i2 / 64).longValue()) != 0;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Long> a(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            long j2 = 0;
            for (int i3 = 0; i3 < 64; i3++) {
                int i4 = (i2 << 6) + i3;
                if (i4 < bitSet.length()) {
                    if (bitSet.get(i4)) {
                        j2 |= 1 << i3;
                    }
                }
            }
            arrayList.add(Long.valueOf(j2));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<Long> a(List<Long> list, List<Integer> list2) {
        int i2;
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                zzab().t().a("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    zzab().t().a("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & ((1 << (num.intValue() % 64)) ^ (-1))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i3 = size2;
            i2 = size;
            size = i3;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(long j2, long j3) {
        return j2 == 0 || j3 <= 0 || Math.abs(a().a() - j2) > j3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final long a(byte[] bArr) {
        com.google.android.gms.common.internal.m.a(bArr);
        j().g();
        MessageDigest u = r8.u();
        if (u == null) {
            zzab().q().a("Failed to get MD5");
            return 0L;
        }
        return r8.a(u.digest(bArr));
    }
}
