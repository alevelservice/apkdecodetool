package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.s;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [A, ResultT] */
/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class w0<A, ResultT> extends s<A, ResultT> {

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ s.a f5143c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w0(s.a aVar, Feature[] featureArr, boolean z) {
        super(featureArr, z);
        this.f5143c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect types in method signature: (TA;Le/i/b/b/d/i<TResultT;>;)V */
    @Override // com.google.android.gms.common.api.internal.s
    public final void a(a.b bVar, e.i.b.b.d.i iVar) {
        o oVar;
        oVar = this.f5143c.f5132a;
        oVar.a(bVar, iVar);
    }
}
