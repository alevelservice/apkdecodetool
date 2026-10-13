package com.google.android.datatransport.runtime.scheduling.jobscheduling;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WorkInitializer.java */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final q f4441e;

    private o(q qVar) {
        this.f4441e = qVar;
    }

    public static Runnable a(q qVar) {
        return new o(qVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        r0.f4446d.a(p.a(this.f4441e));
    }
}
