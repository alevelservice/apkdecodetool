package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import android.widget.ImageButton;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.core.view.ViewCompat;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* renamed from: h, reason: collision with root package name */
    private static final int[] f13831h = {R.attr.state_checked};

    /* renamed from: g, reason: collision with root package name */
    private boolean f13832g;

    /* loaded from: classes.dex */
    class a extends androidx.core.view.a {
        a() {
        }

        @Override // androidx.core.view.a
        public void a(View view, androidx.core.view.f0.d dVar) {
            super.a(view, dVar);
            dVar.c(true);
            dVar.d(CheckableImageButton.this.isChecked());
        }

        @Override // androidx.core.view.a
        public void b(View view, AccessibilityEvent accessibilityEvent) {
            super.b(view, accessibilityEvent);
            accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
        }
    }

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f13832g;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i2) {
        if (this.f13832g) {
            return ImageButton.mergeDrawableStates(super.onCreateDrawableState(i2 + f13831h.length), f13831h);
        }
        return super.onCreateDrawableState(i2);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f13832g != z) {
            this.f13832g = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f13832g);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.a.a.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        ViewCompat.a(this, new a());
    }
}
