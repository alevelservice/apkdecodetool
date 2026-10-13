package com.google.firebase.crashlytics.d.n;

import com.google.firebase.crashlytics.d.h.q;
import e.i.b.a.h;
import e.i.b.b.d.i;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataTransportCrashlyticsReportSender.java */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements h {

    /* renamed from: a, reason: collision with root package name */
    private final i f14677a;

    /* renamed from: b, reason: collision with root package name */
    private final q f14678b;

    private a(i iVar, q qVar) {
        this.f14677a = iVar;
        this.f14678b = qVar;
    }

    public static h a(i iVar, q qVar) {
        return new a(iVar, qVar);
    }

    @Override // e.i.b.a.h
    public void a(Exception exc) {
        c.a(this.f14677a, this.f14678b, exc);
    }
}
