package com.google.firebase.crashlytics;

import com.google.firebase.components.e;
import com.google.firebase.components.h;

/* compiled from: CrashlyticsRegistrar.java */
/* loaded from: classes.dex */
final /* synthetic */ class b implements h {

    /* renamed from: a, reason: collision with root package name */
    private final CrashlyticsRegistrar f14361a;

    private b(CrashlyticsRegistrar crashlyticsRegistrar) {
        this.f14361a = crashlyticsRegistrar;
    }

    public static h a(CrashlyticsRegistrar crashlyticsRegistrar) {
        return new b(crashlyticsRegistrar);
    }

    @Override // com.google.firebase.components.h
    public Object a(e eVar) {
        c a2;
        a2 = this.f14361a.a(eVar);
        return a2;
    }
}
