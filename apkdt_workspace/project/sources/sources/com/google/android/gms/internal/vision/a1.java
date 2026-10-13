package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class a1<E> extends t0<E> implements Set<E> {

    /* renamed from: f, reason: collision with root package name */
    @NullableDecl
    private transient w0<E> f12281f;

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        return f1.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return f1.a(this);
    }

    @Override // com.google.android.gms.internal.vision.t0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.vision.t0
    public w0<E> zzcc() {
        w0<E> w0Var = this.f12281f;
        if (w0Var != null) {
            return w0Var;
        }
        w0<E> zzch = zzch();
        this.f12281f = zzch;
        return zzch;
    }

    w0<E> zzch() {
        return w0.zza(toArray());
    }
}
