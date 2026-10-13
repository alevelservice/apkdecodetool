package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;

@DoNotStrip
/* loaded from: classes.dex */
public class NativeRoundingFilter {
    static {
        b.a();
    }

    @DoNotStrip
    private static native void nativeToCircleFilter(Bitmap bitmap, boolean z);

    @DoNotStrip
    private static native void nativeToCircleWithBorderFilter(Bitmap bitmap, int i2, int i3, boolean z);
}
