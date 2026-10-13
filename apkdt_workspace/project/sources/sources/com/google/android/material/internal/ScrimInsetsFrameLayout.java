package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.e0;
import androidx.core.view.s;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: e, reason: collision with root package name */
    private Rect f13838e;
    Drawable insetForeground;
    Rect insets;

    /* loaded from: classes.dex */
    class a implements s {
        a() {
        }

        @Override // androidx.core.view.s
        public e0 a(View view, e0 e0Var) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.insets == null) {
                scrimInsetsFrameLayout.insets = new Rect();
            }
            ScrimInsetsFrameLayout.this.insets.set(e0Var.e(), e0Var.g(), e0Var.f(), e0Var.d());
            ScrimInsetsFrameLayout.this.onInsetsChanged(e0Var);
            ScrimInsetsFrameLayout.this.setWillNotDraw(!e0Var.i() || ScrimInsetsFrameLayout.this.insetForeground == null);
            ViewCompat.H(ScrimInsetsFrameLayout.this);
            return e0Var.c();
        }
    }

    public ScrimInsetsFrameLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.insets == null || this.insetForeground == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        this.f13838e.set(0, 0, width, this.insets.top);
        this.insetForeground.setBounds(this.f13838e);
        this.insetForeground.draw(canvas);
        this.f13838e.set(0, height - this.insets.bottom, width, height);
        this.insetForeground.setBounds(this.f13838e);
        this.insetForeground.draw(canvas);
        Rect rect = this.f13838e;
        Rect rect2 = this.insets;
        rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
        this.insetForeground.setBounds(this.f13838e);
        this.insetForeground.draw(canvas);
        Rect rect3 = this.f13838e;
        Rect rect4 = this.insets;
        rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
        this.insetForeground.setBounds(this.f13838e);
        this.insetForeground.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.insetForeground;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.insetForeground;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    protected void onInsetsChanged(e0 e0Var) {
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13838e = new Rect();
        TypedArray c2 = k.c(context, attributeSet, e.i.b.c.k.ScrimInsetsFrameLayout, i2, e.i.b.c.j.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.insetForeground = c2.getDrawable(e.i.b.c.k.ScrimInsetsFrameLayout_insetForeground);
        c2.recycle();
        setWillNotDraw(true);
        ViewCompat.a(this, new a());
    }
}
