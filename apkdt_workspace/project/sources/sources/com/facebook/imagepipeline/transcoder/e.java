package com.facebook.imagepipeline.transcoder;

import android.graphics.Matrix;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.common.RotationOptions;
import javax.annotation.Nullable;

/* compiled from: JpegTranscoderUtils.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final com.facebook.common.internal.d<Integer> f4141a = com.facebook.common.internal.d.of((Object[]) new Integer[]{2, 7, 4, 5});

    @VisibleForTesting
    public static int a(float f2, float f3) {
        return (int) (f3 + (f2 * 8.0f));
    }

    public static int a(RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e eVar, e.f.i.g.e eVar2, boolean z) {
        if (!z || eVar == null) {
            return 8;
        }
        int b2 = b(rotationOptions, eVar2);
        int a2 = f4141a.contains(Integer.valueOf(eVar2.m())) ? a(rotationOptions, eVar2) : 0;
        boolean z2 = b2 == 90 || b2 == 270 || a2 == 5 || a2 == 7;
        int a3 = a(a(eVar, z2 ? eVar2.o() : eVar2.u(), z2 ? eVar2.u() : eVar2.o()), eVar.f3681d);
        if (a3 > 8) {
            return 8;
        }
        if (a3 < 1) {
            return 1;
        }
        return a3;
    }

    public static int b(RotationOptions rotationOptions, e.f.i.g.e eVar) {
        if (!rotationOptions.c()) {
            return 0;
        }
        int a2 = a(eVar);
        return rotationOptions.d() ? a2 : (a2 + rotationOptions.b()) % 360;
    }

    public static boolean c(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static boolean d(int i2) {
        return i2 >= 0 && i2 <= 270 && i2 % 90 == 0;
    }

    @Nullable
    private static Matrix b(int i2) {
        Matrix matrix = new Matrix();
        if (i2 == 2) {
            matrix.setScale(-1.0f, 1.0f);
        } else if (i2 == 7) {
            matrix.setRotate(-90.0f);
            matrix.postScale(-1.0f, 1.0f);
        } else if (i2 == 4) {
            matrix.setRotate(180.0f);
            matrix.postScale(-1.0f, 1.0f);
        } else {
            if (i2 != 5) {
                return null;
            }
            matrix.setRotate(90.0f);
            matrix.postScale(-1.0f, 1.0f);
        }
        return matrix;
    }

    public static int a(RotationOptions rotationOptions, e.f.i.g.e eVar) {
        int indexOf = f4141a.indexOf(Integer.valueOf(eVar.m()));
        if (indexOf >= 0) {
            int b2 = rotationOptions.d() ? 0 : rotationOptions.b();
            com.facebook.common.internal.d<Integer> dVar = f4141a;
            return dVar.get((indexOf + (b2 / 90)) % dVar.size()).intValue();
        }
        throw new IllegalArgumentException("Only accepts inverted exif orientations");
    }

    @VisibleForTesting
    public static float a(com.facebook.imagepipeline.common.e eVar, int i2, int i3) {
        if (eVar == null) {
            return 1.0f;
        }
        float f2 = i2;
        float f3 = i3;
        float max = Math.max(eVar.f3678a / f2, eVar.f3679b / f3);
        float f4 = f2 * max;
        float f5 = eVar.f3680c;
        if (f4 > f5) {
            max = f5 / f2;
        }
        float f6 = f3 * max;
        float f7 = eVar.f3680c;
        return f6 > f7 ? f7 / f3 : max;
    }

    @VisibleForTesting
    public static int a(int i2) {
        return Math.max(1, 8 / i2);
    }

    @Nullable
    public static Matrix a(e.f.i.g.e eVar, RotationOptions rotationOptions) {
        if (f4141a.contains(Integer.valueOf(eVar.m()))) {
            return b(a(rotationOptions, eVar));
        }
        int b2 = b(rotationOptions, eVar);
        if (b2 == 0) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(b2);
        return matrix;
    }

    private static int a(e.f.i.g.e eVar) {
        int r = eVar.r();
        if (r == 90 || r == 180 || r == 270) {
            return eVar.r();
        }
        return 0;
    }
}
