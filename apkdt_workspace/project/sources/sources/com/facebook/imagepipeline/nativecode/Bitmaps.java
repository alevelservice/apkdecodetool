package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.common.internal.DoNotStrip;

@DoNotStrip
/* loaded from: classes.dex */
public class Bitmaps {
    static {
        a.a();
    }

    @DoNotStrip
    private static native void nativeCopyBitmap(Bitmap bitmap, int i2, Bitmap bitmap2, int i3, int i4);
}
