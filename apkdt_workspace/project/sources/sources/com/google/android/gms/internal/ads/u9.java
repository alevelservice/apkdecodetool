package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class u9 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Context f9693e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ he f9694f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u9(v9 v9Var, Context context, he heVar) {
        this.f9693e = context;
        this.f9694f = heVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f9694f.b(com.google.android.gms.ads.l.a.a(this.f9693e));
        } catch (com.google.android.gms.common.e | com.google.android.gms.common.f | IOException | IllegalStateException e2) {
            this.f9694f.a(e2);
            qd.b("Exception while getting advertising Id info", e2);
        }
    }
}
