package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: e, reason: collision with root package name */
    private int f13840e;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public final int getUserSetVisibility() {
        return this.f13840e;
    }

    public final void internalSetVisibility(int i2, boolean z) {
        super.setVisibility(i2);
        if (z) {
            this.f13840e = i2;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i2) {
        internalSetVisibility(i2, true);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13840e = getVisibility();
    }
}
