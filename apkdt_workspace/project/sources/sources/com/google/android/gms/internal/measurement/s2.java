package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s2 extends u2 {

    /* renamed from: e, reason: collision with root package name */
    private int f12084e = 0;

    /* renamed from: f, reason: collision with root package name */
    private final int f12085f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ t2 f12086g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s2(t2 t2Var) {
        this.f12086g = t2Var;
        this.f12085f = this.f12086g.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12084e < this.f12085f;
    }

    @Override // com.google.android.gms.internal.measurement.y2
    public final byte nextByte() {
        int i2 = this.f12084e;
        if (i2 < this.f12085f) {
            this.f12084e = i2 + 1;
            return this.f12086g.zzar(i2);
        }
        throw new NoSuchElementException();
    }
}
