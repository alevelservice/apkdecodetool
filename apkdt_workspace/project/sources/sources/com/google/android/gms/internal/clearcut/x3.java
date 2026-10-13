package com.google.android.gms.internal.clearcut;

import java.util.Iterator;

/* loaded from: classes.dex */
final class x3 implements Iterator<String> {

    /* renamed from: e, reason: collision with root package name */
    private Iterator<String> f11611e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ v3 f11612f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x3(v3 v3Var) {
        s1 s1Var;
        this.f11612f = v3Var;
        s1Var = this.f11612f.f11584e;
        this.f11611e = s1Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11611e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f11611e.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
