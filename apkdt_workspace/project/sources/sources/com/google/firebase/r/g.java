package com.google.firebase.r;

import android.content.Context;
import com.google.firebase.r.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LibraryVersionComponent.java */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements com.google.firebase.components.h {

    /* renamed from: a, reason: collision with root package name */
    private final String f15300a;

    /* renamed from: b, reason: collision with root package name */
    private final h.a f15301b;

    private g(String str, h.a aVar) {
        this.f15300a = str;
        this.f15301b = aVar;
    }

    public static com.google.firebase.components.h a(String str, h.a aVar) {
        return new g(str, aVar);
    }

    @Override // com.google.firebase.components.h
    public Object a(com.google.firebase.components.e eVar) {
        f a2;
        a2 = f.a(this.f15300a, this.f15301b.a((Context) eVar.a(Context.class)));
        return a2;
    }
}
