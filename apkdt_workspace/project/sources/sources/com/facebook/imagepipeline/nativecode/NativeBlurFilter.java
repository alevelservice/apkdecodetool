package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;

@DoNotStrip
/* loaded from: classes.dex */
public class NativeBlurFilter {
    static {
        b.a();
    }

    @DoNotStrip
    private static native void nativeIterativeBoxBlur(Bitmap bitmap, int i2, int i3);
}
