package com.google.android.gms.internal.vision;

import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class m3 extends o3 {

    /* renamed from: e, reason: collision with root package name */
    private int f12430e = 0;

    /* renamed from: f, reason: collision with root package name */
    private final int f12431f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ j3 f12432g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m3(j3 j3Var) {
        this.f12432g = j3Var;
        this.f12431f = this.f12432g.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12430e < this.f12431f;
    }

    @Override // com.google.android.gms.internal.vision.s3
    public final byte nextByte() {
        int i2 = this.f12430e;
        if (i2 < this.f12431f) {
            this.f12430e = i2 + 1;
            return this.f12432g.zzao(i2);
        }
        throw new NoSuchElementException();
    }
}
