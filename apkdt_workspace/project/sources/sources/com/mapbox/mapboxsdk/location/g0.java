package com.mapbox.mapboxsdk.location;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.location.Location;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.log.Logger;

/* compiled from: Utils.java */
/* loaded from: classes2.dex */
public final class g0 {
    public static float a(float f2) {
        return ((f2 % 360.0f) + 360.0f) % 360.0f;
    }

    public static float a(float f2, float f3) {
        double d2 = f3 - f2;
        return d2 > 180.0d ? f2 + 360.0f : d2 < -180.0d ? f2 - 360.0f : f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bitmap a(Drawable drawable, float f2) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        try {
            drawable.draw(canvas);
            return Bitmap.createScaledBitmap(createBitmap, b(intrinsicWidth + f2), b(intrinsicHeight + f2), false);
        } catch (IllegalArgumentException e2) {
            if (e2.getMessage().equals("radius must be > 0") && Build.VERSION.SDK_INT < 21) {
                Logger.w("Mbgl-com.mapbox.mapboxsdk.location.Utils", "Location's shadow gradient drawable has a radius <= 0px, resetting to 1px in order to avoid crashing");
                a(drawable);
                return a(drawable, f2);
            }
            throw e2;
        }
    }

    private static int b(float f2) {
        int i2 = (int) (f2 + 0.5f);
        return i2 % 2 == 1 ? i2 - 1 : i2;
    }

    private static void a(Drawable drawable) {
        if (drawable instanceof GradientDrawable) {
            ((GradientDrawable) drawable).setGradientRadius(1.0f);
            return;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            for (int i2 = 0; i2 < layerDrawable.getNumberOfLayers(); i2++) {
                Drawable drawable2 = layerDrawable.getDrawable(i2);
                if (drawable2 instanceof GradientDrawable) {
                    ((GradientDrawable) drawable2).setGradientRadius(1.0f);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(@NonNull com.mapbox.mapboxsdk.maps.n nVar, @Nullable Location location) {
        if (location == null) {
            return 0.0f;
        }
        double a2 = nVar.l().a(location.getLatitude());
        double accuracy = location.getAccuracy();
        Double.isNaN(accuracy);
        return (float) (accuracy * (1.0d / a2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(@NonNull com.mapbox.mapboxsdk.maps.w wVar, @NonNull LatLng latLng, @NonNull LatLng latLng2) {
        return latLng.a(latLng2) / wVar.a((latLng.a() + latLng2.a()) / 2.0d) > 50000.0d;
    }
}
