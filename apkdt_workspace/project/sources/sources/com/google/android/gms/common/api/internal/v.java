package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [TResult] */
/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class v<TResult> implements e.i.b.b.d.c<TResult> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ e.i.b.b.d.i f5139a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ n1 f5140b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(n1 n1Var, e.i.b.b.d.i iVar) {
        this.f5140b = n1Var;
        this.f5139a = iVar;
    }

    @Override // e.i.b.b.d.c
    public final void a(@NonNull e.i.b.b.d.h<TResult> hVar) {
        Map map;
        map = this.f5140b.f5110b;
        map.remove(this.f5139a);
    }
}
