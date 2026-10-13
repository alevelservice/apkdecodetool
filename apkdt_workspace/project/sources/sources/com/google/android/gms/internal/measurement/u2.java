package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
abstract class u2 implements y2 {
    @Override // java.util.Iterator
    public /* synthetic */ Byte next() {
        return Byte.valueOf(nextByte());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
