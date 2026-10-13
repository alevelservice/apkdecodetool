package a.i.m;

import androidx.annotation.NonNull;

/* compiled from: Pools.java */
/* loaded from: classes.dex */
public class g<T> implements f<T> {

    /* renamed from: a, reason: collision with root package name */
    private final Object[] f365a;

    /* renamed from: b, reason: collision with root package name */
    private int f366b;

    public g(int i2) {
        if (i2 > 0) {
            this.f365a = new Object[i2];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    private boolean b(@NonNull T t) {
        for (int i2 = 0; i2 < this.f366b; i2++) {
            if (this.f365a[i2] == t) {
                return true;
            }
        }
        return false;
    }

    @Override // a.i.m.f
    public T a() {
        int i2 = this.f366b;
        if (i2 <= 0) {
            return null;
        }
        int i3 = i2 - 1;
        Object[] objArr = this.f365a;
        T t = (T) objArr[i3];
        objArr[i3] = null;
        this.f366b = i2 - 1;
        return t;
    }

    @Override // a.i.m.f
    public boolean a(@NonNull T t) {
        if (!b(t)) {
            int i2 = this.f366b;
            Object[] objArr = this.f365a;
            if (i2 >= objArr.length) {
                return false;
            }
            objArr[i2] = t;
            this.f366b = i2 + 1;
            return true;
        }
        throw new IllegalStateException("Already in the pool!");
    }
}
