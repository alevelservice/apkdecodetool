package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class w6 extends c7 {

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ v6 f12569f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private w6(v6 v6Var) {
        super(v6Var, null);
        this.f12569f = v6Var;
    }

    @Override // com.google.android.gms.internal.vision.c7, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new x6(this.f12569f, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ w6(v6 v6Var, u6 u6Var) {
        this(v6Var);
    }
}
