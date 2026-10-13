package com.google.android.gms.internal.vision;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class p0<T> implements k0<T> {

    /* renamed from: e, reason: collision with root package name */
    private volatile k0<T> f12472e;

    /* renamed from: f, reason: collision with root package name */
    private volatile boolean f12473f;

    /* renamed from: g, reason: collision with root package name */
    @NullableDecl
    private T f12474g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0(k0<T> k0Var) {
        j0.a(k0Var);
        this.f12472e = k0Var;
    }

    @Override // com.google.android.gms.internal.vision.k0
    public final T get() {
        if (!this.f12473f) {
            synchronized (this) {
                if (!this.f12473f) {
                    T t = this.f12472e.get();
                    this.f12474g = t;
                    this.f12473f = true;
                    this.f12472e = null;
                    return t;
                }
            }
        }
        return this.f12474g;
    }

    public final String toString() {
        Object obj = this.f12472e;
        if (obj == null) {
            String valueOf = String.valueOf(this.f12474g);
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
