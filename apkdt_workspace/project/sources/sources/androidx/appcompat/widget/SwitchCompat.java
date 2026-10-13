package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;

/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    private static final Property<SwitchCompat, Float> P = new a(Float.class, "thumbPos");
    private static final int[] Q = {R.attr.state_checked};
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private final TextPaint I;
    private ColorStateList J;
    private Layout K;
    private Layout L;
    private TransformationMethod M;
    private final l N;
    private final Rect O;

    /* renamed from: e, reason: collision with root package name */
    private Drawable f1242e;

    /* renamed from: f, reason: collision with root package name */
    private ColorStateList f1243f;

    /* renamed from: g, reason: collision with root package name */
    private PorterDuff.Mode f1244g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f1245h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f1246i;

    /* renamed from: j, reason: collision with root package name */
    private Drawable f1247j;

    /* renamed from: k, reason: collision with root package name */
    private ColorStateList f1248k;

    /* renamed from: l, reason: collision with root package name */
    private PorterDuff.Mode f1249l;
    private boolean m;
    ObjectAnimator mPositionAnimator;
    float mThumbPosition;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private boolean r;
    private CharSequence s;
    private CharSequence t;
    private boolean u;
    private int v;
    private int w;
    private float x;
    private float y;
    private VelocityTracker z;

    /* loaded from: classes.dex */
    class a extends Property<SwitchCompat, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.mThumbPosition);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(SwitchCompat switchCompat, Float f2) {
            switchCompat.setThumbPosition(f2.floatValue());
        }
    }

    public SwitchCompat(@NonNull Context context) {
        this(context, null);
    }

    private static float a(float f2, float f3, float f4) {
        return f2 < f3 ? f3 : f2 > f4 ? f4 : f2;
    }

    private void a(int i2, int i3) {
        Typeface typeface;
        if (i2 == 1) {
            typeface = Typeface.SANS_SERIF;
        } else if (i2 != 2) {
            typeface = i2 != 3 ? null : Typeface.MONOSPACE;
        } else {
            typeface = Typeface.SERIF;
        }
        setSwitchTypeface(typeface, i3);
    }

    private void b() {
        if (this.f1247j != null) {
            if (this.m || this.n) {
                this.f1247j = androidx.core.graphics.drawable.a.i(this.f1247j).mutate();
                if (this.m) {
                    androidx.core.graphics.drawable.a.a(this.f1247j, this.f1248k);
                }
                if (this.n) {
                    androidx.core.graphics.drawable.a.a(this.f1247j, this.f1249l);
                }
                if (this.f1247j.isStateful()) {
                    this.f1247j.setState(getDrawableState());
                }
            }
        }
    }

    private void c() {
        ObjectAnimator objectAnimator = this.mPositionAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private boolean getTargetCheckedState() {
        return this.mThumbPosition > 0.5f;
    }

    private int getThumbOffset() {
        float f2;
        if (j0.a(this)) {
            f2 = 1.0f - this.mThumbPosition;
        } else {
            f2 = this.mThumbPosition;
        }
        return (int) ((f2 * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Rect rect;
        Drawable drawable = this.f1247j;
        if (drawable == null) {
            return 0;
        }
        Rect rect2 = this.O;
        drawable.getPadding(rect2);
        Drawable drawable2 = this.f1242e;
        if (drawable2 != null) {
            rect = p.d(drawable2);
        } else {
            rect = p.f1412c;
        }
        return ((((this.B - this.D) - rect2.left) - rect2.right) - rect.left) - rect.right;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Rect rect;
        int i2;
        int i3;
        Rect rect2 = this.O;
        int i4 = this.E;
        int i5 = this.F;
        int i6 = this.G;
        int i7 = this.H;
        int thumbOffset = getThumbOffset() + i4;
        Drawable drawable = this.f1242e;
        if (drawable != null) {
            rect = p.d(drawable);
        } else {
            rect = p.f1412c;
        }
        Drawable drawable2 = this.f1247j;
        if (drawable2 != null) {
            drawable2.getPadding(rect2);
            int i8 = rect2.left;
            thumbOffset += i8;
            if (rect != null) {
                int i9 = rect.left;
                if (i9 > i8) {
                    i4 += i9 - i8;
                }
                int i10 = rect.top;
                int i11 = rect2.top;
                i2 = i10 > i11 ? (i10 - i11) + i5 : i5;
                int i12 = rect.right;
                int i13 = rect2.right;
                if (i12 > i13) {
                    i6 -= i12 - i13;
                }
                int i14 = rect.bottom;
                int i15 = rect2.bottom;
                if (i14 > i15) {
                    i3 = i7 - (i14 - i15);
                    this.f1247j.setBounds(i4, i2, i6, i3);
                }
            } else {
                i2 = i5;
            }
            i3 = i7;
            this.f1247j.setBounds(i4, i2, i6, i3);
        }
        Drawable drawable3 = this.f1242e;
        if (drawable3 != null) {
            drawable3.getPadding(rect2);
            int i16 = thumbOffset - rect2.left;
            int i17 = thumbOffset + this.D + rect2.right;
            this.f1242e.setBounds(i16, i5, i17, i7);
            Drawable background = getBackground();
            if (background != null) {
                androidx.core.graphics.drawable.a.a(background, i16, i5, i17, i7);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f2, f3);
        }
        Drawable drawable = this.f1242e;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, f2, f3);
        }
        Drawable drawable2 = this.f1247j;
        if (drawable2 != null) {
            androidx.core.graphics.drawable.a.a(drawable2, f2, f3);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1242e;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f1247j;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!j0.a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.B;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.q : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (j0.a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.B;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.q : compoundPaddingRight;
    }

    public boolean getShowText() {
        return this.u;
    }

    public boolean getSplitTrack() {
        return this.r;
    }

    public int getSwitchMinWidth() {
        return this.p;
    }

    public int getSwitchPadding() {
        return this.q;
    }

    public CharSequence getTextOff() {
        return this.t;
    }

    public CharSequence getTextOn() {
        return this.s;
    }

    public Drawable getThumbDrawable() {
        return this.f1242e;
    }

    public int getThumbTextPadding() {
        return this.o;
    }

    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f1243f;
    }

    @Nullable
    public PorterDuff.Mode getThumbTintMode() {
        return this.f1244g;
    }

    public Drawable getTrackDrawable() {
        return this.f1247j;
    }

    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f1248k;
    }

    @Nullable
    public PorterDuff.Mode getTrackTintMode() {
        return this.f1249l;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1242e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1247j;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.mPositionAnimator;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.mPositionAnimator.end();
        this.mPositionAnimator = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, Q);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.O;
        Drawable drawable = this.f1247j;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.F;
        int i3 = this.H;
        int i4 = i2 + rect.top;
        int i5 = i3 - rect.bottom;
        Drawable drawable2 = this.f1242e;
        if (drawable != null) {
            if (this.r && drawable2 != null) {
                Rect d2 = p.d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += d2.left;
                rect.right -= d2.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            } else {
                drawable.draw(canvas);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.K : this.L;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.J;
            if (colorStateList != null) {
                this.I.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.I.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i4 + i5) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        CharSequence charSequence = isChecked() ? this.s : this.t;
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        CharSequence text = accessibilityNodeInfo.getText();
        if (TextUtils.isEmpty(text)) {
            accessibilityNodeInfo.setText(charSequence);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(text);
        sb.append(' ');
        sb.append(charSequence);
        accessibilityNodeInfo.setText(sb);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int width;
        int i7;
        int i8;
        int i9;
        int i10;
        super.onLayout(z, i2, i3, i4, i5);
        int i11 = 0;
        if (this.f1242e != null) {
            Rect rect = this.O;
            Drawable drawable = this.f1247j;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect d2 = p.d(this.f1242e);
            i6 = Math.max(0, d2.left - rect.left);
            i11 = Math.max(0, d2.right - rect.right);
        } else {
            i6 = 0;
        }
        if (j0.a(this)) {
            i7 = getPaddingLeft() + i6;
            width = ((this.B + i7) - i6) - i11;
        } else {
            width = (getWidth() - getPaddingRight()) - i11;
            i7 = (width - this.B) + i6 + i11;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int paddingTop = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
            i8 = this.C;
            i9 = paddingTop - (i8 / 2);
        } else if (gravity != 80) {
            i9 = getPaddingTop();
            i8 = this.C;
        } else {
            i10 = getHeight() - getPaddingBottom();
            i9 = i10 - this.C;
            this.E = i7;
            this.F = i9;
            this.H = i10;
            this.G = width;
        }
        i10 = i8 + i9;
        this.E = i7;
        this.F = i9;
        this.H = i10;
        this.G = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        if (this.u) {
            if (this.K == null) {
                this.K = a(this.s);
            }
            if (this.L == null) {
                this.L = a(this.t);
            }
        }
        Rect rect = this.O;
        Drawable drawable = this.f1242e;
        int i6 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f1242e.getIntrinsicWidth() - rect.left) - rect.right;
            i5 = this.f1242e.getIntrinsicHeight();
        } else {
            i4 = 0;
            i5 = 0;
        }
        this.D = Math.max(this.u ? Math.max(this.K.getWidth(), this.L.getWidth()) + (this.o * 2) : 0, i4);
        Drawable drawable2 = this.f1247j;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i6 = this.f1247j.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i7 = rect.left;
        int i8 = rect.right;
        Drawable drawable3 = this.f1242e;
        if (drawable3 != null) {
            Rect d2 = p.d(drawable3);
            i7 = Math.max(i7, d2.left);
            i8 = Math.max(i8, d2.right);
        }
        int max = Math.max(this.p, (this.D * 2) + i7 + i8);
        int max2 = Math.max(i6, i5);
        this.B = max;
        this.C = max2;
        super.onMeasure(i2, i3);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.s : this.t;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0012, code lost:
    
        if (r0 != 3) goto L45;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            android.view.VelocityTracker r0 = r6.z
            r0.addMovement(r7)
            int r0 = r7.getActionMasked()
            r1 = 1
            if (r0 == 0) goto La1
            r2 = 2
            if (r0 == r1) goto L8d
            if (r0 == r2) goto L16
            r3 = 3
            if (r0 == r3) goto L8d
            goto Lbb
        L16:
            int r0 = r6.v
            if (r0 == 0) goto Lbb
            if (r0 == r1) goto L59
            if (r0 == r2) goto L20
            goto Lbb
        L20:
            float r7 = r7.getX()
            int r0 = r6.getThumbScrollRange()
            float r2 = r6.x
            float r2 = r7 - r2
            r3 = 1065353216(0x3f800000, float:1.0)
            r4 = 0
            if (r0 == 0) goto L34
            float r0 = (float) r0
            float r2 = r2 / r0
            goto L3f
        L34:
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L3b
            r2 = 1065353216(0x3f800000, float:1.0)
            goto L3f
        L3b:
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
            r2 = -1082130432(0xffffffffbf800000, float:-1.0)
        L3f:
            boolean r0 = androidx.appcompat.widget.j0.a(r6)
            if (r0 == 0) goto L46
            float r2 = -r2
        L46:
            float r0 = r6.mThumbPosition
            float r0 = r0 + r2
            float r0 = a(r0, r4, r3)
            float r2 = r6.mThumbPosition
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L58
            r6.x = r7
            r6.setThumbPosition(r0)
        L58:
            return r1
        L59:
            float r0 = r7.getX()
            float r3 = r7.getY()
            float r4 = r6.x
            float r4 = r0 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.w
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 > 0) goto L7f
            float r4 = r6.y
            float r4 = r3 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.w
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto Lbb
        L7f:
            r6.v = r2
            android.view.ViewParent r7 = r6.getParent()
            r7.requestDisallowInterceptTouchEvent(r1)
            r6.x = r0
            r6.y = r3
            return r1
        L8d:
            int r0 = r6.v
            if (r0 != r2) goto L98
            r6.b(r7)
            super.onTouchEvent(r7)
            return r1
        L98:
            r0 = 0
            r6.v = r0
            android.view.VelocityTracker r0 = r6.z
            r0.clear()
            goto Lbb
        La1:
            float r0 = r7.getX()
            float r2 = r7.getY()
            boolean r3 = r6.isEnabled()
            if (r3 == 0) goto Lbb
            boolean r3 = r6.a(r0, r2)
            if (r3 == 0) goto Lbb
            r6.v = r1
            r6.x = r0
            r6.y = r2
        Lbb:
            boolean r7 = super.onTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (getWindowToken() != null && ViewCompat.D(this)) {
            a(isChecked);
        } else {
            c();
            setThumbPosition(isChecked ? 1.0f : 0.0f);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.a(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.u != z) {
            this.u = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.r = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i2) {
        this.p = i2;
        requestLayout();
    }

    public void setSwitchPadding(int i2) {
        this.q = i2;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i2) {
        d0 a2 = d0.a(context, i2, a.a.j.TextAppearance);
        ColorStateList a3 = a2.a(a.a.j.TextAppearance_android_textColor);
        if (a3 != null) {
            this.J = a3;
        } else {
            this.J = getTextColors();
        }
        int c2 = a2.c(a.a.j.TextAppearance_android_textSize, 0);
        if (c2 != 0) {
            float f2 = c2;
            if (f2 != this.I.getTextSize()) {
                this.I.setTextSize(f2);
                requestLayout();
            }
        }
        a(a2.d(a.a.j.TextAppearance_android_typeface, -1), a2.d(a.a.j.TextAppearance_android_textStyle, -1));
        if (a2.a(a.a.j.TextAppearance_textAllCaps, false)) {
            this.M = new a.a.m.a(getContext());
        } else {
            this.M = null;
        }
        a2.b();
    }

    public void setSwitchTypeface(Typeface typeface, int i2) {
        Typeface create;
        if (i2 > 0) {
            if (typeface == null) {
                create = Typeface.defaultFromStyle(i2);
            } else {
                create = Typeface.create(typeface, i2);
            }
            setSwitchTypeface(create);
            int style = ((create != null ? create.getStyle() : 0) ^ (-1)) & i2;
            this.I.setFakeBoldText((style & 1) != 0);
            this.I.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
            return;
        }
        this.I.setFakeBoldText(false);
        this.I.setTextSkewX(0.0f);
        setSwitchTypeface(typeface);
    }

    public void setTextOff(CharSequence charSequence) {
        this.t = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.s = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1242e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1242e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f2) {
        this.mThumbPosition = f2;
        invalidate();
    }

    public void setThumbResource(int i2) {
        setThumbDrawable(a.a.k.a.a.c(getContext(), i2));
    }

    public void setThumbTextPadding(int i2) {
        this.o = i2;
        requestLayout();
    }

    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f1243f = colorStateList;
        this.f1245h = true;
        a();
    }

    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1244g = mode;
        this.f1246i = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1247j;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1247j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i2) {
        setTrackDrawable(a.a.k.a.a.c(getContext(), i2));
    }

    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f1248k = colorStateList;
        this.m = true;
        b();
    }

    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1249l = mode;
        this.n = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1242e || drawable == this.f1247j;
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, a.a.a.switchStyle);
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1243f = null;
        this.f1244g = null;
        this.f1245h = false;
        this.f1246i = false;
        this.f1248k = null;
        this.f1249l = null;
        this.m = false;
        this.n = false;
        this.z = VelocityTracker.obtain();
        this.O = new Rect();
        y.a(this, getContext());
        this.I = new TextPaint(1);
        Resources resources = getResources();
        this.I.density = resources.getDisplayMetrics().density;
        d0 a2 = d0.a(context, attributeSet, a.a.j.SwitchCompat, i2, 0);
        ViewCompat.a(this, context, a.a.j.SwitchCompat, attributeSet, a2.a(), i2, 0);
        this.f1242e = a2.b(a.a.j.SwitchCompat_android_thumb);
        Drawable drawable = this.f1242e;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        this.f1247j = a2.b(a.a.j.SwitchCompat_track);
        Drawable drawable2 = this.f1247j;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        this.s = a2.e(a.a.j.SwitchCompat_android_textOn);
        this.t = a2.e(a.a.j.SwitchCompat_android_textOff);
        this.u = a2.a(a.a.j.SwitchCompat_showText, true);
        this.o = a2.c(a.a.j.SwitchCompat_thumbTextPadding, 0);
        this.p = a2.c(a.a.j.SwitchCompat_switchMinWidth, 0);
        this.q = a2.c(a.a.j.SwitchCompat_switchPadding, 0);
        this.r = a2.a(a.a.j.SwitchCompat_splitTrack, false);
        ColorStateList a3 = a2.a(a.a.j.SwitchCompat_thumbTint);
        if (a3 != null) {
            this.f1243f = a3;
            this.f1245h = true;
        }
        PorterDuff.Mode a4 = p.a(a2.d(a.a.j.SwitchCompat_thumbTintMode, -1), null);
        if (this.f1244g != a4) {
            this.f1244g = a4;
            this.f1246i = true;
        }
        if (this.f1245h || this.f1246i) {
            a();
        }
        ColorStateList a5 = a2.a(a.a.j.SwitchCompat_trackTint);
        if (a5 != null) {
            this.f1248k = a5;
            this.m = true;
        }
        PorterDuff.Mode a6 = p.a(a2.d(a.a.j.SwitchCompat_trackTintMode, -1), null);
        if (this.f1249l != a6) {
            this.f1249l = a6;
            this.n = true;
        }
        if (this.m || this.n) {
            b();
        }
        int g2 = a2.g(a.a.j.SwitchCompat_switchTextAppearance, 0);
        if (g2 != 0) {
            setSwitchTextAppearance(context, g2);
        }
        this.N = new l(this);
        this.N.a(attributeSet, i2);
        a2.b();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.w = viewConfiguration.getScaledTouchSlop();
        this.A = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    private void a() {
        if (this.f1242e != null) {
            if (this.f1245h || this.f1246i) {
                this.f1242e = androidx.core.graphics.drawable.a.i(this.f1242e).mutate();
                if (this.f1245h) {
                    androidx.core.graphics.drawable.a.a(this.f1242e, this.f1243f);
                }
                if (this.f1246i) {
                    androidx.core.graphics.drawable.a.a(this.f1242e, this.f1244g);
                }
                if (this.f1242e.isStateful()) {
                    this.f1242e.setState(getDrawableState());
                }
            }
        }
    }

    private void b(MotionEvent motionEvent) {
        boolean z;
        this.v = 0;
        boolean z2 = true;
        boolean z3 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z3) {
            this.z.computeCurrentVelocity(1000);
            float xVelocity = this.z.getXVelocity();
            if (Math.abs(xVelocity) > this.A) {
                if (!j0.a(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                    z2 = false;
                }
                z = z2;
            } else {
                z = getTargetCheckedState();
            }
        } else {
            z = isChecked;
        }
        if (z != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z);
        a(motionEvent);
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.I.getTypeface() == null || this.I.getTypeface().equals(typeface)) && (this.I.getTypeface() != null || typeface == null)) {
            return;
        }
        this.I.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    private Layout a(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.M;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        CharSequence charSequence2 = charSequence;
        return new StaticLayout(charSequence2, this.I, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, r2)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    private boolean a(float f2, float f3) {
        if (this.f1242e == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f1242e.getPadding(this.O);
        int i2 = this.F;
        int i3 = this.w;
        int i4 = i2 - i3;
        int i5 = (this.E + thumbOffset) - i3;
        int i6 = this.D + i5;
        Rect rect = this.O;
        return f2 > ((float) i5) && f2 < ((float) (((i6 + rect.left) + rect.right) + i3)) && f3 > ((float) i4) && f3 < ((float) (this.H + i3));
    }

    private void a(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    private void a(boolean z) {
        this.mPositionAnimator = ObjectAnimator.ofFloat(this, P, z ? 1.0f : 0.0f);
        this.mPositionAnimator.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.mPositionAnimator.setAutoCancel(true);
        }
        this.mPositionAnimator.start();
    }
}
