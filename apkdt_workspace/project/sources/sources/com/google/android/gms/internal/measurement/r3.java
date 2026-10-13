package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.t3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class r3<FieldDescriptorType extends t3<FieldDescriptorType>> {

    /* renamed from: d, reason: collision with root package name */
    private static final r3 f12067d = new r3(true);

    /* renamed from: b, reason: collision with root package name */
    private boolean f12069b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f12070c = false;

    /* renamed from: a, reason: collision with root package name */
    final e6<FieldDescriptorType, Object> f12068a = e6.b(16);

    private r3() {
    }

    public static <T extends t3<T>> r3<T> g() {
        return f12067d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> a() {
        if (this.f12070c) {
            return new r4(this.f12068a.e().iterator());
        }
        return this.f12068a.e().iterator();
    }

    public final boolean b() {
        return this.f12069b;
    }

    public final boolean c() {
        for (int i2 = 0; i2 < this.f12068a.c(); i2++) {
            if (!a((Map.Entry) this.f12068a.a(i2))) {
                return false;
            }
        }
        Iterator<Map.Entry<FieldDescriptorType, Object>> it = this.f12068a.d().iterator();
        while (it.hasNext()) {
            if (!a((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final /* synthetic */ Object clone() {
        r3 r3Var = new r3();
        for (int i2 = 0; i2 < this.f12068a.c(); i2++) {
            Map.Entry<FieldDescriptorType, Object> a2 = this.f12068a.a(i2);
            r3Var.a((r3) a2.getKey(), a2.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f12068a.d()) {
            r3Var.a((r3) entry.getKey(), entry.getValue());
        }
        r3Var.f12070c = this.f12070c;
        return r3Var;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> d() {
        if (this.f12070c) {
            return new r4(this.f12068a.entrySet().iterator());
        }
        return this.f12068a.entrySet().iterator();
    }

    public final void e() {
        if (this.f12069b) {
            return;
        }
        this.f12068a.b();
        this.f12069b = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r3) {
            return this.f12068a.equals(((r3) obj).f12068a);
        }
        return false;
    }

    public final int f() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f12068a.c(); i3++) {
            i2 += c(this.f12068a.a(i3));
        }
        Iterator<Map.Entry<FieldDescriptorType, Object>> it = this.f12068a.d().iterator();
        while (it.hasNext()) {
            i2 += c(it.next());
        }
        return i2;
    }

    public final int hashCode() {
        return this.f12068a.hashCode();
    }

    private final void b(Map.Entry<FieldDescriptorType, Object> entry) {
        k5 t;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (!(value instanceof m4)) {
            if (key.H()) {
                Object a2 = a((r3<FieldDescriptorType>) key);
                if (a2 == null) {
                    a2 = new ArrayList();
                }
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    ((List) a2).add(a(it.next()));
                }
                this.f12068a.a((e6<FieldDescriptorType, Object>) key, (FieldDescriptorType) a2);
                return;
            }
            if (key.I() == m7.MESSAGE) {
                Object a3 = a((r3<FieldDescriptorType>) key);
                if (a3 == null) {
                    this.f12068a.a((e6<FieldDescriptorType, Object>) key, (FieldDescriptorType) a(value));
                    return;
                }
                if (a3 instanceof o5) {
                    t = key.a((o5) a3, (o5) value);
                } else {
                    t = key.a(((k5) a3).d(), (k5) value).t();
                }
                this.f12068a.a((e6<FieldDescriptorType, Object>) key, (FieldDescriptorType) t);
                return;
            }
            this.f12068a.a((e6<FieldDescriptorType, Object>) key, (FieldDescriptorType) a(value));
            return;
        }
        m4.c();
        throw null;
    }

    private r3(boolean z) {
        e();
    }

    private final Object a(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f12068a.get(fielddescriptortype);
        if (!(obj instanceof m4)) {
            return obj;
        }
        m4.c();
        throw null;
    }

    private static int c(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.I() == m7.MESSAGE && !key.H() && !key.O()) {
            if (value instanceof m4) {
                return i3.b(entry.getKey().zzlg(), (m4) value);
            }
            return i3.d(entry.getKey().zzlg(), (k5) value);
        }
        return b((t3<?>) key, value);
    }

    private final void a(FieldDescriptorType fielddescriptortype, Object obj) {
        if (fielddescriptortype.H()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    a(fielddescriptortype.K(), obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            a(fielddescriptortype.K(), obj);
        }
        if (obj instanceof m4) {
            this.f12070c = true;
        }
        this.f12068a.a((e6<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
    
        if ((r3 instanceof com.google.android.gms.internal.measurement.f4) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        if ((r3 instanceof byte[]) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if ((r3 instanceof com.google.android.gms.internal.measurement.m4) == false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.google.android.gms.internal.measurement.j7 r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.measurement.c4.a(r3)
            int[] r0 = com.google.android.gms.internal.measurement.u3.f12121a
            com.google.android.gms.internal.measurement.m7 r2 = r2.zzwz()
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L40;
                case 2: goto L3d;
                case 3: goto L3a;
                case 4: goto L37;
                case 5: goto L34;
                case 6: goto L31;
                case 7: goto L28;
                case 8: goto L1e;
                case 9: goto L15;
                default: goto L14;
            }
        L14:
            goto L43
        L15:
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.k5
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.m4
            if (r2 == 0) goto L43
            goto L26
        L1e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.f4
            if (r2 == 0) goto L43
        L26:
            r1 = 1
            goto L43
        L28:
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.t2
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L43
            goto L26
        L31:
            boolean r0 = r3 instanceof java.lang.String
            goto L42
        L34:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L42
        L37:
            boolean r0 = r3 instanceof java.lang.Double
            goto L42
        L3a:
            boolean r0 = r3 instanceof java.lang.Float
            goto L42
        L3d:
            boolean r0 = r3 instanceof java.lang.Long
            goto L42
        L40:
            boolean r0 = r3 instanceof java.lang.Integer
        L42:
            r1 = r0
        L43:
            if (r1 == 0) goto L46
            return
        L46:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            goto L4f
        L4e:
            throw r2
        L4f:
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.r3.a(com.google.android.gms.internal.measurement.j7, java.lang.Object):void");
    }

    private static int b(j7 j7Var, Object obj) {
        switch (u3.f12122b[j7Var.ordinal()]) {
            case 1:
                return i3.b(((Double) obj).doubleValue());
            case 2:
                return i3.b(((Float) obj).floatValue());
            case 3:
                return i3.d(((Long) obj).longValue());
            case 4:
                return i3.e(((Long) obj).longValue());
            case 5:
                return i3.f(((Integer) obj).intValue());
            case 6:
                return i3.g(((Long) obj).longValue());
            case 7:
                return i3.i(((Integer) obj).intValue());
            case 8:
                return i3.b(((Boolean) obj).booleanValue());
            case 9:
                return i3.b((k5) obj);
            case 10:
                if (obj instanceof m4) {
                    return i3.a((m4) obj);
                }
                return i3.a((k5) obj);
            case 11:
                if (obj instanceof t2) {
                    return i3.a((t2) obj);
                }
                return i3.a((String) obj);
            case 12:
                if (obj instanceof t2) {
                    return i3.a((t2) obj);
                }
                return i3.b((byte[]) obj);
            case 13:
                return i3.g(((Integer) obj).intValue());
            case 14:
                return i3.j(((Integer) obj).intValue());
            case 15:
                return i3.h(((Long) obj).longValue());
            case 16:
                return i3.h(((Integer) obj).intValue());
            case 17:
                return i3.f(((Long) obj).longValue());
            case 18:
                if (obj instanceof f4) {
                    return i3.k(((f4) obj).zzlg());
                }
                return i3.k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static boolean a(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.I() == m7.MESSAGE) {
            if (key.H()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((k5) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof k5) {
                    if (!((k5) value).isInitialized()) {
                        return false;
                    }
                } else {
                    if (value instanceof m4) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public final void a(r3<FieldDescriptorType> r3Var) {
        for (int i2 = 0; i2 < r3Var.f12068a.c(); i2++) {
            b(r3Var.f12068a.a(i2));
        }
        Iterator<Map.Entry<FieldDescriptorType, Object>> it = r3Var.f12068a.d().iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    private static Object a(Object obj) {
        if (obj instanceof o5) {
            return ((o5) obj).k();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    static int a(j7 j7Var, int i2, Object obj) {
        int e2 = i3.e(i2);
        if (j7Var == j7.zzank) {
            c4.a((k5) obj);
            e2 <<= 1;
        }
        return e2 + b(j7Var, obj);
    }

    public static int b(t3<?> t3Var, Object obj) {
        j7 K = t3Var.K();
        int zzlg = t3Var.zzlg();
        if (t3Var.H()) {
            int i2 = 0;
            if (t3Var.O()) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    i2 += b(K, it.next());
                }
                return i3.e(zzlg) + i2 + i3.m(i2);
            }
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                i2 += a(K, zzlg, it2.next());
            }
            return i2;
        }
        return a(K, zzlg, obj);
    }
}
