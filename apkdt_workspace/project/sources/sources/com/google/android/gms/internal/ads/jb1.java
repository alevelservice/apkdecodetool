package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class jb1 extends pb1 {

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ ib1 f7451f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private jb1(ib1 ib1Var) {
        super(ib1Var, null);
        this.f7451f = ib1Var;
    }

    @Override // com.google.android.gms.internal.ads.pb1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new kb1(this.f7451f, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ jb1(ib1 ib1Var, hb1 hb1Var) {
        this(ib1Var);
    }
}
