package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ll0 implements ko0<ml0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f7937a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f7938b;

    public ll0(tz0 tz0Var, Context context) {
        this.f7937a = tz0Var;
        this.f7938b = context;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<ml0> a() {
        return this.f7937a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.ol0

            /* renamed from: e, reason: collision with root package name */
            private final ll0 f8549e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8549e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f8549e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ml0 b() {
        AudioManager audioManager = (AudioManager) this.f7938b.getSystemService("audio");
        return new ml0(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), com.google.android.gms.ads.internal.n.h().a(), com.google.android.gms.ads.internal.n.h().b());
    }
}
