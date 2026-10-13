package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class cc1 implements Iterator<String> {

    /* renamed from: e, reason: collision with root package name */
    private Iterator<String> f5976e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ ac1 f5977f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc1(ac1 ac1Var) {
        v91 v91Var;
        this.f5977f = ac1Var;
        v91Var = this.f5977f.f5559e;
        this.f5976e = v91Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5976e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f5976e.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
