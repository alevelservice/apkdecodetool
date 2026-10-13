package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(14)
/* loaded from: classes.dex */
public final class kf {

    /* renamed from: b, reason: collision with root package name */
    private long f7679b;

    /* renamed from: a, reason: collision with root package name */
    private final long f7678a = TimeUnit.MILLISECONDS.toNanos(((Long) mu1.e().a(aw1.C)).longValue());

    /* renamed from: c, reason: collision with root package name */
    private boolean f7680c = true;

    public final void a() {
        this.f7680c = true;
    }

    public final void a(SurfaceTexture surfaceTexture, cf cfVar) {
        if (cfVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (this.f7680c || Math.abs(timestamp - this.f7679b) >= this.f7678a) {
            this.f7680c = false;
            this.f7679b = timestamp;
            wa.f10063h.post(new nf(this, cfVar));
        }
    }
}
