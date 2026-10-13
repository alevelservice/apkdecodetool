package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class zc1 implements Cloneable {

    /* renamed from: e, reason: collision with root package name */
    private xc1<?, ?> f10728e;

    /* renamed from: f, reason: collision with root package name */
    private Object f10729f;

    /* renamed from: g, reason: collision with root package name */
    private List<Object> f10730g = new ArrayList();

    private final byte[] b() {
        byte[] bArr = new byte[a()];
        a(sc1.a(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final zc1 clone() {
        zc1 zc1Var = new zc1();
        try {
            zc1Var.f10728e = this.f10728e;
            if (this.f10730g == null) {
                zc1Var.f10730g = null;
            } else {
                zc1Var.f10730g.addAll(this.f10730g);
            }
            if (this.f10729f != null) {
                if (this.f10729f instanceof bd1) {
                    zc1Var.f10729f = (bd1) ((bd1) this.f10729f).clone();
                } else if (this.f10729f instanceof byte[]) {
                    zc1Var.f10729f = ((byte[]) this.f10729f).clone();
                } else {
                    int i2 = 0;
                    if (this.f10729f instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f10729f;
                        byte[][] bArr2 = new byte[bArr.length];
                        zc1Var.f10729f = bArr2;
                        while (i2 < bArr.length) {
                            bArr2[i2] = (byte[]) bArr[i2].clone();
                            i2++;
                        }
                    } else if (this.f10729f instanceof boolean[]) {
                        zc1Var.f10729f = ((boolean[]) this.f10729f).clone();
                    } else if (this.f10729f instanceof int[]) {
                        zc1Var.f10729f = ((int[]) this.f10729f).clone();
                    } else if (this.f10729f instanceof long[]) {
                        zc1Var.f10729f = ((long[]) this.f10729f).clone();
                    } else if (this.f10729f instanceof float[]) {
                        zc1Var.f10729f = ((float[]) this.f10729f).clone();
                    } else if (this.f10729f instanceof double[]) {
                        zc1Var.f10729f = ((double[]) this.f10729f).clone();
                    } else if (this.f10729f instanceof bd1[]) {
                        bd1[] bd1VarArr = (bd1[]) this.f10729f;
                        bd1[] bd1VarArr2 = new bd1[bd1VarArr.length];
                        zc1Var.f10729f = bd1VarArr2;
                        while (i2 < bd1VarArr.length) {
                            bd1VarArr2[i2] = (bd1) bd1VarArr[i2].clone();
                            i2++;
                        }
                    }
                }
            }
            return zc1Var;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        if (this.f10729f == null) {
            Iterator<Object> it = this.f10730g.iterator();
            if (!it.hasNext()) {
                return 0;
            }
            it.next();
            throw new NoSuchMethodError();
        }
        throw new NoSuchMethodError();
    }

    public final boolean equals(Object obj) {
        List<Object> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zc1)) {
            return false;
        }
        zc1 zc1Var = (zc1) obj;
        if (this.f10729f != null && zc1Var.f10729f != null) {
            xc1<?, ?> xc1Var = this.f10728e;
            if (xc1Var != zc1Var.f10728e) {
                return false;
            }
            if (!xc1Var.f10312a.isArray()) {
                return this.f10729f.equals(zc1Var.f10729f);
            }
            Object obj2 = this.f10729f;
            if (obj2 instanceof byte[]) {
                return Arrays.equals((byte[]) obj2, (byte[]) zc1Var.f10729f);
            }
            if (obj2 instanceof int[]) {
                return Arrays.equals((int[]) obj2, (int[]) zc1Var.f10729f);
            }
            if (obj2 instanceof long[]) {
                return Arrays.equals((long[]) obj2, (long[]) zc1Var.f10729f);
            }
            if (obj2 instanceof float[]) {
                return Arrays.equals((float[]) obj2, (float[]) zc1Var.f10729f);
            }
            if (obj2 instanceof double[]) {
                return Arrays.equals((double[]) obj2, (double[]) zc1Var.f10729f);
            }
            if (obj2 instanceof boolean[]) {
                return Arrays.equals((boolean[]) obj2, (boolean[]) zc1Var.f10729f);
            }
            return Arrays.deepEquals((Object[]) obj2, (Object[]) zc1Var.f10729f);
        }
        List<Object> list2 = this.f10730g;
        if (list2 != null && (list = zc1Var.f10730g) != null) {
            return list2.equals(list);
        }
        try {
            return Arrays.equals(b(), zc1Var.b());
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
    public final void a(sc1 sc1Var) {
        if (this.f10729f == null) {
            Iterator<Object> it = this.f10730g.iterator();
            if (it.hasNext()) {
                it.next();
                throw new NoSuchMethodError();
            }
            return;
        }
        throw new NoSuchMethodError();
    }
}
