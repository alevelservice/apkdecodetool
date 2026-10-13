package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class SignInButtonImpl extends Button {
    public SignInButtonImpl(Context context) {
        this(context, null);
    }

    private static int a(int i2, int i3, int i4, int i5) {
        if (i2 == 0) {
            return i3;
        }
        if (i2 == 1) {
            return i4;
        }
        if (i2 == 2) {
            return i5;
        }
        StringBuilder sb = new StringBuilder(33);
        sb.append("Unknown color scheme: ");
        sb.append(i2);
        throw new IllegalStateException(sb.toString());
    }

    public final void configure(Resources resources, SignInButtonConfig signInButtonConfig) {
        configure(resources, signInButtonConfig.j(), signInButtonConfig.k());
    }

    public SignInButtonImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyle);
    }

    public final void configure(Resources resources, int i2, int i3) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i4 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i4);
        setMinWidth(i4);
        int i5 = e.i.b.b.a.b.common_google_signin_btn_icon_dark;
        int i6 = e.i.b.b.a.b.common_google_signin_btn_icon_light;
        int a2 = a(i3, i5, i6, i6);
        int i7 = e.i.b.b.a.b.common_google_signin_btn_text_dark;
        int i8 = e.i.b.b.a.b.common_google_signin_btn_text_light;
        int a3 = a(i3, i7, i8, i8);
        if (i2 == 0 || i2 == 1) {
            a2 = a3;
        } else if (i2 != 2) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Unknown button size: ");
            sb.append(i2);
            throw new IllegalStateException(sb.toString());
        }
        Drawable i9 = androidx.core.graphics.drawable.a.i(resources.getDrawable(a2));
        androidx.core.graphics.drawable.a.a(i9, resources.getColorStateList(e.i.b.b.a.a.common_google_signin_btn_tint));
        androidx.core.graphics.drawable.a.a(i9, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(i9);
        int i10 = e.i.b.b.a.a.common_google_signin_btn_text_dark;
        int i11 = e.i.b.b.a.a.common_google_signin_btn_text_light;
        ColorStateList colorStateList = resources.getColorStateList(a(i3, i10, i11, i11));
        m.a(colorStateList);
        setTextColor(colorStateList);
        if (i2 == 0) {
            setText(resources.getString(e.i.b.b.a.c.common_signin_button_text));
        } else if (i2 == 1) {
            setText(resources.getString(e.i.b.b.a.c.common_signin_button_text_long));
        } else if (i2 == 2) {
            setText((CharSequence) null);
        } else {
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Unknown button size: ");
            sb2.append(i2);
            throw new IllegalStateException(sb2.toString());
        }
        setTransformationMethod(null);
        if (com.google.android.gms.common.util.i.c(getContext())) {
            setGravity(19);
        }
    }
}
