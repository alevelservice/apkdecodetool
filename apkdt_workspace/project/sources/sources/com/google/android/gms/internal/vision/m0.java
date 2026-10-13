package com.google.android.gms.internal.vision;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class m0<T> implements k0<T>, Serializable {

    /* renamed from: e, reason: collision with root package name */
    private volatile transient boolean f12427e;

    /* renamed from: f, reason: collision with root package name */
    @NullableDecl
    private transient T f12428f;
    private final k0<T> zzli;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(k0<T> k0Var) {
        j0.a(k0Var);
        this.zzli = k0Var;
    }

    @Override // com.google.android.gms.internal.vision.k0
    public final T get() {
        if (!this.f12427e) {
            synchronized (this) {
                if (!this.f12427e) {
                    T t = this.zzli.get();
                    this.f12428f = t;
                    this.f12427e = true;
                    return t;
                }
            }
        }
        return this.f12428f;
    }

    public final String toString() {
        Object obj;
        if (this.f12427e) {
            String valueOf = String.valueOf(this.f12428f);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        } else {
            obj = this.zzli;
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
