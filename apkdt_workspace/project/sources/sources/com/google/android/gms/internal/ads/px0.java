package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class px0<E> extends hx0<E> {

    /* renamed from: d, reason: collision with root package name */
    @NullableDecl
    private Object[] f8808d;

    /* renamed from: e, reason: collision with root package name */
    private int f8809e;

    public px0() {
        super(4);
    }

    public final mx0<E> a() {
        mx0<E> a2;
        boolean a3;
        int i2 = this.f7199b;
        if (i2 == 0) {
            return zx0.zzgpg;
        }
        if (i2 != 1) {
            if (this.f8808d == null || mx0.zzds(i2) != this.f8808d.length) {
                a2 = mx0.a(this.f7199b, this.f7198a);
                this.f7199b = a2.size();
            } else {
                a3 = mx0.a(this.f7199b, this.f7198a.length);
                Object[] copyOf = a3 ? Arrays.copyOf(this.f7198a, this.f7199b) : this.f7198a;
                a2 = new zx0<>(copyOf, this.f8809e, this.f8808d, r5.length - 1, this.f7199b);
            }
            this.f7200c = true;
            this.f8808d = null;
            return a2;
        }
        return mx0.zzae(this.f7198a[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public px0(int i2) {
        super(i2);
        this.f8808d = new Object[mx0.zzds(i2)];
    }

    @Override // com.google.android.gms.internal.ads.hx0, com.google.android.gms.internal.ads.gx0
    public final /* synthetic */ gx0 a(Iterable iterable) {
        uw0.a(iterable);
        if (this.f8808d != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
        } else {
            super.a(iterable);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.gx0
    public final /* synthetic */ gx0 a(Object obj) {
        uw0.a(obj);
        if (this.f8808d != null) {
            int zzds = mx0.zzds(this.f7199b);
            Object[] objArr = this.f8808d;
            if (zzds <= objArr.length) {
                int length = objArr.length - 1;
                int hashCode = obj.hashCode();
                int a2 = fx0.a(hashCode);
                while (true) {
                    int i2 = a2 & length;
                    Object[] objArr2 = this.f8808d;
                    Object obj2 = objArr2[i2];
                    if (obj2 == null) {
                        objArr2[i2] = obj;
                        this.f8809e += hashCode;
                        super.b(obj);
                        break;
                    }
                    if (obj2.equals(obj)) {
                        break;
                    }
                    a2 = i2 + 1;
                }
                return this;
            }
        }
        this.f8808d = null;
        super.b(obj);
        return this;
    }
}
