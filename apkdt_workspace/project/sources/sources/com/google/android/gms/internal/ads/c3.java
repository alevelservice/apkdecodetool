package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class c3 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ m3 f5912e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ h2 f5913f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ q2 f5914g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c3(q2 q2Var, m3 m3Var, h2 h2Var) {
        this.f5914g = q2Var;
        this.f5912e = m3Var;
        this.f5913f = h2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.f5914g.f8828a;
        synchronized (obj) {
            if (this.f5912e.a() != -1 && this.f5912e.a() != 1) {
                this.f5912e.b();
                tz0 tz0Var = yd.f10543d;
                h2 h2Var = this.f5913f;
                h2Var.getClass();
                tz0Var.execute(b3.a(h2Var));
                na.e("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
