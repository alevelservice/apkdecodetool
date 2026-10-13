package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.g;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class m0 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ ConnectionResult f5104e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ g.b f5105f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(g.b bVar, ConnectionResult connectionResult) {
        this.f5105f = bVar;
        this.f5104e = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b bVar;
        a.f fVar;
        a.f fVar2;
        a.f fVar3;
        Map map = g.this.m;
        bVar = this.f5105f.f5064b;
        g.a aVar = (g.a) map.get(bVar);
        if (aVar == null) {
            return;
        }
        if (this.f5104e.o()) {
            g.b.a(this.f5105f, true);
            fVar = this.f5105f.f5063a;
            if (fVar.j()) {
                this.f5105f.a();
                return;
            }
            try {
                fVar2 = this.f5105f.f5063a;
                fVar3 = this.f5105f.f5063a;
                fVar2.a(null, fVar3.c());
                return;
            } catch (SecurityException unused) {
                aVar.onConnectionFailed(new ConnectionResult(10));
                return;
            }
        }
        aVar.onConnectionFailed(this.f5104e);
    }
}
