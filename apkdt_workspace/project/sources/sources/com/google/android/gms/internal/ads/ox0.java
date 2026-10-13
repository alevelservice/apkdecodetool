package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ox0<T> extends ay0<T> {

    /* renamed from: e, reason: collision with root package name */
    private boolean f8602e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ Object f8603f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ox0(Object obj) {
        this.f8603f = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f8602e;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!this.f8602e) {
            this.f8602e = true;
            return (T) this.f8603f;
        }
        throw new NoSuchElementException();
    }
}
