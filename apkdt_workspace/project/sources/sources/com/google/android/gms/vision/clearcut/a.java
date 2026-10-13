package com.google.android.gms.vision.clearcut;

import com.google.android.gms.internal.vision.f2;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class a implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ int f13554e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ f2 f13555f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ DynamiteClearcutLogger f13556g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(DynamiteClearcutLogger dynamiteClearcutLogger, int i2, f2 f2Var) {
        this.f13556g = dynamiteClearcutLogger;
        this.f13554e = i2;
        this.f13555f = f2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        VisionClearcutLogger visionClearcutLogger;
        visionClearcutLogger = this.f13556g.zzbp;
        visionClearcutLogger.zzb(this.f13554e, this.f13555f);
    }
}
