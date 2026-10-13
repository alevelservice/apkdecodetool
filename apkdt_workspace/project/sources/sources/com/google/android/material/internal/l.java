package com.google.android.material.internal;

import android.graphics.PorterDuff;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;

/* compiled from: ViewUtils.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class l {
    public static PorterDuff.Mode a(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 != 9) {
            switch (i2) {
                case 14:
                    return PorterDuff.Mode.MULTIPLY;
                case 15:
                    return PorterDuff.Mode.SCREEN;
                case 16:
                    return PorterDuff.Mode.ADD;
                default:
                    return mode;
            }
        }
        return PorterDuff.Mode.SRC_ATOP;
    }

    public static boolean a(View view) {
        return ViewCompat.n(view) == 1;
    }
}
