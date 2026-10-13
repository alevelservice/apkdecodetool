package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import e.i.b.c.f;
import e.i.b.c.k;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout implements d {

    /* renamed from: e, reason: collision with root package name */
    private TextView f13911e;

    /* renamed from: f, reason: collision with root package name */
    private Button f13912f;

    /* renamed from: g, reason: collision with root package name */
    private int f13913g;

    /* renamed from: h, reason: collision with root package name */
    private int f13914h;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    private boolean a(int i2, int i3, int i4) {
        boolean z;
        if (i2 != getOrientation()) {
            setOrientation(i2);
            z = true;
        } else {
            z = false;
        }
        if (this.f13911e.getPaddingTop() == i3 && this.f13911e.getPaddingBottom() == i4) {
            return z;
        }
        a(this.f13911e, i3, i4);
        return true;
    }

    public void animateContentIn(int i2, int i3) {
        this.f13911e.setAlpha(0.0f);
        long j2 = i3;
        long j3 = i2;
        this.f13911e.animate().alpha(1.0f).setDuration(j2).setStartDelay(j3).start();
        if (this.f13912f.getVisibility() == 0) {
            this.f13912f.setAlpha(0.0f);
            this.f13912f.animate().alpha(1.0f).setDuration(j2).setStartDelay(j3).start();
        }
    }

    public void animateContentOut(int i2, int i3) {
        this.f13911e.setAlpha(1.0f);
        long j2 = i3;
        long j3 = i2;
        this.f13911e.animate().alpha(0.0f).setDuration(j2).setStartDelay(j3).start();
        if (this.f13912f.getVisibility() == 0) {
            this.f13912f.setAlpha(1.0f);
            this.f13912f.animate().alpha(0.0f).setDuration(j2).setStartDelay(j3).start();
        }
    }

    public Button getActionView() {
        return this.f13912f;
    }

    public TextView getMessageView() {
        return this.f13911e;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f13911e = (TextView) findViewById(f.snackbar_text);
        this.f13912f = (Button) findViewById(f.snackbar_action);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
    
        if (a(1, r0, r0 - r1) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0061, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005e, code lost:
    
        if (a(0, r0, r0) != false) goto L26;
     */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            super.onMeasure(r8, r9)
            int r0 = r7.f13913g
            if (r0 <= 0) goto L18
            int r0 = r7.getMeasuredWidth()
            int r1 = r7.f13913g
            if (r0 <= r1) goto L18
            r8 = 1073741824(0x40000000, float:2.0)
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r8)
            super.onMeasure(r8, r9)
        L18:
            android.content.res.Resources r0 = r7.getResources()
            int r1 = e.i.b.c.d.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            android.content.res.Resources r1 = r7.getResources()
            int r2 = e.i.b.c.d.design_snackbar_padding_vertical
            int r1 = r1.getDimensionPixelSize(r2)
            android.widget.TextView r2 = r7.f13911e
            android.text.Layout r2 = r2.getLayout()
            int r2 = r2.getLineCount()
            r3 = 0
            r4 = 1
            if (r2 <= r4) goto L3c
            r2 = 1
            goto L3d
        L3c:
            r2 = 0
        L3d:
            if (r2 == 0) goto L56
            int r5 = r7.f13914h
            if (r5 <= 0) goto L56
            android.widget.Button r5 = r7.f13912f
            int r5 = r5.getMeasuredWidth()
            int r6 = r7.f13914h
            if (r5 <= r6) goto L56
            int r1 = r0 - r1
            boolean r0 = r7.a(r4, r0, r1)
            if (r0 == 0) goto L61
            goto L62
        L56:
            if (r2 == 0) goto L59
            goto L5a
        L59:
            r0 = r1
        L5a:
            boolean r0 = r7.a(r3, r0, r0)
            if (r0 == 0) goto L61
            goto L62
        L61:
            r4 = 0
        L62:
            if (r4 == 0) goto L67
            super.onMeasure(r8, r9)
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.SnackbarLayout);
        this.f13913g = obtainStyledAttributes.getDimensionPixelSize(k.SnackbarLayout_android_maxWidth, -1);
        this.f13914h = obtainStyledAttributes.getDimensionPixelSize(k.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    private static void a(View view, int i2, int i3) {
        if (ViewCompat.F(view)) {
            ViewCompat.b(view, ViewCompat.r(view), i2, ViewCompat.q(view), i3);
        } else {
            view.setPadding(view.getPaddingLeft(), i2, view.getPaddingRight(), i3);
        }
    }
}
