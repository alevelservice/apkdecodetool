package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public abstract class z7 {

    /* renamed from: a, reason: collision with root package name */
    protected volatile int f12237a = -1;

    protected int a() {
        return 0;
    }

    public abstract z7 a(o7 o7Var);

    public void a(r7 r7Var) {
    }

    public final int b() {
        int a2 = a();
        this.f12237a = a2;
        return a2;
    }

    @Override // 
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public z7 clone() {
        return (z7) super.clone();
    }

    public String toString() {
        return y7.a(this);
    }
}
