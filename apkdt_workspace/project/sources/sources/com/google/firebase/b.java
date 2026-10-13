package com.google.firebase;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FirebaseApp.java */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements com.google.firebase.p.b {

    /* renamed from: a, reason: collision with root package name */
    private final c f14275a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f14276b;

    private b(c cVar, Context context) {
        this.f14275a = cVar;
        this.f14276b = context;
    }

    public static com.google.firebase.p.b a(c cVar, Context context) {
        return new b(cVar, context);
    }

    @Override // com.google.firebase.p.b
    public Object get() {
        return c.a(this.f14275a, this.f14276b);
    }
}
