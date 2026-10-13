package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.k4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class i4<T extends k4<T>> {

    /* renamed from: d, reason: collision with root package name */
    private static final i4 f12379d = new i4(true);

    /* renamed from: a, reason: collision with root package name */
    final v6<T, Object> f12380a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f12381b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f12382c;

    private i4() {
        this.f12380a = v6.b(16);
    }

    public static <T extends k4<T>> i4<T> g() {
        return f12379d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Iterator<Map.Entry<T, Object>> a() {
        if (this.f12382c) {
            return new j5(this.f12380a.e().iterator());
        }
        return this.f12380a.e().iterator();
    }

    public final boolean b() {
        return this.f12381b;
    }

    public final boolean c() {
        for (int i2 = 0; i2 < this.f12380a.c(); i2++) {
            if (!a((Map.Entry) this.f12380a.a(i2))) {
                return false;
            }
        }
        Iterator<Map.Entry<T, Object>> it = this.f12380a.d().iterator();
        while (it.hasNext()) {
            if (!a((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final /* synthetic */ Object clone() {
        i4 i4Var = new i4();
        for (int i2 = 0; i2 < this.f12380a.c(); i2++) {
            Map.Entry<T, Object> a2 = this.f12380a.a(i2);
            i4Var.a((i4) a2.getKey(), a2.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f12380a.d()) {
            i4Var.a((i4) entry.getKey(), entry.getValue());
        }
        i4Var.f12382c = this.f12382c;
        return i4Var;
    }

    public final Iterator<Map.Entry<T, Object>> d() {
        if (this.f12382c) {
            return new j5(this.f12380a.entrySet().iterator());
        }
        return this.f12380a.entrySet().iterator();
    }

    public final void e() {
        if (this.f12381b) {
            return;
        }
        this.f12380a.b();
        this.f12381b = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i4) {
            return this.f12380a.equals(((i4) obj).f12380a);
        }
        return false;
    }

    public final int f() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f12380a.c(); i3++) {
            i2 += c(this.f12380a.a(i3));
        }
        Iterator<Map.Entry<T, Object>> it = this.f12380a.d().iterator();
        while (it.hasNext()) {
            i2 += c(it.next());
        }
        return i2;
    }

    public final int hashCode() {
        return this.f12380a.hashCode();
    }

    public final void b(T t, Object obj) {
        List list;
        if (t.A()) {
            a(t.E(), obj);
            Object a2 = a((i4<T>) t);
            if (a2 == null) {
                list = new ArrayList();
                this.f12380a.a((v6<T, Object>) t, (T) list);
            } else {
                list = (List) a2;
            }
            list.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    private i4(boolean z) {
        this(v6.b(0));
        e();
    }

    public final Object a(T t) {
        Object obj = this.f12380a.get(t);
        if (!(obj instanceof e5)) {
            return obj;
        }
        e5.c();
        throw null;
    }

    private i4(v6<T, Object> v6Var) {
        this.f12380a = v6Var;
        e();
    }

    private static int c(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.F() == c8.MESSAGE && !key.A() && !key.C()) {
            if (value instanceof e5) {
                return a4.b(entry.getKey().zzag(), (e5) value);
            }
            return a4.b(entry.getKey().zzag(), (d6) value);
        }
        return c(key, value);
    }

    public final void a(T t, Object obj) {
        if (t.A()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    a(t.E(), obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            a(t.E(), obj);
        }
        if (obj instanceof e5) {
            this.f12382c = true;
        }
        this.f12380a.a((v6<T, Object>) t, (T) obj);
    }

    private final void b(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (!(value instanceof e5)) {
            if (key.A()) {
                Object a2 = a((i4<T>) key);
                if (a2 == null) {
                    a2 = new ArrayList();
                }
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    ((List) a2).add(a(it.next()));
                }
                this.f12380a.a((v6<T, Object>) key, (T) a2);
                return;
            }
            if (key.F() == c8.MESSAGE) {
                Object a3 = a((i4<T>) key);
                if (a3 == null) {
                    this.f12380a.a((v6<T, Object>) key, (T) a(value));
                    return;
                } else if (!(a3 instanceof h6)) {
                    this.f12380a.a((v6<T, Object>) key, (T) key.a(((d6) a3).a(), (d6) value).j());
                    return;
                } else {
                    key.a((h6) a3, (h6) value);
                    throw null;
                }
            }
            this.f12380a.a((v6<T, Object>) key, (T) a(value));
            return;
        }
        e5.c();
        throw null;
    }

    public static int c(k4<?> k4Var, Object obj) {
        z7 E = k4Var.E();
        int zzag = k4Var.zzag();
        if (k4Var.A()) {
            int i2 = 0;
            if (k4Var.C()) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    i2 += b(E, it.next());
                }
                return a4.e(zzag) + i2 + a4.m(i2);
            }
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                i2 += a(E, zzag, it2.next());
            }
            return i2;
        }
        return a(E, zzag, obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
    
        if ((r3 instanceof com.google.android.gms.internal.vision.e5) == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0025, code lost:
    
        if ((r3 instanceof com.google.android.gms.internal.vision.w4) == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002e, code lost:
    
        if ((r3 instanceof byte[]) == false) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.google.android.gms.internal.vision.z7 r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.vision.t4.a(r3)
            int[] r0 = com.google.android.gms.internal.vision.l4.f12417a
            com.google.android.gms.internal.vision.c8 r2 = r2.zzip()
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
                case 8: goto L1f;
                case 9: goto L16;
                default: goto L14;
            }
        L14:
            r0 = 0
            goto L42
        L16:
            boolean r2 = r3 instanceof com.google.android.gms.internal.vision.d6
            if (r2 != 0) goto L42
            boolean r2 = r3 instanceof com.google.android.gms.internal.vision.e5
            if (r2 == 0) goto L14
            goto L42
        L1f:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L42
            boolean r2 = r3 instanceof com.google.android.gms.internal.vision.w4
            if (r2 == 0) goto L14
            goto L42
        L28:
            boolean r2 = r3 instanceof com.google.android.gms.internal.vision.j3
            if (r2 != 0) goto L42
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L14
            goto L42
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
            if (r0 == 0) goto L45
            return
        L45:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            goto L4e
        L4d:
            throw r2
        L4e:
            goto L4d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.i4.a(com.google.android.gms.internal.vision.z7, java.lang.Object):void");
    }

    private static <T extends k4<T>> boolean a(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.F() == c8.MESSAGE) {
            if (key.A()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((d6) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof d6) {
                    if (!((d6) value).isInitialized()) {
                        return false;
                    }
                } else {
                    if (value instanceof e5) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    private static int b(z7 z7Var, Object obj) {
        switch (l4.f12418b[z7Var.ordinal()]) {
            case 1:
                return a4.b(((Double) obj).doubleValue());
            case 2:
                return a4.b(((Float) obj).floatValue());
            case 3:
                return a4.e(((Long) obj).longValue());
            case 4:
                return a4.f(((Long) obj).longValue());
            case 5:
                return a4.f(((Integer) obj).intValue());
            case 6:
                return a4.h(((Long) obj).longValue());
            case 7:
                return a4.i(((Integer) obj).intValue());
            case 8:
                return a4.b(((Boolean) obj).booleanValue());
            case 9:
                return a4.b((d6) obj);
            case 10:
                if (obj instanceof e5) {
                    return a4.a((e5) obj);
                }
                return a4.a((d6) obj);
            case 11:
                if (obj instanceof j3) {
                    return a4.a((j3) obj);
                }
                return a4.a((String) obj);
            case 12:
                if (obj instanceof j3) {
                    return a4.a((j3) obj);
                }
                return a4.b((byte[]) obj);
            case 13:
                return a4.g(((Integer) obj).intValue());
            case 14:
                return a4.j(((Integer) obj).intValue());
            case 15:
                return a4.i(((Long) obj).longValue());
            case 16:
                return a4.h(((Integer) obj).intValue());
            case 17:
                return a4.g(((Long) obj).longValue());
            case 18:
                if (obj instanceof w4) {
                    return a4.k(((w4) obj).zzag());
                }
                return a4.k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public final void a(i4<T> i4Var) {
        for (int i2 = 0; i2 < i4Var.f12380a.c(); i2++) {
            b(i4Var.f12380a.a(i2));
        }
        Iterator<Map.Entry<T, Object>> it = i4Var.f12380a.d().iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    private static Object a(Object obj) {
        if (obj instanceof h6) {
            return ((h6) obj).clone();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    static int a(z7 z7Var, int i2, Object obj) {
        int e2 = a4.e(i2);
        if (z7Var == z7.zzabv) {
            t4.a((d6) obj);
            e2 <<= 1;
        }
        return e2 + b(z7Var, obj);
    }
}
