package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k4 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ m5 f13039e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ j4 f13040f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k4(j4 j4Var, m5 m5Var) {
        this.f13040f = j4Var;
        this.f13039e = m5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13040f.a(this.f13039e);
        this.f13040f.d();
    }
}
