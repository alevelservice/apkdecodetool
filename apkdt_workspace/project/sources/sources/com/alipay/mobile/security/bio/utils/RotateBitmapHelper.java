package com.alipay.mobile.security.bio.utils;

import android.graphics.Bitmap;
import android.graphics.Matrix;

/* loaded from: classes.dex */
public class RotateBitmapHelper {
    public static Bitmap getRotateBitmap(Bitmap bitmap, float f2) {
        if (bitmap == null) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(f2);
        try {
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (NullPointerException e2) {
            e2.toString();
            return null;
        } catch (OutOfMemoryError e3) {
            e3.toString();
            return null;
        }
    }

    public static Bitmap getUprightBitmap(Bitmap bitmap, float f2) {
        if (bitmap == null) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(f2);
        matrix.postScale(1.0f, -1.0f);
        try {
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (NullPointerException e2) {
            e2.toString();
            return null;
        } catch (OutOfMemoryError e3) {
            e3.toString();
            return null;
        }
    }

    public static Bitmap getVerticalRotateBitmap(Bitmap bitmap, float f2) {
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(1.0f, -1.0f);
        matrix.postRotate(f2);
        try {
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
        } catch (OutOfMemoryError e2) {
            e2.toString();
            return null;
        }
    }
}
