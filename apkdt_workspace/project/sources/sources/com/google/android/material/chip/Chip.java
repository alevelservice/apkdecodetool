package com.google.android.material.chip;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.content.res.e;
import androidx.core.view.ViewCompat;
import androidx.core.view.f0.d;
import com.google.android.material.chip.a;
import com.google.android.material.internal.l;
import e.i.b.c.i;
import e.i.b.c.j;
import e.i.b.c.l.h;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public class Chip extends AppCompatCheckBox implements a.b {
    private static final Rect u = new Rect();
    private static final int[] v = {R.attr.state_selected};

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private com.google.android.material.chip.a f13743h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private RippleDrawable f13744i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private View.OnClickListener f13745j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private CompoundButton.OnCheckedChangeListener f13746k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f13747l;
    private int m;
    private boolean n;
    private boolean o;
    private boolean p;
    private final c q;
    private final Rect r;
    private final RectF s;
    private final e.a t;

    /* loaded from: classes.dex */
    class a extends e.a {
        a() {
        }

        @Override // androidx.core.content.res.e.a
        public void a(int i2) {
        }

        @Override // androidx.core.content.res.e.a
        public void a(@NonNull Typeface typeface) {
            Chip chip = Chip.this;
            chip.setText(chip.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, Outline outline) {
            if (Chip.this.f13743h != null) {
                Chip.this.f13743h.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends a.k.a.a {
        c(Chip chip) {
            super(chip);
        }

        @Override // a.k.a.a
        protected int a(float f2, float f3) {
            return (Chip.this.c() && Chip.this.getCloseIconTouchBounds().contains(f2, f3)) ? 0 : -1;
        }

        @Override // a.k.a.a
        protected void a(List<Integer> list) {
            if (Chip.this.c()) {
                list.add(0);
            }
        }

        @Override // a.k.a.a
        protected void a(int i2, d dVar) {
            if (Chip.this.c()) {
                CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
                if (closeIconContentDescription != null) {
                    dVar.b(closeIconContentDescription);
                } else {
                    CharSequence text = Chip.this.getText();
                    Context context = Chip.this.getContext();
                    int i3 = i.mtrl_chip_close_icon_content_description;
                    Object[] objArr = new Object[1];
                    if (TextUtils.isEmpty(text)) {
                        text = "";
                    }
                    objArr[0] = text;
                    dVar.b((CharSequence) context.getString(i3, objArr).trim());
                }
                dVar.c(Chip.this.getCloseIconTouchBoundsInt());
                dVar.a(d.a.f1966f);
                dVar.g(Chip.this.isEnabled());
                return;
            }
            dVar.b("");
            dVar.c(Chip.u);
        }

        @Override // a.k.a.a
        protected void a(d dVar) {
            dVar.c(Chip.this.f13743h != null && Chip.this.f13743h.D());
            dVar.a((CharSequence) Chip.class.getName());
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                dVar.g(text);
            } else {
                dVar.b(text);
            }
        }

        @Override // a.k.a.a
        protected boolean a(int i2, int i3, Bundle bundle) {
            if (i3 == 16 && i2 == 0) {
                return Chip.this.performCloseIconClick();
            }
            return false;
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    private void a(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") == null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") == null) {
                if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") == null) {
                    if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") == null) {
                        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") == null) {
                            if (attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) == 1) {
                                attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627);
                                return;
                            }
                            throw new UnsupportedOperationException("Chip does not support multi-line text");
                        }
                        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
                    }
                    throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
                }
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
    }

    private float b(@NonNull com.google.android.material.chip.a aVar) {
        float chipStartPadding = getChipStartPadding() + aVar.a() + getTextStartPadding();
        return ViewCompat.n(this) == 0 ? chipStartPadding : -chipStartPadding;
    }

    private void c(@Nullable com.google.android.material.chip.a aVar) {
        if (aVar != null) {
            aVar.a((a.b) null);
        }
    }

    private void d() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new b());
        }
    }

    private void e() {
        com.google.android.material.chip.a aVar;
        if (TextUtils.isEmpty(getText()) || (aVar = this.f13743h) == null) {
            return;
        }
        float j2 = aVar.j() + this.f13743h.e() + this.f13743h.C() + this.f13743h.B();
        if ((this.f13743h.F() && this.f13743h.f() != null) || (this.f13743h.b() != null && this.f13743h.E() && isChecked())) {
            j2 += this.f13743h.w() + this.f13743h.v() + this.f13743h.g();
        }
        if (this.f13743h.H() && this.f13743h.m() != null) {
            j2 += this.f13743h.q() + this.f13743h.o() + this.f13743h.p();
        }
        if (ViewCompat.q(this) != j2) {
            ViewCompat.b(this, ViewCompat.r(this), getPaddingTop(), (int) j2, getPaddingBottom());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        this.s.setEmpty();
        if (c()) {
            this.f13743h.a(this.s);
        }
        return this.s;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.r.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.r;
    }

    @Nullable
    private e.i.b.c.q.b getTextAppearance() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.A();
        }
        return null;
    }

    private void setCloseIconFocused(boolean z) {
        if (this.p != z) {
            this.p = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconHovered(boolean z) {
        if (this.o != z) {
            this.o = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.n != z) {
            this.n = z;
            refreshDrawableState();
        }
    }

    private void setFocusedVirtualView(int i2) {
        int i3 = this.m;
        if (i3 != i2) {
            if (i3 == 0) {
                setCloseIconFocused(false);
            }
            this.m = i2;
            if (i2 == 0) {
                setCloseIconFocused(true);
            }
        }
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return a(motionEvent) || this.q.a(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.q.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.chip.a aVar = this.f13743h;
        if ((aVar == null || !aVar.G()) ? false : this.f13743h.a(a())) {
            invalidate();
        }
    }

    @Nullable
    public Drawable getCheckedIcon() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.b();
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.c();
        }
        return null;
    }

    public float getChipCornerRadius() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.d();
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f13743h;
    }

    public float getChipEndPadding() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.e();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.f();
        }
        return null;
    }

    public float getChipIconSize() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.g();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.h();
        }
        return null;
    }

    public float getChipMinHeight() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.i();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.j();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.k();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.l();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.m();
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.n();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.o();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.p();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.q();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.s();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.t();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.m == 0) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public h getHideMotionSpec() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.u();
        }
        return null;
    }

    public float getIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.v();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.w();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.x();
        }
        return null;
    }

    @Nullable
    public h getShowMotionSpec() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.y();
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        com.google.android.material.chip.a aVar = this.f13743h;
        return aVar != null ? aVar.z() : "";
    }

    public float getTextEndPadding() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.B();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            return aVar.C();
        }
        return 0.0f;
    }

    public boolean isCheckable() {
        com.google.android.material.chip.a aVar = this.f13743h;
        return aVar != null && aVar.D();
    }

    @Deprecated
    public boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public boolean isCheckedIconVisible() {
        com.google.android.material.chip.a aVar = this.f13743h;
        return aVar != null && aVar.E();
    }

    @Deprecated
    public boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public boolean isChipIconVisible() {
        com.google.android.material.chip.a aVar = this.f13743h;
        return aVar != null && aVar.F();
    }

    @Deprecated
    public boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public boolean isCloseIconVisible() {
        com.google.android.material.chip.a aVar = this.f13743h;
        return aVar != null && aVar.H();
    }

    @Override // com.google.android.material.chip.a.b
    public void onChipDrawableSizeChange() {
        e();
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, v);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        com.google.android.material.chip.a aVar;
        if (!TextUtils.isEmpty(getText()) && (aVar = this.f13743h) != null && !aVar.J()) {
            int save = canvas.save();
            canvas.translate(b(this.f13743h), 0.0f);
            super.onDraw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i2, Rect rect) {
        if (z) {
            setFocusedVirtualView(-1);
        } else {
            setFocusedVirtualView(e.b.b.a.a.a.c.ALL_INT);
        }
        invalidate();
        super.onFocusChanged(z, i2, rect);
        this.q.a(z, i2, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        int i3;
        int keyCode = keyEvent.getKeyCode();
        boolean z = false;
        if (keyCode != 61) {
            if (keyCode != 66) {
                switch (keyCode) {
                    case 21:
                        if (keyEvent.hasNoModifiers()) {
                            z = a(l.a(this));
                            break;
                        }
                        break;
                    case 22:
                        if (keyEvent.hasNoModifiers()) {
                            z = a(!l.a(this));
                            break;
                        }
                        break;
                }
            }
            int i4 = this.m;
            if (i4 == -1) {
                performClick();
                return true;
            }
            if (i4 == 0) {
                performCloseIconClick();
                return true;
            }
        } else {
            if (keyEvent.hasNoModifiers()) {
                i3 = 2;
            } else {
                i3 = keyEvent.hasModifiers(1) ? 1 : 0;
            }
            if (i3 != 0) {
                ViewParent parent = getParent();
                View view = this;
                do {
                    view = view.focusSearch(i3);
                    if (view == null || view == this) {
                        break;
                    }
                } while (view.getParent() == parent);
                if (view != null) {
                    view.requestFocus();
                    return true;
                }
            }
        }
        if (z) {
            invalidate();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0 != 3) goto L22;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L39
            if (r0 == r3) goto L2b
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L34
            goto L40
        L21:
            boolean r0 = r5.n
            if (r0 == 0) goto L40
            if (r1 != 0) goto L3e
            r5.setCloseIconPressed(r2)
            goto L3e
        L2b:
            boolean r0 = r5.n
            if (r0 == 0) goto L34
            r5.performCloseIconClick()
            r0 = 1
            goto L35
        L34:
            r0 = 0
        L35:
            r5.setCloseIconPressed(r2)
            goto L41
        L39:
            if (r1 == 0) goto L40
            r5.setCloseIconPressed(r3)
        L3e:
            r0 = 1
            goto L41
        L40:
            r0 = 0
        L41:
            if (r0 != 0) goto L49
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L4a
        L49:
            r2 = 1
        L4a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @CallSuper
    public boolean performCloseIconClick() {
        boolean z;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f13745j;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        } else {
            z = false;
        }
        this.q.a(0, 1);
        return z;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable != this.f13743h && drawable != this.f13744i) {
            throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
        }
        super.setBackground(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        throw new UnsupportedOperationException("Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != this.f13743h && drawable != this.f13744i) {
            throw new UnsupportedOperationException("Do not set the background drawable; Chip manages its own background drawable.");
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i2) {
        throw new UnsupportedOperationException("Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        throw new UnsupportedOperationException("Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        throw new UnsupportedOperationException("Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.a(z);
        }
    }

    public void setCheckableResource(@BoolRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.a(i2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar == null) {
            this.f13747l = z;
            return;
        }
        if (aVar.D()) {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked == z || (onCheckedChangeListener = this.f13746k) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.a(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i2) {
        setCheckedIconVisible(i2);
    }

    public void setCheckedIconResource(@DrawableRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.b(i2);
        }
    }

    public void setCheckedIconVisible(@BoolRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.c(i2);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.a(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.d(i2);
        }
    }

    public void setChipCornerRadius(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.a(f2);
        }
    }

    public void setChipCornerRadiusResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.e(i2);
        }
    }

    public void setChipDrawable(@NonNull com.google.android.material.chip.a aVar) {
        com.google.android.material.chip.a aVar2 = this.f13743h;
        if (aVar2 != aVar) {
            c(aVar2);
            this.f13743h = aVar;
            a(this.f13743h);
            if (e.i.b.c.r.a.f17937a) {
                this.f13744i = new RippleDrawable(e.i.b.c.r.a.a(this.f13743h.x()), this.f13743h, null);
                this.f13743h.f(false);
                ViewCompat.a(this, this.f13744i);
            } else {
                this.f13743h.f(true);
                ViewCompat.a(this, this.f13743h);
            }
        }
    }

    public void setChipEndPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.b(f2);
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.f(i2);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.b(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i2) {
        setChipIconVisible(i2);
    }

    public void setChipIconResource(@DrawableRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.g(i2);
        }
    }

    public void setChipIconSize(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.c(f2);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.h(i2);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.b(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.i(i2);
        }
    }

    public void setChipIconVisible(@BoolRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.j(i2);
        }
    }

    public void setChipMinHeight(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.d(f2);
        }
    }

    public void setChipMinHeightResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.k(i2);
        }
    }

    public void setChipStartPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.e(f2);
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.l(i2);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.c(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.m(i2);
        }
    }

    public void setChipStrokeWidth(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.f(f2);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.n(i2);
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i2) {
        setText(getResources().getString(i2));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.c(drawable);
        }
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.a(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i2) {
        setCloseIconVisible(i2);
    }

    public void setCloseIconEndPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.g(f2);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.o(i2);
        }
    }

    public void setCloseIconResource(@DrawableRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.p(i2);
        }
    }

    public void setCloseIconSize(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.h(f2);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.q(i2);
        }
    }

    public void setCloseIconStartPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.i(f2);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.r(i2);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.d(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.s(i2);
        }
    }

    public void setCloseIconVisible(@BoolRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.t(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i4 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i2, i3, i4, i5);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i4 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i2, i3, i4, i5);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f13743h == null) {
            return;
        }
        if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
            super.setEllipsize(truncateAt);
            com.google.android.material.chip.a aVar = this.f13743h;
            if (aVar != null) {
                aVar.a(truncateAt);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
    }

    @Override // android.widget.TextView
    public void setGravity(int i2) {
        if (i2 != 8388627) {
            return;
        }
        super.setGravity(i2);
    }

    public void setHideMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.a(hVar);
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.u(i2);
        }
    }

    public void setIconEndPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.j(f2);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.v(i2);
        }
    }

    public void setIconStartPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.k(f2);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.w(i2);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i2) {
        if (i2 <= 1) {
            super.setLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i2) {
        if (i2 <= 1) {
            super.setMaxLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@Px int i2) {
        super.setMaxWidth(i2);
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.x(i2);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i2) {
        if (i2 <= 1) {
            super.setMinLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f13746k = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f13745j = onClickListener;
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.e(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.y(i2);
        }
    }

    public void setShowMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.b(hVar);
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.z(i2);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (this.f13743h == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        CharSequence a2 = a.i.l.a.b().a(charSequence);
        if (this.f13743h.J()) {
            a2 = null;
        }
        super.setText(a2, bufferType);
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.b(charSequence);
        }
    }

    public void setTextAppearance(@Nullable e.i.b.c.q.b bVar) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.a(bVar);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().c(getContext(), getPaint(), this.t);
            a(bVar);
        }
    }

    public void setTextAppearanceResource(@StyleRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.A(i2);
        }
        setTextAppearance(getContext(), i2);
    }

    public void setTextEndPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.l(f2);
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.B(i2);
        }
    }

    public void setTextStartPadding(float f2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.m(f2);
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.C(i2);
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, e.i.b.c.b.chipStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        com.google.android.material.chip.a aVar = this.f13743h;
        return (aVar == null || aVar.m() == null) ? false : true;
    }

    public Chip(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.m = e.b.b.a.a.a.c.ALL_INT;
        this.r = new Rect();
        this.s = new RectF();
        this.t = new a();
        a(attributeSet);
        com.google.android.material.chip.a a2 = com.google.android.material.chip.a.a(context, attributeSet, i2, j.Widget_MaterialComponents_Chip_Action);
        setChipDrawable(a2);
        this.q = new c(this);
        ViewCompat.a(this, this.q);
        d();
        setChecked(this.f13747l);
        a2.e(false);
        setText(a2.z());
        setEllipsize(a2.t());
        setIncludeFontPadding(false);
        if (getTextAppearance() != null) {
            a(getTextAppearance());
        }
        setSingleLine();
        setGravity(8388627);
        e();
    }

    private void b() {
        if (this.m == Integer.MIN_VALUE) {
            setFocusedVirtualView(-1);
        }
    }

    public void setCheckedIconVisible(boolean z) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.b(z);
        }
    }

    public void setChipIconVisible(boolean z) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.c(z);
        }
    }

    public void setCloseIconVisible(boolean z) {
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.d(z);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.A(i2);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().c(context, getPaint(), this.t);
            a(getTextAppearance());
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i2) {
        super.setTextAppearance(i2);
        com.google.android.material.chip.a aVar = this.f13743h;
        if (aVar != null) {
            aVar.A(i2);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().c(getContext(), getPaint(), this.t);
            a(getTextAppearance());
        }
    }

    private void a(@NonNull com.google.android.material.chip.a aVar) {
        aVar.a(this);
    }

    @SuppressLint({"PrivateApi"})
    private boolean a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 10) {
            try {
                Field declaredField = a.k.a.a.class.getDeclaredField("m");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(this.q)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = a.k.a.a.class.getDeclaredMethod("i", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.q, Integer.valueOf(e.b.b.a.a.a.c.ALL_INT));
                    return true;
                }
            } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        return false;
    }

    private boolean a(boolean z) {
        b();
        if (z) {
            if (this.m == -1) {
                setFocusedVirtualView(0);
                return true;
            }
        } else if (this.m == 0) {
            setFocusedVirtualView(-1);
            return true;
        }
        return false;
    }

    private int[] a() {
        int i2 = 0;
        int i3 = isEnabled() ? 1 : 0;
        if (this.p) {
            i3++;
        }
        if (this.o) {
            i3++;
        }
        if (this.n) {
            i3++;
        }
        if (isChecked()) {
            i3++;
        }
        int[] iArr = new int[i3];
        if (isEnabled()) {
            iArr[0] = 16842910;
            i2 = 1;
        }
        if (this.p) {
            iArr[i2] = 16842908;
            i2++;
        }
        if (this.o) {
            iArr[i2] = 16843623;
            i2++;
        }
        if (this.n) {
            iArr[i2] = 16842919;
            i2++;
        }
        if (isChecked()) {
            iArr[i2] = 16842913;
        }
        return iArr;
    }

    private void a(e.i.b.c.q.b bVar) {
        TextPaint paint = getPaint();
        paint.drawableState = this.f13743h.getState();
        bVar.b(getContext(), paint, this.t);
    }
}
