package com.alipay.zoloz.hardware.camera.utils;

import android.graphics.Rect;

/* loaded from: classes.dex */
public class ImageUtils {
    public static Rect cropImage(int i2, int i3, int i4, int i5) {
        float f2 = (i2 * 1.0f) / i3;
        float f3 = (i4 * 1.0f) / i5;
        Rect rect = new Rect();
        if (f2 >= f3) {
            int i6 = (i4 * i3) / i5;
            rect.left = (i2 - i6) / 2;
            rect.right = rect.left + i6;
            rect.top = 0;
            rect.bottom = i3;
        } else {
            rect.left = 0;
            rect.right = i2;
            int i7 = (i5 * i2) / i4;
            rect.top = (i3 - i7) / 2;
            rect.bottom = rect.top + i7;
        }
        return rect;
    }
}
