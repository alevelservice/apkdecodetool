package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.p;
import com.google.android.gms.internal.clearcut.q;

/* loaded from: classes.dex */
public abstract class q<MessageType extends p<MessageType, BuilderType>, BuilderType extends q<MessageType, BuilderType>> implements j2 {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.clearcut.j2
    public final /* synthetic */ j2 a(i2 i2Var) {
        if (!a().getClass().isInstance(i2Var)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        a((q<MessageType, BuilderType>) i2Var);
        return this;
    }

    protected abstract BuilderType a(MessageType messagetype);
}
