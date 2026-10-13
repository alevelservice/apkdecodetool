package com.alipay.mobile.security.bio.utils;

import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;

/* loaded from: classes.dex */
public class DisplayUtil {
    public static int dip2px(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static Point getScreenMetrics(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i2 = displayMetrics.widthPixels;
        int i3 = displayMetrics.heightPixels;
        String str = "Screen---Width = " + i2 + " Height = " + i3 + " densityDpi = " + displayMetrics.densityDpi;
        return new Point(i2, i3);
    }

    public static float getScreenRate(Context context) {
        Point screenMetrics = getScreenMetrics(context);
        return screenMetrics.y / screenMetrics.x;
    }

    public static int px2dip(Context context, float f2) {
        return (int) ((f2 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
