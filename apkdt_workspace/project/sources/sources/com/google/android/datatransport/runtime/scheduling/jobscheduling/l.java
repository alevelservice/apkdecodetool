package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import e.i.b.a.i.x.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Uploader.java */
/* loaded from: classes.dex */
public final /* synthetic */ class l implements b.a {

    /* renamed from: a, reason: collision with root package name */
    private final m f4424a;

    /* renamed from: b, reason: collision with root package name */
    private final e.i.b.a.i.m f4425b;

    /* renamed from: c, reason: collision with root package name */
    private final int f4426c;

    private l(m mVar, e.i.b.a.i.m mVar2, int i2) {
        this.f4424a = mVar;
        this.f4425b = mVar2;
        this.f4426c = i2;
    }

    public static b.a a(m mVar, e.i.b.a.i.m mVar2, int i2) {
        return new l(mVar, mVar2, i2);
    }

    @Override // e.i.b.a.i.x.b.a
    public Object execute() {
        return m.a(this.f4424a, this.f4425b, this.f4426c);
    }
}
