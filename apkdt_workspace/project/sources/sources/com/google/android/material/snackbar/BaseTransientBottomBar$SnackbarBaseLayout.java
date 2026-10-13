package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.f0.c;
import e.i.b.c.k;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class BaseTransientBottomBar$SnackbarBaseLayout extends FrameLayout {

    /* renamed from: e, reason: collision with root package name */
    private final AccessibilityManager f13906e;

    /* renamed from: f, reason: collision with root package name */
    private final c.a f13907f;

    /* renamed from: g, reason: collision with root package name */
    private c f13908g;

    /* renamed from: h, reason: collision with root package name */
    private b f13909h;

    /* loaded from: classes.dex */
    class a implements c.a {
        a() {
        }

        @Override // androidx.core.view.f0.c.a
        public void onTouchExplorationStateChanged(boolean z) {
            BaseTransientBottomBar$SnackbarBaseLayout.this.setClickableOrFocusableBasedOnAccessibility(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseTransientBottomBar$SnackbarBaseLayout(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
        setClickable(!z);
        setFocusable(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = this.f13909h;
        if (bVar != null) {
            bVar.onViewAttachedToWindow(this);
        }
        ViewCompat.I(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.f13909h;
        if (bVar != null) {
            bVar.onViewDetachedFromWindow(this);
        }
        androidx.core.view.f0.c.b(this.f13906e, this.f13907f);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        c cVar = this.f13908g;
        if (cVar != null) {
            cVar.a(this, i2, i3, i4, i5);
        }
    }

    void setOnAttachStateChangeListener(b bVar) {
        this.f13909h = bVar;
    }

    void setOnLayoutChangeListener(c cVar) {
        this.f13908g = cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseTransientBottomBar$SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.SnackbarLayout);
        if (obtainStyledAttributes.hasValue(k.SnackbarLayout_elevation)) {
            ViewCompat.a(this, obtainStyledAttributes.getDimensionPixelSize(k.SnackbarLayout_elevation, 0));
        }
        obtainStyledAttributes.recycle();
        this.f13906e = (AccessibilityManager) context.getSystemService("accessibility");
        this.f13907f = new a();
        androidx.core.view.f0.c.a(this.f13906e, this.f13907f);
        setClickableOrFocusableBasedOnAccessibility(this.f13906e.isTouchExplorationEnabled());
    }
}
