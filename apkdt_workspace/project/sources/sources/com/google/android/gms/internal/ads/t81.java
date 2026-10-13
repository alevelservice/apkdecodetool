package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.v81;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class t81<FieldDescriptorType extends v81<FieldDescriptorType>> {

    /* renamed from: d, reason: collision with root package name */
    private static final t81 f9532d = new t81(true);

    /* renamed from: b, reason: collision with root package name */
    private boolean f9534b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f9535c = false;

    /* renamed from: a, reason: collision with root package name */
    final ib1<FieldDescriptorType, Object> f9533a = ib1.b(16);

    private t81() {
    }

    public static <T extends v81<T>> t81<T> g() {
        return f9532d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> a() {
        if (this.f9535c) {
            return new u91(this.f9533a.e().iterator());
        }
        return this.f9533a.e().iterator();
    }

    public final boolean b() {
        return this.f9534b;
    }

    public final boolean c() {
        for (int i2 = 0; i2 < this.f9533a.c(); i2++) {
            if (!a((Map.Entry) this.f9533a.a(i2))) {
                return false;
            }
        }
        Iterator<Map.Entry<FieldDescriptorType, Object>> it = this.f9533a.d().iterator();
        while (it.hasNext()) {
            if (!a((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final /* synthetic */ Object clone() {
        t81 t81Var = new t81();
        for (int i2 = 0; i2 < this.f9533a.c(); i2++) {
            Map.Entry<FieldDescriptorType, Object> a2 = this.f9533a.a(i2);
            t81Var.a((t81) a2.getKey(), a2.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f9533a.d()) {
            t81Var.a((t81) entry.getKey(), entry.getValue());
        }
        t81Var.f9535c = this.f9535c;
        return t81Var;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> d() {
        if (this.f9535c) {
            return new u91(this.f9533a.entrySet().iterator());
        }
        return this.f9533a.entrySet().iterator();
    }

    public final void e() {
        if (this.f9534b) {
            return;
        }
        this.f9533a.b();
        this.f9534b = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t81) {
            return this.f9533a.equals(((t81) obj).f9533a);
        }
        return false;
    }

    public final int f() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f9533a.c(); i3++) {
            i2 += c(this.f9533a.a(i3));
        }
        Iterator<Map.Entry<FieldDescriptorType, Object>> it = this.f9533a.d().iterator();
        while (it.hasNext()) {
            i2 += c(it.next());
        }
        return i2;
    }

    public final int hashCode() {
        return this.f9533a.hashCode();
    }

    private final void b(Map.Entry<FieldDescriptorType, Object> entry) {
        oa1 s;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (!(value instanceof p91)) {
            if (key.M()) {
                Object a2 = a((t81<FieldDescriptorType>) key);
                if (a2 == null) {
                    a2 = new ArrayList();
                }
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    ((List) a2).add(a(it.next()));
                }
                this.f9533a.a((ib1<FieldDescriptorType, Object>) key, (FieldDescriptorType) a2);
                return;
            }
            if (key.L() == qc1.MESSAGE) {
                Object a3 = a((t81<FieldDescriptorType>) key);
                if (a3 == null) {
                    this.f9533a.a((ib1<FieldDescriptorType, Object>) key, (FieldDescriptorType) a(value));
                    return;
                }
                if (a3 instanceof sa1) {
                    s = key.a((sa1) a3, (sa1) value);
                } else {
                    s = key.a(((oa1) a3).b(), (oa1) value).s();
                }
                this.f9533a.a((ib1<FieldDescriptorType, Object>) key, (FieldDescriptorType) s);
                return;
            }
            this.f9533a.a((ib1<FieldDescriptorType, Object>) key, (FieldDescriptorType) a(value));
            return;
        }
        p91.c();
        throw null;
    }

    private t81(boolean z) {
        e();
    }

    private final Object a(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f9533a.get(fielddescriptortype);
        if (!(obj instanceof p91)) {
            return obj;
        }
        p91.c();
        throw null;
    }

    private static int c(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.L() == qc1.MESSAGE && !key.M() && !key.N()) {
            if (value instanceof p91) {
                return m81.b(entry.getKey().zzab(), (p91) value);
            }
            return m81.d(entry.getKey().zzab(), (oa1) value);
        }
        return b((v81<?>) key, value);
    }

    private final void a(FieldDescriptorType fielddescriptortype, Object obj) {
        if (fielddescriptortype.M()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    a(fielddescriptortype.J(), obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            a(fielddescriptortype.J(), obj);
        }
        if (obj instanceof p91) {
            this.f9535c = true;
        }
        this.f9533a.a((ib1<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
    
        if ((r3 instanceof com.google.android.gms.internal.ads.i91) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        if ((r3 instanceof byte[]) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if ((r3 instanceof com.google.android.gms.internal.ads.p91) == false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.google.android.gms.internal.ads.nc1 r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.ads.f91.a(r3)
            int[] r0 = com.google.android.gms.internal.ads.w81.f10046a
            com.google.android.gms.internal.ads.qc1 r2 = r2.zzbcb()
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
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.oa1
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.p91
            if (r2 == 0) goto L43
            goto L26
        L1e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.i91
            if (r2 == 0) goto L43
        L26:
            r1 = 1
            goto L43
        L28:
            boolean r2 = r3 instanceof com.google.android.gms.internal.ads.t71
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.t81.a(com.google.android.gms.internal.ads.nc1, java.lang.Object):void");
    }

    private static int b(nc1 nc1Var, Object obj) {
        switch (w81.f10047b[nc1Var.ordinal()]) {
            case 1:
                return m81.b(((Double) obj).doubleValue());
            case 2:
                return m81.b(((Float) obj).floatValue());
            case 3:
                return m81.d(((Long) obj).longValue());
            case 4:
                return m81.e(((Long) obj).longValue());
            case 5:
                return m81.f(((Integer) obj).intValue());
            case 6:
                return m81.g(((Long) obj).longValue());
            case 7:
                return m81.i(((Integer) obj).intValue());
            case 8:
                return m81.b(((Boolean) obj).booleanValue());
            case 9:
                return m81.b((oa1) obj);
            case 10:
                if (obj instanceof p91) {
                    return m81.a((p91) obj);
                }
                return m81.a((oa1) obj);
            case 11:
                if (obj instanceof t71) {
                    return m81.a((t71) obj);
                }
                return m81.a((String) obj);
            case 12:
                if (obj instanceof t71) {
                    return m81.a((t71) obj);
                }
                return m81.b((byte[]) obj);
            case 13:
                return m81.g(((Integer) obj).intValue());
            case 14:
                return m81.j(((Integer) obj).intValue());
            case 15:
                return m81.h(((Long) obj).longValue());
            case 16:
                return m81.h(((Integer) obj).intValue());
            case 17:
                return m81.f(((Long) obj).longValue());
            case 18:
                if (obj instanceof i91) {
                    return m81.k(((i91) obj).zzab());
                }
                return m81.k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static boolean a(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.L() == qc1.MESSAGE) {
            if (key.M()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((oa1) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof oa1) {
                    if (!((oa1) value).isInitialized()) {
                        return false;
                    }
                } else {
                    if (value instanceof p91) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public final void a(t81<FieldDescriptorType> t81Var) {
        for (int i2 = 0; i2 < t81Var.f9533a.c(); i2++) {
            b(t81Var.f9533a.a(i2));
        }
        Iterator<Map.Entry<FieldDescriptorType, Object>> it = t81Var.f9533a.d().iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    private static Object a(Object obj) {
        if (obj instanceof sa1) {
            return ((sa1) obj).l();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    static int a(nc1 nc1Var, int i2, Object obj) {
        int e2 = m81.e(i2);
        if (nc1Var == nc1.zzhpm) {
            f91.a((oa1) obj);
            e2 <<= 1;
        }
        return e2 + b(nc1Var, obj);
    }

    public static int b(v81<?> v81Var, Object obj) {
        nc1 J = v81Var.J();
        int zzab = v81Var.zzab();
        if (v81Var.M()) {
            int i2 = 0;
            if (v81Var.N()) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    i2 += b(J, it.next());
                }
                return m81.e(zzab) + i2 + m81.m(i2);
            }
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                i2 += a(J, zzab, it2.next());
            }
            return i2;
        }
        return a(J, zzab, obj);
    }
}
