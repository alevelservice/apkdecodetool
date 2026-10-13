package com.mapbox.mapboxsdk.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;

/* compiled from: BitmapUtils.java */
/* loaded from: classes2.dex */
public class a {
    public static Bitmap a(@NonNull View view) {
        view.setDrawingCacheEnabled(true);
        view.setDrawingCacheQuality(524288);
        view.buildDrawingCache();
        if (view.getDrawingCache() == null) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        view.destroyDrawingCache();
        return createBitmap;
    }

    @Nullable
    public static byte[] b(@Nullable Drawable drawable) {
        Bitmap a2;
        if (drawable == null || (a2 = a(drawable)) == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a2.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static Bitmap a(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2) {
        return a(bitmap, bitmap2, 10.0f, 10.0f);
    }

    public static Bitmap a(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, float f2, float f3) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        canvas.drawBitmap(bitmap2, f2, f3, (Paint) null);
        return createBitmap;
    }

    @Nullable
    public static Bitmap a(@Nullable Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return null;
        }
        Drawable mutate = constantState.newDrawable().mutate();
        Bitmap createBitmap = Bitmap.createBitmap(mutate.getIntrinsicWidth(), mutate.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        mutate.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        mutate.draw(canvas);
        return createBitmap;
    }

    @Nullable
    public static Drawable a(@NonNull Context context, @Nullable byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new BitmapDrawable(context.getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
    }

    @Nullable
    public static Drawable a(@NonNull Context context, @DrawableRes int i2) {
        return a(context, i2, null);
    }

    @Nullable
    public static Drawable a(@NonNull Context context, @DrawableRes int i2, @Nullable @ColorInt Integer num) {
        Drawable drawable = context.getResources().getDrawable(i2);
        if (drawable == null) {
            return null;
        }
        if (num == null) {
            return drawable;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(num.intValue());
        } else {
            drawable.mutate().setColorFilter(num.intValue(), PorterDuff.Mode.SRC_IN);
        }
        return drawable;
    }
}
