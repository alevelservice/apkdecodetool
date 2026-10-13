package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l71;
import com.google.android.gms.internal.ads.m71;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public abstract class l71<MessageType extends m71<MessageType, BuilderType>, BuilderType extends l71<MessageType, BuilderType>> implements na1 {
    protected abstract BuilderType a(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.na1
    public final /* synthetic */ na1 a(oa1 oa1Var) {
        if (a().getClass().isInstance(oa1Var)) {
            a((l71<MessageType, BuilderType>) oa1Var);
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
