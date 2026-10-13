package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class o1 extends l1 {
    @Override // com.google.android.gms.internal.vision.l1
    public final void a(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }

    @Override // com.google.android.gms.internal.vision.l1
    public final void a(Throwable th) {
        th.printStackTrace();
    }
}
