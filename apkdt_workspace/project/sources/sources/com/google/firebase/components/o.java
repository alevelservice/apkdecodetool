package com.google.firebase.components;

import com.google.firebase.components.n;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComponentRuntime.java */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements com.google.firebase.p.b {

    /* renamed from: a, reason: collision with root package name */
    private final i f14341a;

    private o(i iVar) {
        this.f14341a = iVar;
    }

    public static com.google.firebase.p.b a(i iVar) {
        return new o(iVar);
    }

    @Override // com.google.firebase.p.b
    public Object get() {
        i iVar = this.f14341a;
        n.b.b(iVar);
        return iVar;
    }
}
