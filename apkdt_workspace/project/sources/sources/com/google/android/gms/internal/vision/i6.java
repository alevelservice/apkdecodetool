package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class i6<T> implements r6<T> {

    /* renamed from: a, reason: collision with root package name */
    private final d6 f12385a;

    /* renamed from: b, reason: collision with root package name */
    private final i7<?, ?> f12386b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f12387c;

    /* renamed from: d, reason: collision with root package name */
    private final f4<?> f12388d;

    private i6(i7<?, ?> i7Var, f4<?> f4Var, d6 d6Var) {
        this.f12386b = i7Var;
        this.f12387c = f4Var.a(d6Var);
        this.f12388d = f4Var;
        this.f12385a = d6Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> i6<T> a(i7<?, ?> i7Var, f4<?> f4Var, d6 d6Var) {
        return new i6<>(i7Var, f4Var, d6Var);
    }

    @Override // com.google.android.gms.internal.vision.r6
    public final void b(T t, T t2) {
        s6.a(this.f12386b, t, t2);
        if (this.f12387c) {
            s6.a(this.f12388d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.vision.r6
    public final int c(T t) {
        int hashCode = this.f12386b.c(t).hashCode();
        return this.f12387c ? (hashCode * 53) + this.f12388d.a(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.vision.r6
    public final void e(T t) {
        this.f12386b.a(t);
        this.f12388d.c(t);
    }

    @Override // com.google.android.gms.internal.vision.r6
    public final T a() {
        return (T) this.f12385a.b().u();
    }

    @Override // com.google.android.gms.internal.vision.r6
    public final boolean a(T t, T t2) {
        if (!this.f12386b.c(t).equals(this.f12386b.c(t2))) {
            return false;
        }
        if (this.f12387c) {
            return this.f12388d.a(t).equals(this.f12388d.a(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.r6
    public final boolean b(T t) {
        return this.f12388d.a(t).c();
    }

    @Override // com.google.android.gms.internal.vision.r6
    public final void a(T t, e8 e8Var) {
        Iterator<Map.Entry<?, Object>> d2 = this.f12388d.a(t).d();
        while (d2.hasNext()) {
            Map.Entry<?, Object> next = d2.next();
            k4 k4Var = (k4) next.getKey();
            if (k4Var.F() == c8.MESSAGE && !k4Var.A() && !k4Var.C()) {
                if (next instanceof g5) {
                    e8Var.a(k4Var.zzag(), (Object) ((g5) next).a().a());
                } else {
                    e8Var.a(k4Var.zzag(), next.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        i7<?, ?> i7Var = this.f12386b;
        i7Var.b((i7<?, ?>) i7Var.c(t), e8Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00be A[EDGE_INSN: B:24:0x00be->B:25:0x00be BREAK  A[LOOP:1: B:10:0x0067->B:18:0x0067], SYNTHETIC] */
    @Override // com.google.android.gms.internal.vision.r6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r11, byte[] r12, int r13, int r14, com.google.android.gms.internal.vision.g3 r15) {
        /*
            r10 = this;
            r0 = r11
            com.google.android.gms.internal.vision.s4 r0 = (com.google.android.gms.internal.vision.s4) r0
            com.google.android.gms.internal.vision.l7 r1 = r0.zzwd
            com.google.android.gms.internal.vision.l7 r2 = com.google.android.gms.internal.vision.l7.d()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.vision.l7 r1 = com.google.android.gms.internal.vision.l7.e()
            r0.zzwd = r1
        L11:
            com.google.android.gms.internal.vision.s4$d r11 = (com.google.android.gms.internal.vision.s4.d) r11
            com.google.android.gms.internal.vision.i4 r11 = r11.m()
            r0 = 0
            r2 = r0
        L19:
            if (r13 >= r14) goto Lc9
            int r4 = com.google.android.gms.internal.vision.e3.a(r12, r13, r15)
            int r13 = r15.f12351a
            r3 = 11
            r5 = 2
            if (r13 == r3) goto L65
            r3 = r13 & 7
            if (r3 != r5) goto L60
            com.google.android.gms.internal.vision.f4<?> r2 = r10.f12388d
            com.google.android.gms.internal.vision.d4 r3 = r15.f12354d
            com.google.android.gms.internal.vision.d6 r5 = r10.f12385a
            int r6 = r13 >>> 3
            java.lang.Object r2 = r2.a(r3, r5, r6)
            r8 = r2
            com.google.android.gms.internal.vision.s4$f r8 = (com.google.android.gms.internal.vision.s4.f) r8
            if (r8 == 0) goto L55
            com.google.android.gms.internal.vision.n6 r13 = com.google.android.gms.internal.vision.n6.a()
            com.google.android.gms.internal.vision.d6 r2 = r8.f12523a
            java.lang.Class r2 = r2.getClass()
            com.google.android.gms.internal.vision.r6 r13 = r13.a(r2)
            int r13 = com.google.android.gms.internal.vision.e3.a(r13, r12, r4, r14, r15)
            com.google.android.gms.internal.vision.s4$c r2 = r8.f12524b
            java.lang.Object r3 = r15.f12353c
            r11.a(r2, r3)
            goto L5e
        L55:
            r2 = r13
            r3 = r12
            r5 = r14
            r6 = r1
            r7 = r15
            int r13 = com.google.android.gms.internal.vision.e3.a(r2, r3, r4, r5, r6, r7)
        L5e:
            r2 = r8
            goto L19
        L60:
            int r13 = com.google.android.gms.internal.vision.e3.a(r13, r12, r4, r14, r15)
            goto L19
        L65:
            r13 = 0
            r3 = r0
        L67:
            if (r4 >= r14) goto Lbe
            int r4 = com.google.android.gms.internal.vision.e3.a(r12, r4, r15)
            int r6 = r15.f12351a
            int r7 = r6 >>> 3
            r8 = r6 & 7
            if (r7 == r5) goto La0
            r9 = 3
            if (r7 == r9) goto L79
            goto Lb5
        L79:
            if (r2 == 0) goto L95
            com.google.android.gms.internal.vision.n6 r6 = com.google.android.gms.internal.vision.n6.a()
            com.google.android.gms.internal.vision.d6 r7 = r2.f12523a
            java.lang.Class r7 = r7.getClass()
            com.google.android.gms.internal.vision.r6 r6 = r6.a(r7)
            int r4 = com.google.android.gms.internal.vision.e3.a(r6, r12, r4, r14, r15)
            com.google.android.gms.internal.vision.s4$c r6 = r2.f12524b
            java.lang.Object r7 = r15.f12353c
            r11.a(r6, r7)
            goto L67
        L95:
            if (r8 != r5) goto Lb5
            int r4 = com.google.android.gms.internal.vision.e3.e(r12, r4, r15)
            java.lang.Object r3 = r15.f12353c
            com.google.android.gms.internal.vision.j3 r3 = (com.google.android.gms.internal.vision.j3) r3
            goto L67
        La0:
            if (r8 != 0) goto Lb5
            int r4 = com.google.android.gms.internal.vision.e3.a(r12, r4, r15)
            int r13 = r15.f12351a
            com.google.android.gms.internal.vision.f4<?> r2 = r10.f12388d
            com.google.android.gms.internal.vision.d4 r6 = r15.f12354d
            com.google.android.gms.internal.vision.d6 r7 = r10.f12385a
            java.lang.Object r2 = r2.a(r6, r7, r13)
            com.google.android.gms.internal.vision.s4$f r2 = (com.google.android.gms.internal.vision.s4.f) r2
            goto L67
        Lb5:
            r7 = 12
            if (r6 == r7) goto Lbe
            int r4 = com.google.android.gms.internal.vision.e3.a(r6, r12, r4, r14, r15)
            goto L67
        Lbe:
            if (r3 == 0) goto Lc6
            int r13 = r13 << 3
            r13 = r13 | r5
            r1.a(r13, r3)
        Lc6:
            r13 = r4
            goto L19
        Lc9:
            if (r13 != r14) goto Lcc
            return
        Lcc:
            com.google.android.gms.internal.vision.d5 r11 = com.google.android.gms.internal.vision.d5.zzgs()
            goto Ld2
        Ld1:
            throw r11
        Ld2:
            goto Ld1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.i6.a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.vision.g3):void");
    }

    @Override // com.google.android.gms.internal.vision.r6
    public final int a(T t) {
        i7<?, ?> i7Var = this.f12386b;
        int d2 = i7Var.d(i7Var.c(t)) + 0;
        return this.f12387c ? d2 + this.f12388d.a(t).f() : d2;
    }
}
