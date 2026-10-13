package a.i.m;

import androidx.annotation.NonNull;

/* compiled from: Pools.java */
/* loaded from: classes.dex */
public class h<T> extends g<T> {

    /* renamed from: c, reason: collision with root package name */
    private final Object f367c;

    public h(int i2) {
        super(i2);
        this.f367c = new Object();
    }

    @Override // a.i.m.g, a.i.m.f
    public T a() {
        T t;
        synchronized (this.f367c) {
            t = (T) super.a();
        }
        return t;
    }

    @Override // a.i.m.g, a.i.m.f
    public boolean a(@NonNull T t) {
        boolean a2;
        synchronized (this.f367c) {
            a2 = super.a(t);
        }
        return a2;
    }
}
