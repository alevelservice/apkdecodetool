package com.mapbox.android.gestures;

import android.graphics.PointF;
import android.view.MotionEvent;
import androidx.annotation.NonNull;

/* compiled from: Utils.java */
/* loaded from: classes2.dex */
public class p {
    public static PointF a(@NonNull MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        float f2 = 0.0f;
        float f3 = 0.0f;
        for (int i2 = 0; i2 < pointerCount; i2++) {
            f2 += motionEvent.getX(i2);
            f3 += motionEvent.getY(i2);
        }
        float f4 = pointerCount;
        return new PointF(f2 / f4, f3 / f4);
    }

    public static float b(MotionEvent motionEvent, int i2) {
        float rawY = motionEvent.getRawY() - motionEvent.getY();
        if (i2 < motionEvent.getPointerCount()) {
            return motionEvent.getY(i2) + rawY;
        }
        return 0.0f;
    }

    public static float a(MotionEvent motionEvent, int i2) {
        float rawX = motionEvent.getRawX() - motionEvent.getX();
        if (i2 < motionEvent.getPointerCount()) {
            return motionEvent.getX(i2) + rawX;
        }
        return 0.0f;
    }
}
