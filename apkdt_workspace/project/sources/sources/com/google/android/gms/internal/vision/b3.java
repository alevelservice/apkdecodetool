package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.b3;
import com.google.android.gms.internal.vision.y2;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class b3<MessageType extends y2<MessageType, BuilderType>, BuilderType extends b3<MessageType, BuilderType>> implements c6 {
    protected abstract BuilderType a(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.c6
    public final /* synthetic */ c6 a(d6 d6Var) {
        if (c().getClass().isInstance(d6Var)) {
            a((b3<MessageType, BuilderType>) d6Var);
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
