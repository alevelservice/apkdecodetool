package com.google.android.material.card;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.RestrictTo;
import e.i.b.c.k;

/* compiled from: MaterialCardViewHelper.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    private final MaterialCardView f13740a;

    /* renamed from: b, reason: collision with root package name */
    private int f13741b;

    /* renamed from: c, reason: collision with root package name */
    private int f13742c;

    public a(MaterialCardView materialCardView) {
        this.f13740a = materialCardView;
    }

    private void d() {
        this.f13740a.setContentPadding(this.f13740a.getContentPaddingLeft() + this.f13742c, this.f13740a.getContentPaddingTop() + this.f13742c, this.f13740a.getContentPaddingRight() + this.f13742c, this.f13740a.getContentPaddingBottom() + this.f13742c);
    }

    private Drawable e() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(this.f13740a.getRadius());
        int i2 = this.f13741b;
        if (i2 != -1) {
            gradientDrawable.setStroke(this.f13742c, i2);
        }
        return gradientDrawable;
    }

    public void a(TypedArray typedArray) {
        this.f13741b = typedArray.getColor(k.MaterialCardView_strokeColor, -1);
        this.f13742c = typedArray.getDimensionPixelSize(k.MaterialCardView_strokeWidth, 0);
        c();
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@Dimension int i2) {
        this.f13742c = i2;
        c();
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f13740a.setForeground(e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension
    public int b() {
        return this.f13742c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@ColorInt int i2) {
        this.f13741b = i2;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public int a() {
        return this.f13741b;
    }
}
