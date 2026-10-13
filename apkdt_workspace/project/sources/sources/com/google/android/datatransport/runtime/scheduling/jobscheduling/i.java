package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import e.i.b.a.i.x.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Uploader.java */
/* loaded from: classes.dex */
public final /* synthetic */ class i implements b.a {

    /* renamed from: a, reason: collision with root package name */
    private final m f4416a;

    /* renamed from: b, reason: collision with root package name */
    private final e.i.b.a.i.m f4417b;

    private i(m mVar, e.i.b.a.i.m mVar2) {
        this.f4416a = mVar;
        this.f4417b = mVar2;
    }

    public static b.a a(m mVar, e.i.b.a.i.m mVar2) {
        return new i(mVar, mVar2);
    }

    @Override // e.i.b.a.i.x.b.a
    public Object execute() {
        Iterable a2;
        a2 = this.f4416a.f4429c.a(this.f4417b);
        return a2;
    }
}
