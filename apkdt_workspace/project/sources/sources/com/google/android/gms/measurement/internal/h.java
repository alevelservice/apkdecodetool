package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h implements Iterator<String> {

    /* renamed from: e, reason: collision with root package name */
    private Iterator<String> f12957e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzah f12958f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(zzah zzahVar) {
        Bundle bundle;
        this.f12958f = zzahVar;
        bundle = this.f12958f.f13376e;
        this.f12957e = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12957e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f12957e.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
