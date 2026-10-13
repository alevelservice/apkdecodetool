package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.SignInButtonImpl;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.dynamic.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {
    public static final int COLOR_AUTO = 2;
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;

    /* renamed from: e, reason: collision with root package name */
    private int f4979e;

    /* renamed from: f, reason: collision with root package name */
    private int f4980f;

    /* renamed from: g, reason: collision with root package name */
    private View f4981g;

    /* renamed from: h, reason: collision with root package name */
    private View.OnClickListener f4982h;

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ButtonSize {
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ColorScheme {
    }

    public SignInButton(Context context) {
        this(context, null);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f4982h;
        if (onClickListener == null || view != this.f4981g) {
            return;
        }
        onClickListener.onClick(this);
    }

    public final void setColorScheme(int i2) {
        setStyle(this.f4979e, i2);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f4981g.setEnabled(z);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f4982h = onClickListener;
        View view = this.f4981g;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public final void setScopes(Scope[] scopeArr) {
        setStyle(this.f4979e, this.f4980f);
    }

    public final void setSize(int i2) {
        setStyle(i2, this.f4980f);
    }

    public final void setStyle(int i2, int i3) {
        this.f4979e = i2;
        this.f4980f = i3;
        Context context = getContext();
        View view = this.f4981g;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f4981g = n.a(context, this.f4979e, this.f4980f);
        } catch (a.C0090a unused) {
            int i4 = this.f4979e;
            int i5 = this.f4980f;
            SignInButtonImpl signInButtonImpl = new SignInButtonImpl(context);
            signInButtonImpl.configure(context.getResources(), i4, i5);
            this.f4981g = signInButtonImpl;
        }
        addView(this.f4981g);
        this.f4981g.setEnabled(isEnabled());
        this.f4981g.setOnClickListener(this);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f4982h = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, e.i.b.b.a.d.SignInButton, 0, 0);
        try {
            this.f4979e = obtainStyledAttributes.getInt(e.i.b.b.a.d.SignInButton_buttonSize, 0);
            this.f4980f = obtainStyledAttributes.getInt(e.i.b.b.a.d.SignInButton_colorScheme, 2);
            obtainStyledAttributes.recycle();
            setStyle(this.f4979e, this.f4980f);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Deprecated
    public final void setStyle(int i2, int i3, Scope[] scopeArr) {
        setStyle(i2, i3);
    }
}
