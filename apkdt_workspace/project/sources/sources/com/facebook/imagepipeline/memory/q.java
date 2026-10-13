package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.imagepipeline.memory.a;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: GenericByteArrayPool.java */
@ThreadSafe
/* loaded from: classes.dex */
public class q extends a<byte[]> implements e.f.c.f.a {

    /* renamed from: j, reason: collision with root package name */
    private final int[] f3865j;

    public q(e.f.c.f.c cVar, f0 f0Var, g0 g0Var) {
        super(cVar, f0Var, g0Var);
        SparseIntArray sparseIntArray = f0Var.f3847c;
        this.f3865j = new int[sparseIntArray.size()];
        for (int i2 = 0; i2 < sparseIntArray.size(); i2++) {
            this.f3865j[i2] = sparseIntArray.keyAt(i2);
        }
        a();
    }

    @Override // com.facebook.imagepipeline.memory.a
    protected int d(int i2) {
        if (i2 > 0) {
            for (int i3 : this.f3865j) {
                if (i3 >= i2) {
                    return i3;
                }
            }
            return i2;
        }
        throw new a.b(Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    public int e(int i2) {
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* renamed from: a, reason: avoid collision after fix types in other method */
    public byte[] a2(int i2) {
        return new byte[i2];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public int c(byte[] bArr) {
        com.facebook.common.internal.h.a(bArr);
        return bArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(byte[] bArr) {
        com.facebook.common.internal.h.a(bArr);
    }
}
