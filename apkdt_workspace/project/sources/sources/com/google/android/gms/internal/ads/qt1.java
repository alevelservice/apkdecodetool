package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qt1 extends uc1<qt1> {

    /* renamed from: c, reason: collision with root package name */
    private static volatile qt1[] f9006c;

    public static qt1[] d() {
        if (f9006c == null) {
            synchronized (yc1.f10539a) {
                if (f9006c == null) {
                    f9006c = new qt1[0];
                }
            }
        }
        return f9006c;
    }
}
