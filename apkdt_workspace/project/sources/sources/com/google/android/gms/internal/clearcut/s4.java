package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class s4 implements Cloneable {

    /* renamed from: e, reason: collision with root package name */
    private q4<?, ?> f11558e;

    /* renamed from: f, reason: collision with root package name */
    private Object f11559f;

    /* renamed from: g, reason: collision with root package name */
    private List<Object> f11560g = new ArrayList();

    private final byte[] b() {
        byte[] bArr = new byte[a()];
        a(n4.a(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final s4 clone() {
        Object clone;
        s4 s4Var = new s4();
        try {
            s4Var.f11558e = this.f11558e;
            if (this.f11560g == null) {
                s4Var.f11560g = null;
            } else {
                s4Var.f11560g.addAll(this.f11560g);
            }
            if (this.f11559f != null) {
                if (this.f11559f instanceof u4) {
                    clone = (u4) ((u4) this.f11559f).clone();
                } else if (this.f11559f instanceof byte[]) {
                    clone = ((byte[]) this.f11559f).clone();
                } else {
                    int i2 = 0;
                    if (this.f11559f instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f11559f;
                        byte[][] bArr2 = new byte[bArr.length];
                        s4Var.f11559f = bArr2;
                        while (i2 < bArr.length) {
                            bArr2[i2] = (byte[]) bArr[i2].clone();
                            i2++;
                        }
                    } else if (this.f11559f instanceof boolean[]) {
                        clone = ((boolean[]) this.f11559f).clone();
                    } else if (this.f11559f instanceof int[]) {
                        clone = ((int[]) this.f11559f).clone();
                    } else if (this.f11559f instanceof long[]) {
                        clone = ((long[]) this.f11559f).clone();
                    } else if (this.f11559f instanceof float[]) {
                        clone = ((float[]) this.f11559f).clone();
                    } else if (this.f11559f instanceof double[]) {
                        clone = ((double[]) this.f11559f).clone();
                    } else if (this.f11559f instanceof u4[]) {
                        u4[] u4VarArr = (u4[]) this.f11559f;
                        u4[] u4VarArr2 = new u4[u4VarArr.length];
                        s4Var.f11559f = u4VarArr2;
                        while (i2 < u4VarArr.length) {
                            u4VarArr2[i2] = (u4) u4VarArr[i2].clone();
                            i2++;
                        }
                    }
                }
                s4Var.f11559f = clone;
            }
            return s4Var;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        if (this.f11559f != null) {
            throw new NoSuchMethodError();
        }
        Iterator<Object> it = this.f11560g.iterator();
        if (!it.hasNext()) {
            return 0;
        }
        it.next();
        throw new NoSuchMethodError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(n4 n4Var) {
        if (this.f11559f != null) {
            throw new NoSuchMethodError();
        }
        Iterator<Object> it = this.f11560g.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NoSuchMethodError();
        }
    }

    public final boolean equals(Object obj) {
        List<Object> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s4)) {
            return false;
        }
        s4 s4Var = (s4) obj;
        if (this.f11559f == null || s4Var.f11559f == null) {
            List<Object> list2 = this.f11560g;
            if (list2 != null && (list = s4Var.f11560g) != null) {
                return list2.equals(list);
            }
            try {
                return Arrays.equals(b(), s4Var.b());
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }
        q4<?, ?> q4Var = this.f11558e;
        if (q4Var != s4Var.f11558e) {
            return false;
        }
        if (!q4Var.f11530a.isArray()) {
            return this.f11559f.equals(s4Var.f11559f);
        }
        Object obj2 = this.f11559f;
        return obj2 instanceof byte[] ? Arrays.equals((byte[]) obj2, (byte[]) s4Var.f11559f) : obj2 instanceof int[] ? Arrays.equals((int[]) obj2, (int[]) s4Var.f11559f) : obj2 instanceof long[] ? Arrays.equals((long[]) obj2, (long[]) s4Var.f11559f) : obj2 instanceof float[] ? Arrays.equals((float[]) obj2, (float[]) s4Var.f11559f) : obj2 instanceof double[] ? Arrays.equals((double[]) obj2, (double[]) s4Var.f11559f) : obj2 instanceof boolean[] ? Arrays.equals((boolean[]) obj2, (boolean[]) s4Var.f11559f) : Arrays.deepEquals((Object[]) obj2, (Object[]) s4Var.f11559f);
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(b()) + 527;
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }
}
