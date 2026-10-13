package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* loaded from: classes.dex */
final class y6 implements Iterator<String> {

    /* renamed from: e, reason: collision with root package name */
    private Iterator<String> f12220e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ w6 f12221f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y6(w6 w6Var) {
        s4 s4Var;
        this.f12221f = w6Var;
        s4Var = this.f12221f.f12178e;
        this.f12220e = s4Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12220e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f12220e.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
