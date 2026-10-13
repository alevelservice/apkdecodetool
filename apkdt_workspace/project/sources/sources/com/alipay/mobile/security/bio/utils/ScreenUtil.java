package com.alipay.mobile.security.bio.utils;

import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import android.view.Window;
import android.view.WindowManager;

/* loaded from: classes.dex */
public class ScreenUtil {
    public static int getScreenBrightness(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "screen_brightness");
        } catch (Exception e2) {
            e2.toString();
            return 255;
        }
    }

    public static void saveScreenBrightness(Context context, int i2) {
        try {
            Settings.System.putInt(context.getContentResolver(), "screen_brightness", i2);
        } catch (Exception e2) {
            e2.toString();
        }
    }

    public static void setScreenBrightness(Activity activity, int i2) {
        Window window;
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.screenBrightness = i2 / 255.0f;
        window.setAttributes(attributes);
    }

    public static void setScreenMode(Context context, int i2) {
        try {
            Settings.System.putInt(context.getContentResolver(), "screen_brightness_mode", i2);
        } catch (Exception e2) {
            e2.toString();
        }
    }
}
