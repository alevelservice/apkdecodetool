package com.google.android.gms.internal.ads;

import android.util.SparseArray;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dm1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ em1 f6255e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ yl1 f6256f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dm1(yl1 yl1Var, em1 em1Var) {
        this.f6256f = yl1Var;
        this.f6255e = em1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        this.f6255e.a();
        sparseArray = this.f6256f.t;
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            sparseArray2 = this.f6256f.t;
            ((tm1) sparseArray2.valueAt(i2)).a();
        }
    }
}
