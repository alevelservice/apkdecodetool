package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.imagepipeline.memory.a;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: MemoryChunkPool.java */
@ThreadSafe
/* loaded from: classes.dex */
public abstract class u extends a<t> {

    /* renamed from: j, reason: collision with root package name */
    private final int[] f3873j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(e.f.c.f.c cVar, f0 f0Var, g0 g0Var) {
        super(cVar, f0Var, g0Var);
        SparseIntArray sparseIntArray = f0Var.f3847c;
        this.f3873j = new int[sparseIntArray.size()];
        int i2 = 0;
        while (true) {
            int[] iArr = this.f3873j;
            if (i2 < iArr.length) {
                iArr[i2] = sparseIntArray.keyAt(i2);
                i2++;
            } else {
                a();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.imagepipeline.memory.a
    public abstract t a(int i2);

    @Override // com.facebook.imagepipeline.memory.a
    protected int e(int i2) {
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(t tVar) {
        com.facebook.common.internal.h.a(tVar);
        tVar.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public int c(t tVar) {
        com.facebook.common.internal.h.a(tVar);
        return tVar.i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public boolean d(t tVar) {
        com.facebook.common.internal.h.a(tVar);
        return !tVar.isClosed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f3873j[0];
    }

    @Override // com.facebook.imagepipeline.memory.a
    protected int d(int i2) {
        if (i2 > 0) {
            for (int i3 : this.f3873j) {
                if (i3 >= i2) {
                    return i3;
                }
            }
            return i2;
        }
        throw new a.b(Integer.valueOf(i2));
    }
}
