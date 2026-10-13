package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class q90 implements hz0<String> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e90 f8867a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q90(e90 e90Var) {
        this.f8867a = e90Var;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        long j2;
        he heVar;
        synchronized (this) {
            e90.a(this.f8867a, true);
            e90 e90Var = this.f8867a;
            long c2 = com.google.android.gms.ads.internal.n.j().c();
            j2 = this.f8867a.f6359c;
            e90Var.a("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (c2 - j2));
            heVar = this.f8867a.f6360d;
            heVar.a(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(@Nullable String str) {
        long j2;
        Executor executor;
        final String str2 = str;
        synchronized (this) {
            e90.a(this.f8867a, true);
            e90 e90Var = this.f8867a;
            long c2 = com.google.android.gms.ads.internal.n.j().c();
            j2 = this.f8867a.f6359c;
            e90Var.a("com.google.android.gms.ads.MobileAds", true, "", (int) (c2 - j2));
            executor = this.f8867a.f6364h;
            executor.execute(new Runnable(this, str2) { // from class: com.google.android.gms.internal.ads.o90

                /* renamed from: e, reason: collision with root package name */
                private final q90 f8499e;

                /* renamed from: f, reason: collision with root package name */
                private final String f8500f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8499e = this;
                    this.f8500f = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    q90 q90Var = this.f8499e;
                    q90Var.f8867a.a(this.f8500f);
                }
            });
        }
    }
}
