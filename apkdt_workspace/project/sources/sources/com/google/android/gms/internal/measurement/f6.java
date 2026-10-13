package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class f6 extends l6 {

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ e6 f11854f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private f6(e6 e6Var) {
        super(e6Var, null);
        this.f11854f = e6Var;
    }

    @Override // com.google.android.gms.internal.measurement.l6, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new g6(this.f11854f, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ f6(e6 e6Var, d6 d6Var) {
        this(e6Var);
    }
}
