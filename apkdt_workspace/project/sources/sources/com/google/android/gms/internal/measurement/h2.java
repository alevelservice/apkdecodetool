package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
final class h2<T> implements f2<T>, Serializable {

    /* renamed from: e, reason: collision with root package name */
    private volatile transient boolean f11885e;

    /* renamed from: f, reason: collision with root package name */
    @NullableDecl
    private transient T f11886f;
    private final f2<T> zzabs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h2(f2<T> f2Var) {
        c2.a(f2Var);
        this.zzabs = f2Var;
    }

    @Override // com.google.android.gms.internal.measurement.f2
    public final T get() {
        if (!this.f11885e) {
            synchronized (this) {
                if (!this.f11885e) {
                    T t = this.zzabs.get();
                    this.f11886f = t;
                    this.f11885e = true;
                    return t;
                }
            }
        }
        return this.f11886f;
    }

    public final String toString() {
        Object obj;
        if (this.f11885e) {
            String valueOf = String.valueOf(this.f11886f);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        } else {
            obj = this.zzabs;
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
