package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import e.i.b.a.i.x.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Uploader.java */
/* loaded from: classes.dex */
public final /* synthetic */ class j implements b.a {

    /* renamed from: a, reason: collision with root package name */
    private final m f4418a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.backends.h f4419b;

    /* renamed from: c, reason: collision with root package name */
    private final Iterable f4420c;

    /* renamed from: d, reason: collision with root package name */
    private final e.i.b.a.i.m f4421d;

    /* renamed from: e, reason: collision with root package name */
    private final int f4422e;

    private j(m mVar, com.google.android.datatransport.runtime.backends.h hVar, Iterable iterable, e.i.b.a.i.m mVar2, int i2) {
        this.f4418a = mVar;
        this.f4419b = hVar;
        this.f4420c = iterable;
        this.f4421d = mVar2;
        this.f4422e = i2;
    }

    public static b.a a(m mVar, com.google.android.datatransport.runtime.backends.h hVar, Iterable iterable, e.i.b.a.i.m mVar2, int i2) {
        return new j(mVar, hVar, iterable, mVar2, i2);
    }

    @Override // e.i.b.a.i.x.b.a
    public Object execute() {
        return m.a(this.f4418a, this.f4419b, this.f4420c, this.f4421d, this.f4422e);
    }
}
