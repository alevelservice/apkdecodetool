package com.mapbox.mapboxsdk.utils;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.TypedValue;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.h;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: ColorUtils.java */
/* loaded from: classes2.dex */
public class b {
    @ColorInt
    public static int a(@NonNull Context context) {
        try {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(context.getResources().getIdentifier("colorPrimary", "attrs", context.getPackageName()), typedValue, true);
            return typedValue.data;
        } catch (Exception unused) {
            return a(context, h.mapbox_blue);
        }
    }

    public static float[] a(@ColorInt int i2) {
        return new float[]{(i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255, ((i2 >> 24) & 255) / 255.0f};
    }

    public static String b(@ColorInt int i2) {
        DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance(Locale.US);
        decimalFormat.applyPattern("#.###");
        return String.format(Locale.US, "rgba(%d, %d, %d, %s)", Integer.valueOf((i2 >> 16) & 255), Integer.valueOf((i2 >> 8) & 255), Integer.valueOf(i2 & 255), decimalFormat.format(((i2 >> 24) & 255) / 255.0f));
    }

    @NonNull
    public static ColorStateList c(@ColorInt int i2) {
        return new ColorStateList(new int[][]{new int[]{R.attr.state_pressed}, new int[0]}, new int[]{i2, i2});
    }

    public static void a(@NonNull ImageView imageView, @ColorInt int i2) {
        androidx.core.widget.e.a(imageView, c(i2));
    }

    @ColorInt
    public static int a(@NonNull String str) {
        Matcher matcher = Pattern.compile("rgba?\\s*\\(\\s*(\\d+\\.?\\d*)\\s*,\\s*(\\d+\\.?\\d*)\\s*,\\s*(\\d+\\.?\\d*)\\s*,?\\s*(\\d+\\.?\\d*)?\\s*\\)").matcher(str);
        if (matcher.matches() && matcher.groupCount() == 3) {
            return Color.rgb((int) Float.parseFloat(matcher.group(1)), (int) Float.parseFloat(matcher.group(2)), (int) Float.parseFloat(matcher.group(3)));
        }
        if (matcher.matches() && matcher.groupCount() == 4) {
            return Color.argb((int) (Float.parseFloat(matcher.group(4)) * 255.0f), (int) Float.parseFloat(matcher.group(1)), (int) Float.parseFloat(matcher.group(2)), (int) Float.parseFloat(matcher.group(3)));
        }
        throw new com.mapbox.mapboxsdk.r.b("Not a valid rgb/rgba value");
    }

    private static int a(@NonNull Context context, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getResources().getColor(i2, context.getTheme());
        }
        return context.getResources().getColor(i2);
    }
}
