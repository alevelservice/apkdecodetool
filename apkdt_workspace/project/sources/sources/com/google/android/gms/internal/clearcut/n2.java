package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class n2<T> implements z2<T> {

    /* renamed from: a, reason: collision with root package name */
    private final i2 f11499a;

    /* renamed from: b, reason: collision with root package name */
    private final r3<?, ?> f11500b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f11501c;

    /* renamed from: d, reason: collision with root package name */
    private final q0<?> f11502d;

    private n2(r3<?, ?> r3Var, q0<?> q0Var, i2 i2Var) {
        this.f11500b = r3Var;
        this.f11501c = q0Var.a(i2Var);
        this.f11502d = q0Var;
        this.f11499a = i2Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> n2<T> a(r3<?, ?> r3Var, q0<?> q0Var, i2 i2Var) {
        return new n2<>(r3Var, q0Var, i2Var);
    }

    @Override // com.google.android.gms.internal.clearcut.z2
    public final T a() {
        return (T) this.f11499a.d().q();
    }

    @Override // com.google.android.gms.internal.clearcut.z2
    public final void a(T t, m4 m4Var) {
        Iterator<Map.Entry<?, Object>> e2 = this.f11502d.a(t).e();
        while (e2.hasNext()) {
            Map.Entry<?, Object> next = e2.next();
            x0 x0Var = (x0) next.getKey();
            if (x0Var.B() != l4.MESSAGE || x0Var.D() || x0Var.z()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            m4Var.a(x0Var.zzc(), next instanceof o1 ? ((o1) next).a().b() : next.getValue());
        }
        r3<?, ?> r3Var = this.f11500b;
        r3Var.b((r3<?, ?>) r3Var.c(t), m4Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0061 A[EDGE_INSN: B:24:0x0061->B:25:0x0061 BREAK  A[LOOP:1: B:10:0x0032->B:18:0x0032], SYNTHETIC] */
    @Override // com.google.android.gms.internal.clearcut.z2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.clearcut.v r12) {
        /*
            r7 = this;
            com.google.android.gms.internal.clearcut.d1 r8 = (com.google.android.gms.internal.clearcut.d1) r8
            com.google.android.gms.internal.clearcut.s3 r0 = r8.zzjp
            com.google.android.gms.internal.clearcut.s3 r1 = com.google.android.gms.internal.clearcut.s3.d()
            if (r0 != r1) goto L10
            com.google.android.gms.internal.clearcut.s3 r0 = com.google.android.gms.internal.clearcut.s3.e()
            r8.zzjp = r0
        L10:
            r8 = r0
        L11:
            if (r10 >= r11) goto L6b
            int r2 = com.google.android.gms.internal.clearcut.u.a(r9, r10, r12)
            int r0 = r12.f11576a
            r10 = 11
            r1 = 2
            if (r0 == r10) goto L30
            r10 = r0 & 7
            if (r10 != r1) goto L2b
            r1 = r9
            r3 = r11
            r4 = r8
            r5 = r12
            int r10 = com.google.android.gms.internal.clearcut.u.a(r0, r1, r2, r3, r4, r5)
            goto L11
        L2b:
            int r10 = com.google.android.gms.internal.clearcut.u.a(r0, r9, r2, r11, r12)
            goto L11
        L30:
            r10 = 0
            r0 = 0
        L32:
            if (r2 >= r11) goto L61
            int r2 = com.google.android.gms.internal.clearcut.u.a(r9, r2, r12)
            int r3 = r12.f11576a
            int r4 = r3 >>> 3
            r5 = r3 & 7
            if (r4 == r1) goto L4f
            r6 = 3
            if (r4 == r6) goto L44
            goto L58
        L44:
            if (r5 != r1) goto L58
            int r2 = com.google.android.gms.internal.clearcut.u.e(r9, r2, r12)
            java.lang.Object r0 = r12.f11578c
            com.google.android.gms.internal.clearcut.y r0 = (com.google.android.gms.internal.clearcut.y) r0
            goto L32
        L4f:
            if (r5 != 0) goto L58
            int r2 = com.google.android.gms.internal.clearcut.u.a(r9, r2, r12)
            int r10 = r12.f11576a
            goto L32
        L58:
            r4 = 12
            if (r3 == r4) goto L61
            int r2 = com.google.android.gms.internal.clearcut.u.a(r3, r9, r2, r11, r12)
            goto L32
        L61:
            if (r0 == 0) goto L69
            int r10 = r10 << 3
            r10 = r10 | r1
            r8.a(r10, r0)
        L69:
            r10 = r2
            goto L11
        L6b:
            if (r10 != r11) goto L6e
            return
        L6e:
            com.google.android.gms.internal.clearcut.j1 r8 = com.google.android.gms.internal.clearcut.j1.zzbo()
            goto L74
        L73:
            throw r8
        L74:
            goto L73
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.n2.a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.clearcut.v):void");
    }

    @Override // com.google.android.gms.internal.clearcut.z2
    public final boolean a(T t, T t2) {
        if (!this.f11500b.c(t).equals(this.f11500b.c(t2))) {
            return false;
        }
        if (this.f11501c) {
            return this.f11502d.a(t).equals(this.f11502d.a(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.z2
    public final void b(T t, T t2) {
        b3.a(this.f11500b, t, t2);
        if (this.f11501c) {
            b3.a(this.f11502d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.z2
    public final int c(T t) {
        int hashCode = this.f11500b.c(t).hashCode();
        return this.f11501c ? (hashCode * 53) + this.f11502d.a(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.clearcut.z2
    public final int d(T t) {
        r3<?, ?> r3Var = this.f11500b;
        int d2 = r3Var.d(r3Var.c(t)) + 0;
        return this.f11501c ? d2 + this.f11502d.a(t).g() : d2;
    }

    @Override // com.google.android.gms.internal.clearcut.z2
    public final boolean e(T t) {
        return this.f11502d.a(t).d();
    }

    @Override // com.google.android.gms.internal.clearcut.z2
    public final void f(T t) {
        this.f11500b.a(t);
        this.f11502d.c(t);
    }
}
