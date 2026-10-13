package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.j2;
import com.google.android.gms.internal.measurement.l2;

/* loaded from: classes.dex */
public abstract class l2<MessageType extends j2<MessageType, BuilderType>, BuilderType extends l2<MessageType, BuilderType>> implements j5 {
    protected abstract BuilderType a(MessageType messagetype);

    public abstract BuilderType a(byte[] bArr, int i2, int i3, o3 o3Var);

    public final BuilderType a(byte[] bArr, o3 o3Var) {
        a(bArr, 0, bArr.length, o3Var);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.j5
    public final /* synthetic */ j5 a(k5 k5Var) {
        if (a().getClass().isInstance(k5Var)) {
            a((l2<MessageType, BuilderType>) k5Var);
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
