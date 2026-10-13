package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
final class u7 implements Cloneable {

    /* renamed from: e, reason: collision with root package name */
    private s7<?, ?> f12132e;

    /* renamed from: f, reason: collision with root package name */
    private Object f12133f;

    /* renamed from: g, reason: collision with root package name */
    private List<b8> f12134g = new ArrayList();

    private final byte[] b() {
        byte[] bArr = new byte[a()];
        a(r7.b(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final u7 clone() {
        u7 u7Var = new u7();
        try {
            u7Var.f12132e = this.f12132e;
            if (this.f12134g == null) {
                u7Var.f12134g = null;
            } else {
                u7Var.f12134g.addAll(this.f12134g);
            }
            if (this.f12133f != null) {
                if (this.f12133f instanceof z7) {
                    u7Var.f12133f = (z7) ((z7) this.f12133f).clone();
                } else if (this.f12133f instanceof byte[]) {
                    u7Var.f12133f = ((byte[]) this.f12133f).clone();
                } else {
                    int i2 = 0;
                    if (this.f12133f instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f12133f;
                        byte[][] bArr2 = new byte[bArr.length];
                        u7Var.f12133f = bArr2;
                        while (i2 < bArr.length) {
                            bArr2[i2] = (byte[]) bArr[i2].clone();
                            i2++;
                        }
                    } else if (this.f12133f instanceof boolean[]) {
                        u7Var.f12133f = ((boolean[]) this.f12133f).clone();
                    } else if (this.f12133f instanceof int[]) {
                        u7Var.f12133f = ((int[]) this.f12133f).clone();
                    } else if (this.f12133f instanceof long[]) {
                        u7Var.f12133f = ((long[]) this.f12133f).clone();
                    } else if (this.f12133f instanceof float[]) {
                        u7Var.f12133f = ((float[]) this.f12133f).clone();
                    } else if (this.f12133f instanceof double[]) {
                        u7Var.f12133f = ((double[]) this.f12133f).clone();
                    } else if (this.f12133f instanceof z7[]) {
                        z7[] z7VarArr = (z7[]) this.f12133f;
                        z7[] z7VarArr2 = new z7[z7VarArr.length];
                        u7Var.f12133f = z7VarArr2;
                        while (i2 < z7VarArr.length) {
                            z7VarArr2[i2] = (z7) z7VarArr[i2].clone();
                            i2++;
                        }
                    }
                }
            }
            return u7Var;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b8 b8Var) {
        List<b8> list = this.f12134g;
        if (list != null) {
            list.add(b8Var);
            return;
        }
        Object obj = this.f12133f;
        if (obj instanceof z7) {
            byte[] bArr = b8Var.f11778b;
            o7 a2 = o7.a(bArr, 0, bArr.length);
            int e2 = a2.e();
            if (e2 == bArr.length - r7.c(e2)) {
                z7 a3 = ((z7) this.f12133f).a(a2);
                this.f12132e = this.f12132e;
                this.f12133f = a3;
                this.f12134g = null;
                return;
            }
            throw w7.zzxd();
        }
        if (!(obj instanceof z7[])) {
            if (!(obj instanceof k5)) {
                if (obj instanceof k5[]) {
                    Collections.singletonList(b8Var);
                    throw new NoSuchMethodError();
                }
                Collections.singletonList(b8Var);
                throw new NoSuchMethodError();
            }
            Collections.singletonList(b8Var);
            throw new NoSuchMethodError();
        }
        Collections.singletonList(b8Var);
        throw new NoSuchMethodError();
    }

    public final boolean equals(Object obj) {
        List<b8> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof u7)) {
            return false;
        }
        u7 u7Var = (u7) obj;
        if (this.f12133f != null && u7Var.f12133f != null) {
            s7<?, ?> s7Var = this.f12132e;
            if (s7Var != u7Var.f12132e) {
                return false;
            }
            if (!s7Var.f12089a.isArray()) {
                return this.f12133f.equals(u7Var.f12133f);
            }
            Object obj2 = this.f12133f;
            if (obj2 instanceof byte[]) {
                return Arrays.equals((byte[]) obj2, (byte[]) u7Var.f12133f);
            }
            if (obj2 instanceof int[]) {
                return Arrays.equals((int[]) obj2, (int[]) u7Var.f12133f);
            }
            if (obj2 instanceof long[]) {
                return Arrays.equals((long[]) obj2, (long[]) u7Var.f12133f);
            }
            if (obj2 instanceof float[]) {
                return Arrays.equals((float[]) obj2, (float[]) u7Var.f12133f);
            }
            if (obj2 instanceof double[]) {
                return Arrays.equals((double[]) obj2, (double[]) u7Var.f12133f);
            }
            if (obj2 instanceof boolean[]) {
                return Arrays.equals((boolean[]) obj2, (boolean[]) u7Var.f12133f);
            }
            return Arrays.deepEquals((Object[]) obj2, (Object[]) u7Var.f12133f);
        }
        List<b8> list2 = this.f12134g;
        if (list2 != null && (list = u7Var.f12134g) != null) {
            return list2.equals(list);
        }
        try {
            return Arrays.equals(b(), u7Var.b());
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(b()) + 527;
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        if (this.f12133f == null) {
            int i2 = 0;
            for (b8 b8Var : this.f12134g) {
                i2 += r7.d(b8Var.f11777a) + 0 + b8Var.f11778b.length;
            }
            return i2;
        }
        throw new NoSuchMethodError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(r7 r7Var) {
        if (this.f12133f == null) {
            for (b8 b8Var : this.f12134g) {
                r7Var.a(b8Var.f11777a);
                r7Var.a(b8Var.f11778b);
            }
            return;
        }
        throw new NoSuchMethodError();
    }
}
