package com.facebook.imagepipeline.transcoder;

import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.common.RotationOptions;
import javax.annotation.Nullable;

/* compiled from: DownsampleUtil.java */
/* loaded from: classes.dex */
public class a {
    public static int a(RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e eVar, e.f.i.g.e eVar2, int i2) {
        int a2;
        if (!e.f.i.g.e.d(eVar2)) {
            return 1;
        }
        float a3 = a(rotationOptions, eVar, eVar2);
        if (eVar2.p() == e.f.h.b.f17450a) {
            a2 = b(a3);
        } else {
            a2 = a(a3);
        }
        int max = Math.max(eVar2.o(), eVar2.u());
        float f2 = eVar != null ? eVar.f3680c : i2;
        while (max / a2 > f2) {
            a2 = eVar2.p() == e.f.h.b.f17450a ? a2 * 2 : a2 + 1;
        }
        return a2;
    }

    @VisibleForTesting
    public static int b(float f2) {
        if (f2 > 0.6666667f) {
            return 1;
        }
        int i2 = 2;
        while (true) {
            int i3 = i2 * 2;
            double d2 = i3;
            Double.isNaN(d2);
            double d3 = 1.0d / d2;
            if (d3 + (0.3333333432674408d * d3) <= f2) {
                return i2;
            }
            i2 = i3;
        }
    }

    @VisibleForTesting
    public static float a(RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e eVar, e.f.i.g.e eVar2) {
        com.facebook.common.internal.h.a(e.f.i.g.e.d(eVar2));
        if (eVar == null || eVar.f3679b <= 0 || eVar.f3678a <= 0 || eVar2.u() == 0 || eVar2.o() == 0) {
            return 1.0f;
        }
        int a2 = a(rotationOptions, eVar2);
        boolean z = a2 == 90 || a2 == 270;
        int o = z ? eVar2.o() : eVar2.u();
        int u = z ? eVar2.u() : eVar2.o();
        float f2 = eVar.f3678a / o;
        float f3 = eVar.f3679b / u;
        float max = Math.max(f2, f3);
        e.f.c.d.a.b("DownsampleUtil", "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f", Integer.valueOf(eVar.f3678a), Integer.valueOf(eVar.f3679b), Integer.valueOf(o), Integer.valueOf(u), Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(max));
        return max;
    }

    @VisibleForTesting
    public static int a(float f2) {
        if (f2 > 0.6666667f) {
            return 1;
        }
        int i2 = 2;
        while (true) {
            double d2 = i2;
            double pow = Math.pow(d2, 2.0d);
            Double.isNaN(d2);
            Double.isNaN(d2);
            if ((1.0d / d2) + ((1.0d / (pow - d2)) * 0.3333333432674408d) <= f2) {
                return i2 - 1;
            }
            i2++;
        }
    }

    private static int a(RotationOptions rotationOptions, e.f.i.g.e eVar) {
        if (!rotationOptions.d()) {
            return 0;
        }
        int r = eVar.r();
        com.facebook.common.internal.h.a(r == 0 || r == 90 || r == 180 || r == 270);
        return r;
    }
}
