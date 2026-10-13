package com.facebook.imagepipeline.memory;

import javax.annotation.concurrent.ThreadSafe;

/* compiled from: NativeMemoryChunkPool.java */
@ThreadSafe
/* loaded from: classes.dex */
public class z extends u {
    public z(e.f.c.f.c cVar, f0 f0Var, g0 g0Var) {
        super(cVar, f0Var, g0Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.imagepipeline.memory.u, com.facebook.imagepipeline.memory.a
    /* renamed from: a */
    public t a2(int i2) {
        return new NativeMemoryChunk(i2);
    }
}
