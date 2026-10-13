package com.google.android.gms.internal.vision;

import java.util.List;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class m1 extends l1 {

    /* renamed from: a, reason: collision with root package name */
    private final k1 f12429a = new k1();

    @Override // com.google.android.gms.internal.vision.l1
    public final void a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        if (th2 != null) {
            this.f12429a.a(th, true).add(th2);
            return;
        }
        throw new NullPointerException("The suppressed exception cannot be null.");
    }

    @Override // com.google.android.gms.internal.vision.l1
    public final void a(Throwable th) {
        th.printStackTrace();
        List<Throwable> a2 = this.f12429a.a(th, false);
        if (a2 == null) {
            return;
        }
        synchronized (a2) {
            for (Throwable th2 : a2) {
                System.err.print("Suppressed: ");
                th2.printStackTrace();
            }
        }
    }
}
