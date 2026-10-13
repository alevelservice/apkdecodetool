package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ar0 extends com.google.android.gms.ads.o.a implements jt, ot, st, qu {

    /* renamed from: e, reason: collision with root package name */
    private final AtomicReference<com.google.android.gms.ads.o.a> f5648e = new AtomicReference<>();

    /* renamed from: f, reason: collision with root package name */
    private final AtomicReference<zzaqo> f5649f = new AtomicReference<>();

    /* renamed from: g, reason: collision with root package name */
    private final AtomicReference<zzaql> f5650g = new AtomicReference<>();

    /* renamed from: h, reason: collision with root package name */
    private final AtomicReference<zzapo> f5651h = new AtomicReference<>();

    /* renamed from: i, reason: collision with root package name */
    private final AtomicReference<zzaqt> f5652i = new AtomicReference<>();

    /* renamed from: j, reason: collision with root package name */
    private final AtomicReference<zzapj> f5653j = new AtomicReference<>();

    public final void a(zzaqo zzaqoVar) {
        this.f5649f.set(zzaqoVar);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdClosed() {
        a(this.f5650g, pr0.f8764a);
        a(this.f5651h, sr0.f9428a);
    }

    @Override // com.google.android.gms.internal.ads.ot
    public final void onAdFailedToLoad(final int i2) {
        a(this.f5649f, new tr0(i2) { // from class: com.google.android.gms.internal.ads.kr0

            /* renamed from: a, reason: collision with root package name */
            private final int f7736a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7736a = i2;
            }

            @Override // com.google.android.gms.internal.ads.tr0
            public final void b(Object obj) {
                ((zzaqo) obj).onRewardedAdFailedToLoad(this.f7736a);
            }
        });
        a(this.f5651h, new tr0(i2) { // from class: com.google.android.gms.internal.ads.or0

            /* renamed from: a, reason: collision with root package name */
            private final int f8586a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8586a = i2;
            }

            @Override // com.google.android.gms.internal.ads.tr0
            public final void b(Object obj) {
                ((zzapo) obj).onRewardedVideoAdFailedToLoad(this.f8586a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdLeftApplication() {
        a(this.f5651h, rr0.f9220a);
    }

    @Override // com.google.android.gms.internal.ads.qu
    public final void onAdLoaded() {
        a(this.f5649f, dr0.f6298a);
        a(this.f5651h, cr0.f6102a);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onAdOpened() {
        a(this.f5650g, nr0.f8414a);
        a(this.f5651h, qr0.f9002a);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoCompleted() {
        a(this.f5651h, jr0.f7560a);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void onRewardedVideoStarted() {
        a(this.f5651h, ur0.f9806a);
    }

    @Override // com.google.android.gms.internal.ads.st
    public final void zzcm(final int i2) {
        a(this.f5650g, new tr0(i2) { // from class: com.google.android.gms.internal.ads.ir0

            /* renamed from: a, reason: collision with root package name */
            private final int f7364a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7364a = i2;
            }

            @Override // com.google.android.gms.internal.ads.tr0
            public final void b(Object obj) {
                ((zzaql) obj).onRewardedAdFailedToShow(this.f7364a);
            }
        });
    }

    public final void a(zzaql zzaqlVar) {
        this.f5650g.set(zzaqlVar);
    }

    public final void a(zzaqt zzaqtVar) {
        this.f5652i.set(zzaqtVar);
    }

    public final void a(com.google.android.gms.ads.o.a aVar) {
        this.f5648e.set(aVar);
    }

    @Deprecated
    public final void a(zzapo zzapoVar) {
        this.f5651h.set(zzapoVar);
    }

    @Deprecated
    public final void a(zzapj zzapjVar) {
        this.f5653j.set(zzapjVar);
    }

    @Override // com.google.android.gms.internal.ads.jt
    public final void a(final zzape zzapeVar, final String str, final String str2) {
        a(this.f5650g, new tr0(zzapeVar) { // from class: com.google.android.gms.internal.ads.fr0

            /* renamed from: a, reason: collision with root package name */
            private final zzape f6711a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6711a = zzapeVar;
            }

            @Override // com.google.android.gms.internal.ads.tr0
            public final void b(Object obj) {
                zzape zzapeVar2 = this.f6711a;
                ((zzaql) obj).zza(new zzarc(zzapeVar2.getType(), zzapeVar2.getAmount()));
            }
        });
        a(this.f5652i, new tr0(zzapeVar, str, str2) { // from class: com.google.android.gms.internal.ads.er0

            /* renamed from: a, reason: collision with root package name */
            private final zzape f6493a;

            /* renamed from: b, reason: collision with root package name */
            private final String f6494b;

            /* renamed from: c, reason: collision with root package name */
            private final String f6495c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6493a = zzapeVar;
                this.f6494b = str;
                this.f6495c = str2;
            }

            @Override // com.google.android.gms.internal.ads.tr0
            public final void b(Object obj) {
                zzape zzapeVar2 = this.f6493a;
                ((zzaqt) obj).zza(new zzarc(zzapeVar2.getType(), zzapeVar2.getAmount()), this.f6494b, this.f6495c);
            }
        });
        a(this.f5651h, new tr0(zzapeVar) { // from class: com.google.android.gms.internal.ads.hr0

            /* renamed from: a, reason: collision with root package name */
            private final zzape f7157a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7157a = zzapeVar;
            }

            @Override // com.google.android.gms.internal.ads.tr0
            public final void b(Object obj) {
                ((zzapo) obj).zza(this.f7157a);
            }
        });
        a(this.f5653j, new tr0(zzapeVar, str, str2) { // from class: com.google.android.gms.internal.ads.gr0

            /* renamed from: a, reason: collision with root package name */
            private final zzape f6963a;

            /* renamed from: b, reason: collision with root package name */
            private final String f6964b;

            /* renamed from: c, reason: collision with root package name */
            private final String f6965c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6963a = zzapeVar;
                this.f6964b = str;
                this.f6965c = str2;
            }

            @Override // com.google.android.gms.internal.ads.tr0
            public final void b(Object obj) {
                ((zzapj) obj).zza(this.f6963a, this.f6964b, this.f6965c);
            }
        });
    }

    @Override // com.google.android.gms.ads.o.a
    public final void a() {
        a(this.f5648e, lr0.f7966a);
    }

    private static <T> void a(AtomicReference<T> atomicReference, tr0<T> tr0Var) {
        T t = atomicReference.get();
        if (t == null) {
            return;
        }
        try {
            tr0Var.b(t);
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }
}
