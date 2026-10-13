package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.d0;

/* compiled from: ThemeEnforcement.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f13895a = {e.i.b.c.b.colorPrimary};

    /* renamed from: b, reason: collision with root package name */
    private static final int[] f13896b = {e.i.b.c.b.colorSecondary};

    private static void a(Context context, AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i3) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.i.b.c.k.ThemeEnforcement, i2, i3);
        boolean z = obtainStyledAttributes.getBoolean(e.i.b.c.k.ThemeEnforcement_enforceMaterialTheme, false);
        obtainStyledAttributes.recycle();
        if (z) {
            b(context);
        }
        a(context);
    }

    private static boolean b(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i2, @StyleRes int i3, @StyleableRes int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, i3);
        for (int i4 : iArr2) {
            if (obtainStyledAttributes.getResourceId(i4, -1) == -1) {
                obtainStyledAttributes.recycle();
                return false;
            }
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    public static TypedArray c(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i2, @StyleRes int i3, @StyleableRes int... iArr2) {
        a(context, attributeSet, i2, i3);
        a(context, attributeSet, iArr, i2, i3, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i2, i3);
    }

    public static d0 d(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i2, @StyleRes int i3, @StyleableRes int... iArr2) {
        a(context, attributeSet, i2, i3);
        a(context, attributeSet, iArr, i2, i3, iArr2);
        return d0.a(context, attributeSet, iArr, i2, i3);
    }

    public static void b(Context context) {
        a(context, f13896b, "Theme.MaterialComponents");
    }

    private static void a(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i2, @StyleRes int i3, @StyleableRes int... iArr2) {
        boolean z;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.i.b.c.k.ThemeEnforcement, i2, i3);
        if (!obtainStyledAttributes.getBoolean(e.i.b.c.k.ThemeEnforcement_enforceTextAppearance, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 != null && iArr2.length != 0) {
            z = b(context, attributeSet, iArr, i2, i3, iArr2);
        } else {
            z = obtainStyledAttributes.getResourceId(e.i.b.c.k.ThemeEnforcement_android_textAppearance, -1) != -1;
        }
        obtainStyledAttributes.recycle();
        if (!z) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    public static void a(Context context) {
        a(context, f13895a, "Theme.AppCompat");
    }

    private static boolean a(Context context, int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        boolean hasValue = obtainStyledAttributes.hasValue(0);
        obtainStyledAttributes.recycle();
        return hasValue;
    }

    private static void a(Context context, int[] iArr, String str) {
        if (a(context, iArr)) {
            return;
        }
        throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
    }
}
