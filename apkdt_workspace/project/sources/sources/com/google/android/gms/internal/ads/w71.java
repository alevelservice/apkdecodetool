package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class w71 extends y71 {

    /* renamed from: e, reason: collision with root package name */
    private int f10040e = 0;

    /* renamed from: f, reason: collision with root package name */
    private final int f10041f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ t71 f10042g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w71(t71 t71Var) {
        this.f10042g = t71Var;
        this.f10041f = this.f10042g.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10040e < this.f10041f;
    }

    @Override // com.google.android.gms.internal.ads.d81
    public final byte nextByte() {
        int i2 = this.f10040e;
        if (i2 < this.f10041f) {
            this.f10040e = i2 + 1;
            return this.f10042g.zzfo(i2);
        }
        throw new NoSuchElementException();
    }
}
