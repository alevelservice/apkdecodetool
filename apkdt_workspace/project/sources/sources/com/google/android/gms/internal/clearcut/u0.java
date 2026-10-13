package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.x0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class u0<FieldDescriptorType extends x0<FieldDescriptorType>> {

    /* renamed from: d, reason: collision with root package name */
    private static final u0 f11568d = new u0(true);

    /* renamed from: b, reason: collision with root package name */
    private boolean f11570b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f11571c = false;

    /* renamed from: a, reason: collision with root package name */
    private final c3<FieldDescriptorType, Object> f11569a = c3.b(16);

    private u0() {
    }

    private u0(boolean z) {
        h();
    }

    static int a(g4 g4Var, int i2, Object obj) {
        int e2 = k0.e(i2);
        if (g4Var == g4.zzql) {
            f1.a((i2) obj);
            e2 <<= 1;
        }
        return e2 + b(g4Var, obj);
    }

    private final Object a(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f11569a.get(fielddescriptortype);
        if (!(obj instanceof m1)) {
            return obj;
        }
        m1.c();
        throw null;
    }

    private static Object a(Object obj) {
        if (obj instanceof o2) {
            return ((o2) obj).m();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
    
        if ((r3 instanceof com.google.android.gms.internal.clearcut.g1) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        if ((r3 instanceof byte[]) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if ((r3 instanceof com.google.android.gms.internal.clearcut.m1) == false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.google.android.gms.internal.clearcut.g4 r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.clearcut.f1.a(r3)
            int[] r0 = com.google.android.gms.internal.clearcut.v0.f11579a
            com.google.android.gms.internal.clearcut.l4 r2 = r2.zzek()
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
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.i2
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.m1
            if (r2 == 0) goto L43
            goto L26
        L1e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L26
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.g1
            if (r2 == 0) goto L43
        L26:
            r1 = 1
            goto L43
        L28:
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.y
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.u0.a(com.google.android.gms.internal.clearcut.g4, java.lang.Object):void");
    }

    private final void a(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.D()) {
            a(fielddescriptortype.G(), obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj2 = arrayList.get(i2);
                i2++;
                a(fielddescriptortype.G(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof m1) {
            this.f11571c = true;
        }
        this.f11569a.a((c3<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    private static boolean a(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.B() == l4.MESSAGE) {
            boolean D = key.D();
            Object value = entry.getValue();
            if (D) {
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    if (!((i2) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                if (!(value instanceof i2)) {
                    if (value instanceof m1) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((i2) value).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    private static int b(g4 g4Var, Object obj) {
        switch (v0.f11580b[g4Var.ordinal()]) {
            case 1:
                return k0.b(((Double) obj).doubleValue());
            case 2:
                return k0.b(((Float) obj).floatValue());
            case 3:
                return k0.d(((Long) obj).longValue());
            case 4:
                return k0.e(((Long) obj).longValue());
            case 5:
                return k0.f(((Integer) obj).intValue());
            case 6:
                return k0.g(((Long) obj).longValue());
            case 7:
                return k0.i(((Integer) obj).intValue());
            case 8:
                return k0.b(((Boolean) obj).booleanValue());
            case 9:
                return k0.b((i2) obj);
            case 10:
                return obj instanceof m1 ? k0.a((m1) obj) : k0.a((i2) obj);
            case 11:
                return obj instanceof y ? k0.a((y) obj) : k0.a((String) obj);
            case 12:
                return obj instanceof y ? k0.a((y) obj) : k0.b((byte[]) obj);
            case 13:
                return k0.g(((Integer) obj).intValue());
            case 14:
                return k0.j(((Integer) obj).intValue());
            case 15:
                return k0.h(((Long) obj).longValue());
            case 16:
                return k0.h(((Integer) obj).intValue());
            case 17:
                return k0.f(((Long) obj).longValue());
            case 18:
                return obj instanceof g1 ? k0.k(((g1) obj).zzc()) : k0.k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static int b(x0<?> x0Var, Object obj) {
        g4 G = x0Var.G();
        int zzc = x0Var.zzc();
        if (!x0Var.D()) {
            return a(G, zzc, obj);
        }
        int i2 = 0;
        List list = (List) obj;
        if (x0Var.z()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                i2 += b(G, it.next());
            }
            return k0.e(zzc) + i2 + k0.m(i2);
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            i2 += a(G, zzc, it2.next());
        }
        return i2;
    }

    private final void b(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof m1) {
            m1.c();
            throw null;
        }
        if (key.D()) {
            Object a2 = a((u0<FieldDescriptorType>) key);
            if (a2 == null) {
                a2 = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) a2).add(a(it.next()));
            }
            this.f11569a.a((c3<FieldDescriptorType, Object>) key, (FieldDescriptorType) a2);
            return;
        }
        if (key.B() != l4.MESSAGE) {
            this.f11569a.a((c3<FieldDescriptorType, Object>) key, (FieldDescriptorType) a(value));
            return;
        }
        Object a3 = a((u0<FieldDescriptorType>) key);
        if (a3 == null) {
            this.f11569a.a((c3<FieldDescriptorType, Object>) key, (FieldDescriptorType) a(value));
        } else {
            if (a3 instanceof o2) {
                key.a((o2) a3, (o2) value);
                throw null;
            }
            this.f11569a.a((c3<FieldDescriptorType, Object>) key, (FieldDescriptorType) key.a(((i2) a3).b(), (i2) value).o());
        }
    }

    private static int c(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.B() != l4.MESSAGE || key.D() || key.z()) {
            return b((x0<?>) key, value);
        }
        boolean z = value instanceof m1;
        int zzc = entry.getKey().zzc();
        return z ? k0.b(zzc, (m1) value) : k0.d(zzc, (i2) value);
    }

    public static <T extends x0<T>> u0<T> i() {
        return f11568d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> a() {
        return this.f11571c ? new p1(this.f11569a.d().iterator()) : this.f11569a.d().iterator();
    }

    public final void a(u0<FieldDescriptorType> u0Var) {
        for (int i2 = 0; i2 < u0Var.f11569a.b(); i2++) {
            b(u0Var.f11569a.a(i2));
        }
        Iterator<Map.Entry<FieldDescriptorType, Object>> it = u0Var.f11569a.c().iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        return this.f11569a.isEmpty();
    }

    public final boolean c() {
        return this.f11570b;
    }

    public final /* synthetic */ Object clone() {
        u0 u0Var = new u0();
        for (int i2 = 0; i2 < this.f11569a.b(); i2++) {
            Map.Entry<FieldDescriptorType, Object> a2 = this.f11569a.a(i2);
            u0Var.a((u0) a2.getKey(), a2.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f11569a.c()) {
            u0Var.a((u0) entry.getKey(), entry.getValue());
        }
        u0Var.f11571c = this.f11571c;
        return u0Var;
    }

    public final boolean d() {
        for (int i2 = 0; i2 < this.f11569a.b(); i2++) {
            if (!a((Map.Entry) this.f11569a.a(i2))) {
                return false;
            }
        }
        Iterator<Map.Entry<FieldDescriptorType, Object>> it = this.f11569a.c().iterator();
        while (it.hasNext()) {
            if (!a((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> e() {
        return this.f11571c ? new p1(this.f11569a.entrySet().iterator()) : this.f11569a.entrySet().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof u0) {
            return this.f11569a.equals(((u0) obj).f11569a);
        }
        return false;
    }

    public final int f() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f11569a.b(); i3++) {
            Map.Entry<FieldDescriptorType, Object> a2 = this.f11569a.a(i3);
            i2 += b((x0<?>) a2.getKey(), a2.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f11569a.c()) {
            i2 += b((x0<?>) entry.getKey(), entry.getValue());
        }
        return i2;
    }

    public final int g() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f11569a.b(); i3++) {
            i2 += c(this.f11569a.a(i3));
        }
        Iterator<Map.Entry<FieldDescriptorType, Object>> it = this.f11569a.c().iterator();
        while (it.hasNext()) {
            i2 += c(it.next());
        }
        return i2;
    }

    public final void h() {
        if (this.f11570b) {
            return;
        }
        this.f11569a.e();
        this.f11570b = true;
    }

    public final int hashCode() {
        return this.f11569a.hashCode();
    }
}
