package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Method;

/* compiled from: DrawableUtils.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static Method f13868a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f13869b;

    public static boolean a(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        return b(drawableContainer, constantState);
    }

    private static boolean b(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        if (!f13869b) {
            try {
                f13868a = DrawableContainer.class.getDeclaredMethod("setConstantState", DrawableContainer.DrawableContainerState.class);
                f13868a.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f13869b = true;
        }
        Method method = f13868a;
        if (method != null) {
            try {
                method.invoke(drawableContainer, constantState);
                return true;
            } catch (Exception unused2) {
            }
        }
        return false;
    }
}
