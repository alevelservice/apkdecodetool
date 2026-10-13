package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
final class g2<T> implements f2<T> {

    /* renamed from: e, reason: collision with root package name */
    private volatile f2<T> f11865e;

    /* renamed from: f, reason: collision with root package name */
    private volatile boolean f11866f;

    /* renamed from: g, reason: collision with root package name */
    @NullableDecl
    private T f11867g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g2(f2<T> f2Var) {
        c2.a(f2Var);
        this.f11865e = f2Var;
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final T get() {
        if (!this.f11866f) {
            synchronized (this) {
                if (!this.f11866f) {
                    T t = this.f11865e.get();
                    this.f11867g = t;
                    this.f11866f = true;
                    this.f11865e = null;
                    return t;
                }
            }
        }
        return this.f11867g;
    }

    public final String toString() {
        Object obj = this.f11865e;
        if (obj == null) {
            String valueOf = String.valueOf(this.f11867g);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
