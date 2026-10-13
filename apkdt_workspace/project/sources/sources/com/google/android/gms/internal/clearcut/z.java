package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class z implements Iterator {

    /* renamed from: e, reason: collision with root package name */
    private int f11654e = 0;

    /* renamed from: f, reason: collision with root package name */
    private final int f11655f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ y f11656g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(y yVar) {
        this.f11656g = yVar;
        this.f11655f = this.f11656g.size();
    }

    private final byte nextByte() {
        try {
            y yVar = this.f11656g;
            int i2 = this.f11654e;
            this.f11654e = i2 + 1;
            return yVar.zzj(i2);
        } catch (IndexOutOfBoundsException e2) {
            throw new NoSuchElementException(e2.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11654e < this.f11655f;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return Byte.valueOf(nextByte());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
