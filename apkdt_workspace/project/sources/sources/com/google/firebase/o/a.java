package com.google.firebase.o;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultHeartBeatInfo.java */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements com.google.firebase.p.b {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15280a;

    private a(Context context) {
        this.f15280a = context;
    }

    public static com.google.firebase.p.b a(Context context) {
        return new a(context);
    }

    @Override // com.google.firebase.p.b
    public Object get() {
        g a2;
        a2 = g.a(this.f15280a);
        return a2;
    }
}
