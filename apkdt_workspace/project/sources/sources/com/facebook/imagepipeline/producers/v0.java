package com.facebook.imagepipeline.producers;

/* compiled from: ThumbnailSizeChecker.java */
/* loaded from: classes.dex */
public final class v0 {
    public static int a(int i2) {
        return (int) (i2 * 1.3333334f);
    }

    public static boolean a(int i2, int i3, com.facebook.imagepipeline.common.e eVar) {
        return eVar == null ? ((float) a(i2)) >= 2048.0f && a(i3) >= 2048 : a(i2) >= eVar.f3678a && a(i3) >= eVar.f3679b;
    }

    public static boolean a(e.f.i.g.e eVar, com.facebook.imagepipeline.common.e eVar2) {
        if (eVar == null) {
            return false;
        }
        int r = eVar.r();
        if (r != 90 && r != 270) {
            return a(eVar.u(), eVar.o(), eVar2);
        }
        return a(eVar.o(), eVar.u(), eVar2);
    }
}
