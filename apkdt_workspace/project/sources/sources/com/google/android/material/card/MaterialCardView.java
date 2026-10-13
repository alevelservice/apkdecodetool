package com.google.android.material.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.cardview.widget.CardView;
import com.google.android.material.internal.k;
import e.i.b.c.b;
import e.i.b.c.j;

/* loaded from: classes.dex */
public class MaterialCardView extends CardView {

    /* renamed from: j, reason: collision with root package name */
    private final a f13739j;

    public MaterialCardView(Context context) {
        this(context, null);
    }

    @ColorInt
    public int getStrokeColor() {
        return this.f13739j.a();
    }

    @Dimension
    public int getStrokeWidth() {
        return this.f13739j.b();
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f2) {
        super.setRadius(f2);
        this.f13739j.c();
    }

    public void setStrokeColor(@ColorInt int i2) {
        this.f13739j.a(i2);
    }

    public void setStrokeWidth(@Dimension int i2) {
        this.f13739j.b(i2);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.materialCardViewStyle);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray c2 = k.c(context, attributeSet, e.i.b.c.k.MaterialCardView, i2, j.Widget_MaterialComponents_CardView, new int[0]);
        this.f13739j = new a(this);
        this.f13739j.a(c2);
        c2.recycle();
    }
}
