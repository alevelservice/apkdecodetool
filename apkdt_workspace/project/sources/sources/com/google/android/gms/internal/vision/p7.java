package com.google.android.gms.internal.vision;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class p7 implements Iterator<String> {

    /* renamed from: e, reason: collision with root package name */
    private Iterator<String> f12483e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ n7 f12484f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p7(n7 n7Var) {
        k5 k5Var;
        this.f12484f = n7Var;
        k5Var = this.f12484f.f12454e;
        this.f12483e = k5Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12483e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f12483e.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
