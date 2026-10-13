package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.d0;
import androidx.appcompat.widget.p;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.e;
import com.google.android.material.internal.k;
import com.google.android.material.internal.l;
import e.i.b.c.f;
import e.i.b.c.h;
import e.i.b.c.i;
import e.i.b.c.j;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {
    public static final int BOX_BACKGROUND_FILLED = 1;
    public static final int BOX_BACKGROUND_NONE = 0;
    public static final int BOX_BACKGROUND_OUTLINE = 2;
    private final int A;

    @ColorInt
    private int B;

    @ColorInt
    private int C;
    private Drawable D;
    private final Rect E;
    private final RectF F;
    private Typeface G;
    private boolean H;
    private Drawable I;
    private CharSequence J;
    private CheckableImageButton K;
    private boolean L;
    private Drawable M;
    private Drawable N;
    private ColorStateList O;
    private boolean P;
    private PorterDuff.Mode Q;
    private boolean R;
    private ColorStateList S;
    private ColorStateList T;

    @ColorInt
    private final int U;

    @ColorInt
    private final int V;

    @ColorInt
    private int W;

    @ColorInt
    private final int a0;
    private boolean b0;
    private boolean c0;
    final com.google.android.material.internal.c collapsingTextHelper;
    boolean counterEnabled;
    private ValueAnimator d0;

    /* renamed from: e, reason: collision with root package name */
    private final FrameLayout f13972e;
    private boolean e0;
    EditText editText;

    /* renamed from: f, reason: collision with root package name */
    private CharSequence f13973f;
    private boolean f0;

    /* renamed from: g, reason: collision with root package name */
    private final com.google.android.material.textfield.b f13974g;
    private boolean g0;

    /* renamed from: h, reason: collision with root package name */
    private int f13975h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f13976i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f13977j;

    /* renamed from: k, reason: collision with root package name */
    private final int f13978k;

    /* renamed from: l, reason: collision with root package name */
    private final int f13979l;
    private boolean m;
    private CharSequence n;
    private boolean o;
    private GradientDrawable p;
    private final int q;
    private final int r;
    private int s;
    private final int t;
    private float u;
    private float v;
    private float w;
    private float x;
    private int y;
    private final int z;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface BoxBackgroundMode {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        CharSequence f13980g;

        /* renamed from: h, reason: collision with root package name */
        boolean f13981h;

        /* loaded from: classes.dex */
        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f13980g) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            TextUtils.writeToParcel(this.f13980g, parcel, i2);
            parcel.writeInt(this.f13981h ? 1 : 0);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f13980g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f13981h = parcel.readInt() == 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout.this.updateLabelState(!r0.g0);
            TextInputLayout textInputLayout = TextInputLayout.this;
            if (textInputLayout.counterEnabled) {
                textInputLayout.updateCounter(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextInputLayout.this.passwordVisibilityToggleRequested(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.collapsingTextHelper.b(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* loaded from: classes.dex */
    public static class d extends androidx.core.view.a {

        /* renamed from: d, reason: collision with root package name */
        private final TextInputLayout f13985d;

        public d(TextInputLayout textInputLayout) {
            this.f13985d = textInputLayout;
        }

        @Override // androidx.core.view.a
        public void a(View view, androidx.core.view.f0.d dVar) {
            super.a(view, dVar);
            EditText editText = this.f13985d.getEditText();
            Editable text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f13985d.getHint();
            CharSequence error = this.f13985d.getError();
            CharSequence counterOverflowDescription = this.f13985d.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(hint);
            boolean z3 = !TextUtils.isEmpty(error);
            boolean z4 = false;
            boolean z5 = z3 || !TextUtils.isEmpty(counterOverflowDescription);
            if (z) {
                dVar.g(text);
            } else if (z2) {
                dVar.g(hint);
            }
            if (z2) {
                dVar.d(hint);
                if (!z && z2) {
                    z4 = true;
                }
                dVar.o(z4);
            }
            if (z5) {
                if (!z3) {
                    error = counterOverflowDescription;
                }
                dVar.c(error);
                dVar.f(true);
            }
        }

        @Override // androidx.core.view.a
        public void c(View view, AccessibilityEvent accessibilityEvent) {
            super.c(view, accessibilityEvent);
            EditText editText = this.f13985d.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            if (TextUtils.isEmpty(text)) {
                text = this.f13985d.getHint();
            }
            if (TextUtils.isEmpty(text)) {
                return;
            }
            accessibilityEvent.getText().add(text);
        }
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    private void a(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.editText;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.editText;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean c2 = this.f13974g.c();
        ColorStateList colorStateList2 = this.S;
        if (colorStateList2 != null) {
            this.collapsingTextHelper.a(colorStateList2);
            this.collapsingTextHelper.b(this.S);
        }
        if (!isEnabled) {
            this.collapsingTextHelper.a(ColorStateList.valueOf(this.a0));
            this.collapsingTextHelper.b(ColorStateList.valueOf(this.a0));
        } else if (c2) {
            this.collapsingTextHelper.a(this.f13974g.f());
        } else if (this.f13976i && (textView = this.f13977j) != null) {
            this.collapsingTextHelper.a(textView.getTextColors());
        } else if (z4 && (colorStateList = this.T) != null) {
            this.collapsingTextHelper.a(colorStateList);
        }
        if (!z3 && (!isEnabled() || (!z4 && !c2))) {
            if (z2 || !this.b0) {
                b(z);
                return;
            }
            return;
        }
        if (z2 || this.b0) {
            a(z);
        }
    }

    private void b() {
        if (this.I != null) {
            if (this.P || this.R) {
                this.I = androidx.core.graphics.drawable.a.i(this.I).mutate();
                if (this.P) {
                    androidx.core.graphics.drawable.a.a(this.I, this.O);
                }
                if (this.R) {
                    androidx.core.graphics.drawable.a.a(this.I, this.Q);
                }
                CheckableImageButton checkableImageButton = this.K;
                if (checkableImageButton != null) {
                    Drawable drawable = checkableImageButton.getDrawable();
                    Drawable drawable2 = this.I;
                    if (drawable != drawable2) {
                        this.K.setImageDrawable(drawable2);
                    }
                }
            }
        }
    }

    private void c() {
        int i2 = this.s;
        if (i2 == 0) {
            this.p = null;
            return;
        }
        if (i2 == 2 && this.m && !(this.p instanceof com.google.android.material.textfield.a)) {
            this.p = new com.google.android.material.textfield.a();
        } else {
            if (this.p instanceof GradientDrawable) {
                return;
            }
            this.p = new GradientDrawable();
        }
    }

    private int d() {
        EditText editText = this.editText;
        if (editText == null) {
            return 0;
        }
        int i2 = this.s;
        if (i2 == 1) {
            return editText.getTop();
        }
        if (i2 != 2) {
            return 0;
        }
        return editText.getTop() + f();
    }

    private int e() {
        int i2 = this.s;
        if (i2 == 1) {
            return getBoxBackground().getBounds().top + this.t;
        }
        if (i2 != 2) {
            return getPaddingTop();
        }
        return getBoxBackground().getBounds().top - f();
    }

    private int f() {
        float d2;
        if (!this.m) {
            return 0;
        }
        int i2 = this.s;
        if (i2 == 0 || i2 == 1) {
            d2 = this.collapsingTextHelper.d();
        } else {
            if (i2 != 2) {
                return 0;
            }
            d2 = this.collapsingTextHelper.d() / 2.0f;
        }
        return (int) d2;
    }

    private void g() {
        if (h()) {
            ((com.google.android.material.textfield.a) this.p).b();
        }
    }

    @NonNull
    private Drawable getBoxBackground() {
        int i2 = this.s;
        if (i2 != 1 && i2 != 2) {
            throw new IllegalStateException();
        }
        return this.p;
    }

    private float[] getCornerRadiiAsArray() {
        if (!l.a(this)) {
            float f2 = this.u;
            float f3 = this.v;
            float f4 = this.w;
            float f5 = this.x;
            return new float[]{f2, f2, f3, f3, f4, f4, f5, f5};
        }
        float f6 = this.v;
        float f7 = this.u;
        float f8 = this.x;
        float f9 = this.w;
        return new float[]{f6, f6, f7, f7, f8, f8, f9, f9};
    }

    private boolean h() {
        return this.m && !TextUtils.isEmpty(this.n) && (this.p instanceof com.google.android.material.textfield.a);
    }

    private void i() {
        Drawable background;
        int i2 = Build.VERSION.SDK_INT;
        if ((i2 != 21 && i2 != 22) || (background = this.editText.getBackground()) == null || this.e0) {
            return;
        }
        Drawable newDrawable = background.getConstantState().newDrawable();
        if (background instanceof DrawableContainer) {
            this.e0 = e.a((DrawableContainer) background, newDrawable.getConstantState());
        }
        if (this.e0) {
            return;
        }
        ViewCompat.a(this.editText, newDrawable);
        this.e0 = true;
        k();
    }

    private boolean j() {
        EditText editText = this.editText;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private void k() {
        c();
        if (this.s != 0) {
            p();
        }
        r();
    }

    private void l() {
        if (h()) {
            RectF rectF = this.F;
            this.collapsingTextHelper.a(rectF);
            a(rectF);
            ((com.google.android.material.textfield.a) this.p).a(rectF);
        }
    }

    private void m() {
        int i2 = this.s;
        if (i2 != 1) {
            if (i2 == 2 && this.W == 0) {
                this.W = this.T.getColorForState(getDrawableState(), this.T.getDefaultColor());
                return;
            }
            return;
        }
        this.y = 0;
    }

    private boolean n() {
        return this.H && (j() || this.L);
    }

    private void o() {
        Drawable background;
        EditText editText = this.editText;
        if (editText == null || (background = editText.getBackground()) == null) {
            return;
        }
        if (p.a(background)) {
            background = background.mutate();
        }
        com.google.android.material.internal.d.a(this, this.editText, new Rect());
        Rect bounds = background.getBounds();
        if (bounds.left != bounds.right) {
            Rect rect = new Rect();
            background.getPadding(rect);
            background.setBounds(bounds.left - rect.left, bounds.top, bounds.right + (rect.right * 2), this.editText.getBottom());
        }
    }

    private void p() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f13972e.getLayoutParams();
        int f2 = f();
        if (f2 != layoutParams.topMargin) {
            layoutParams.topMargin = f2;
            this.f13972e.requestLayout();
        }
    }

    private void q() {
        if (this.editText == null) {
            return;
        }
        if (n()) {
            if (this.K == null) {
                this.K = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(h.design_text_input_password_icon, (ViewGroup) this.f13972e, false);
                this.K.setImageDrawable(this.I);
                this.K.setContentDescription(this.J);
                this.f13972e.addView(this.K);
                this.K.setOnClickListener(new b());
            }
            EditText editText = this.editText;
            if (editText != null && ViewCompat.o(editText) <= 0) {
                this.editText.setMinimumHeight(ViewCompat.o(this.K));
            }
            this.K.setVisibility(0);
            this.K.setChecked(this.L);
            if (this.M == null) {
                this.M = new ColorDrawable();
            }
            this.M.setBounds(0, 0, this.K.getMeasuredWidth(), 1);
            Drawable[] a2 = TextViewCompat.a(this.editText);
            if (a2[2] != this.M) {
                this.N = a2[2];
            }
            TextViewCompat.a(this.editText, a2[0], a2[1], this.M, a2[3]);
            this.K.setPadding(this.editText.getPaddingLeft(), this.editText.getPaddingTop(), this.editText.getPaddingRight(), this.editText.getPaddingBottom());
            return;
        }
        CheckableImageButton checkableImageButton = this.K;
        if (checkableImageButton != null && checkableImageButton.getVisibility() == 0) {
            this.K.setVisibility(8);
        }
        if (this.M != null) {
            Drawable[] a3 = TextViewCompat.a(this.editText);
            if (a3[2] == this.M) {
                TextViewCompat.a(this.editText, a3[0], a3[1], this.N, a3[3]);
                this.M = null;
            }
        }
    }

    private void r() {
        if (this.s == 0 || this.p == null || this.editText == null || getRight() == 0) {
            return;
        }
        int left = this.editText.getLeft();
        int d2 = d();
        int right = this.editText.getRight();
        int bottom = this.editText.getBottom() + this.q;
        if (this.s == 2) {
            int i2 = this.A;
            left += i2 / 2;
            d2 -= i2 / 2;
            right -= i2 / 2;
            bottom += i2 / 2;
        }
        this.p.setBounds(left, d2, right, bottom);
        a();
        o();
    }

    private void setEditText(EditText editText) {
        if (this.editText == null) {
            boolean z = editText instanceof TextInputEditText;
            this.editText = editText;
            k();
            setTextInputAccessibilityDelegate(new d(this));
            if (!j()) {
                this.collapsingTextHelper.c(this.editText.getTypeface());
            }
            this.collapsingTextHelper.a(this.editText.getTextSize());
            int gravity = this.editText.getGravity();
            this.collapsingTextHelper.b((gravity & (-113)) | 48);
            this.collapsingTextHelper.d(gravity);
            this.editText.addTextChangedListener(new a());
            if (this.S == null) {
                this.S = this.editText.getHintTextColors();
            }
            if (this.m) {
                if (TextUtils.isEmpty(this.n)) {
                    this.f13973f = this.editText.getHint();
                    setHint(this.f13973f);
                    this.editText.setHint((CharSequence) null);
                }
                this.o = true;
            }
            if (this.f13977j != null) {
                updateCounter(this.editText.getText().length());
            }
            this.f13974g.a();
            q();
            a(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.n)) {
            return;
        }
        this.n = charSequence;
        this.collapsingTextHelper.a(charSequence);
        if (this.b0) {
            return;
        }
        l();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            this.f13972e.addView(view, layoutParams2);
            this.f13972e.setLayoutParams(layoutParams);
            p();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i2, layoutParams);
    }

    @VisibleForTesting
    void animateToExpansionFraction(float f2) {
        if (this.collapsingTextHelper.i() == f2) {
            return;
        }
        if (this.d0 == null) {
            this.d0 = new ValueAnimator();
            this.d0.setInterpolator(e.i.b.c.l.a.f17897b);
            this.d0.setDuration(167L);
            this.d0.addUpdateListener(new c());
        }
        this.d0.setFloatValues(this.collapsingTextHelper.i(), f2);
        this.d0.start();
    }

    @VisibleForTesting
    boolean cutoutIsOpen() {
        return h() && ((com.google.android.material.textfield.a) this.p).a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        EditText editText;
        if (this.f13973f != null && (editText = this.editText) != null) {
            boolean z = this.o;
            this.o = false;
            CharSequence hint = editText.getHint();
            this.editText.setHint(this.f13973f);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i2);
                return;
            } finally {
                this.editText.setHint(hint);
                this.o = z;
            }
        }
        super.dispatchProvideAutofillStructure(viewStructure, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.g0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.g0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        GradientDrawable gradientDrawable = this.p;
        if (gradientDrawable != null) {
            gradientDrawable.draw(canvas);
        }
        super.draw(canvas);
        if (this.m) {
            this.collapsingTextHelper.a(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f0) {
            return;
        }
        this.f0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        updateLabelState(ViewCompat.D(this) && isEnabled());
        updateEditTextBackground();
        r();
        updateTextInputBoxState();
        com.google.android.material.internal.c cVar = this.collapsingTextHelper;
        if (cVar != null ? cVar.a(drawableState) | false : false) {
            invalidate();
        }
        this.f0 = false;
    }

    public int getBoxBackgroundColor() {
        return this.C;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.w;
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.x;
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.v;
    }

    public float getBoxCornerRadiusTopStart() {
        return this.u;
    }

    public int getBoxStrokeColor() {
        return this.W;
    }

    public int getCounterMaxLength() {
        return this.f13975h;
    }

    @Nullable
    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.counterEnabled && this.f13976i && (textView = this.f13977j) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.S;
    }

    @Nullable
    public EditText getEditText() {
        return this.editText;
    }

    @Nullable
    public CharSequence getError() {
        if (this.f13974g.l()) {
            return this.f13974g.d();
        }
        return null;
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        return this.f13974g.e();
    }

    @VisibleForTesting
    final int getErrorTextCurrentColor() {
        return this.f13974g.e();
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.f13974g.m()) {
            return this.f13974g.g();
        }
        return null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        return this.f13974g.h();
    }

    @Nullable
    public CharSequence getHint() {
        if (this.m) {
            return this.n;
        }
        return null;
    }

    @VisibleForTesting
    final float getHintCollapsedTextHeight() {
        return this.collapsingTextHelper.d();
    }

    @VisibleForTesting
    final int getHintCurrentCollapsedTextColor() {
        return this.collapsingTextHelper.f();
    }

    @Nullable
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.J;
    }

    @Nullable
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.I;
    }

    @Nullable
    public Typeface getTypeface() {
        return this.G;
    }

    public boolean isCounterEnabled() {
        return this.counterEnabled;
    }

    public boolean isErrorEnabled() {
        return this.f13974g.l();
    }

    @VisibleForTesting
    final boolean isHelperTextDisplayed() {
        return this.f13974g.i();
    }

    public boolean isHelperTextEnabled() {
        return this.f13974g.m();
    }

    public boolean isHintAnimationEnabled() {
        return this.c0;
    }

    public boolean isHintEnabled() {
        return this.m;
    }

    @VisibleForTesting
    final boolean isHintExpanded() {
        return this.b0;
    }

    public boolean isPasswordVisibilityToggleEnabled() {
        return this.H;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isProvidingHint() {
        return this.o;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        EditText editText;
        super.onLayout(z, i2, i3, i4, i5);
        if (this.p != null) {
            r();
        }
        if (!this.m || (editText = this.editText) == null) {
            return;
        }
        Rect rect = this.E;
        com.google.android.material.internal.d.a(this, editText, rect);
        int compoundPaddingLeft = rect.left + this.editText.getCompoundPaddingLeft();
        int compoundPaddingRight = rect.right - this.editText.getCompoundPaddingRight();
        int e2 = e();
        this.collapsingTextHelper.b(compoundPaddingLeft, rect.top + this.editText.getCompoundPaddingTop(), compoundPaddingRight, rect.bottom - this.editText.getCompoundPaddingBottom());
        this.collapsingTextHelper.a(compoundPaddingLeft, e2, compoundPaddingRight, (i5 - i3) - getPaddingBottom());
        this.collapsingTextHelper.m();
        if (!h() || this.b0) {
            return;
        }
        l();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        q();
        super.onMeasure(i2, i3);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        setError(savedState.f13980g);
        if (savedState.f13981h) {
            passwordVisibilityToggleRequested(true);
        }
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f13974g.c()) {
            savedState.f13980g = getError();
        }
        savedState.f13981h = this.L;
        return savedState;
    }

    public void passwordVisibilityToggleRequested(boolean z) {
        if (this.H) {
            int selectionEnd = this.editText.getSelectionEnd();
            if (j()) {
                this.editText.setTransformationMethod(null);
                this.L = true;
            } else {
                this.editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                this.L = false;
            }
            this.K.setChecked(this.L);
            if (z) {
                this.K.jumpDrawablesToCurrentState();
            }
            this.editText.setSelection(selectionEnd);
        }
    }

    public void setBoxBackgroundColor(@ColorInt int i2) {
        if (this.C != i2) {
            this.C = i2;
            a();
        }
    }

    public void setBoxBackgroundColorResource(@ColorRes int i2) {
        setBoxBackgroundColor(androidx.core.content.a.a(getContext(), i2));
    }

    public void setBoxBackgroundMode(int i2) {
        if (i2 == this.s) {
            return;
        }
        this.s = i2;
        k();
    }

    public void setBoxCornerRadii(float f2, float f3, float f4, float f5) {
        if (this.u == f2 && this.v == f3 && this.w == f5 && this.x == f4) {
            return;
        }
        this.u = f2;
        this.v = f3;
        this.w = f5;
        this.x = f4;
        a();
    }

    public void setBoxCornerRadiiResources(@DimenRes int i2, @DimenRes int i3, @DimenRes int i4, @DimenRes int i5) {
        setBoxCornerRadii(getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i3), getContext().getResources().getDimension(i4), getContext().getResources().getDimension(i5));
    }

    public void setBoxStrokeColor(@ColorInt int i2) {
        if (this.W != i2) {
            this.W = i2;
            updateTextInputBoxState();
        }
    }

    public void setCounterEnabled(boolean z) {
        if (this.counterEnabled != z) {
            if (z) {
                this.f13977j = new AppCompatTextView(getContext());
                this.f13977j.setId(f.textinput_counter);
                Typeface typeface = this.G;
                if (typeface != null) {
                    this.f13977j.setTypeface(typeface);
                }
                this.f13977j.setMaxLines(1);
                setTextAppearanceCompatWithErrorFallback(this.f13977j, this.f13979l);
                this.f13974g.a(this.f13977j, 2);
                EditText editText = this.editText;
                if (editText == null) {
                    updateCounter(0);
                } else {
                    updateCounter(editText.getText().length());
                }
            } else {
                this.f13974g.b(this.f13977j, 2);
                this.f13977j = null;
            }
            this.counterEnabled = z;
        }
    }

    public void setCounterMaxLength(int i2) {
        if (this.f13975h != i2) {
            if (i2 > 0) {
                this.f13975h = i2;
            } else {
                this.f13975h = -1;
            }
            if (this.counterEnabled) {
                EditText editText = this.editText;
                updateCounter(editText == null ? 0 : editText.getText().length());
            }
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.S = colorStateList;
        this.T = colorStateList;
        if (this.editText != null) {
            updateLabelState(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        a(this, z);
        super.setEnabled(z);
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.f13974g.l()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            this.f13974g.a(charSequence);
        } else {
            this.f13974g.j();
        }
    }

    public void setErrorEnabled(boolean z) {
        this.f13974g.a(z);
    }

    public void setErrorTextAppearance(@StyleRes int i2) {
        this.f13974g.b(i2);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.f13974g.a(colorStateList);
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (isHelperTextEnabled()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!isHelperTextEnabled()) {
                setHelperTextEnabled(true);
            }
            this.f13974g.b(charSequence);
        }
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.f13974g.b(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        this.f13974g.b(z);
    }

    public void setHelperTextTextAppearance(@StyleRes int i2) {
        this.f13974g.c(i2);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.m) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.c0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.m) {
            this.m = z;
            if (!this.m) {
                this.o = false;
                if (!TextUtils.isEmpty(this.n) && TextUtils.isEmpty(this.editText.getHint())) {
                    this.editText.setHint(this.n);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.editText.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.n)) {
                        setHint(hint);
                    }
                    this.editText.setHint((CharSequence) null);
                }
                this.o = true;
            }
            if (this.editText != null) {
                p();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int i2) {
        this.collapsingTextHelper.a(i2);
        this.T = this.collapsingTextHelper.b();
        if (this.editText != null) {
            updateLabelState(false);
            p();
        }
    }

    public void setPasswordVisibilityToggleContentDescription(@StringRes int i2) {
        setPasswordVisibilityToggleContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i2) {
        setPasswordVisibilityToggleDrawable(i2 != 0 ? a.a.k.a.a.c(getContext(), i2) : null);
    }

    public void setPasswordVisibilityToggleEnabled(boolean z) {
        EditText editText;
        if (this.H != z) {
            this.H = z;
            if (!z && this.L && (editText = this.editText) != null) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            this.L = false;
            q();
        }
    }

    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.O = colorStateList;
        this.P = true;
        b();
    }

    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.Q = mode;
        this.R = true;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
    
        if (r3.getTextColors().getDefaultColor() == (-65281)) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setTextAppearanceCompatWithErrorFallback(android.widget.TextView r3, @androidx.annotation.StyleRes int r4) {
        /*
            r2 = this;
            r0 = 1
            androidx.core.widget.TextViewCompat.d(r3, r4)     // Catch: java.lang.Exception -> L1b
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L1b
            r1 = 23
            if (r4 < r1) goto L18
            android.content.res.ColorStateList r4 = r3.getTextColors()     // Catch: java.lang.Exception -> L1b
            int r4 = r4.getDefaultColor()     // Catch: java.lang.Exception -> L1b
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r4 != r1) goto L18
            goto L1c
        L18:
            r4 = 0
            r0 = 0
            goto L1c
        L1b:
        L1c:
            if (r0 == 0) goto L30
            int r4 = e.i.b.c.j.TextAppearance_AppCompat_Caption
            androidx.core.widget.TextViewCompat.d(r3, r4)
            android.content.Context r4 = r2.getContext()
            int r0 = e.i.b.c.c.design_error
            int r4 = androidx.core.content.a.a(r4, r0)
            r3.setTextColor(r4)
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.setTextAppearanceCompatWithErrorFallback(android.widget.TextView, int):void");
    }

    public void setTextInputAccessibilityDelegate(d dVar) {
        EditText editText = this.editText;
        if (editText != null) {
            ViewCompat.a(editText, dVar);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.G) {
            this.G = typeface;
            this.collapsingTextHelper.c(typeface);
            this.f13974g.a(typeface);
            TextView textView = this.f13977j;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    void updateCounter(int i2) {
        boolean z = this.f13976i;
        if (this.f13975h == -1) {
            this.f13977j.setText(String.valueOf(i2));
            this.f13977j.setContentDescription(null);
            this.f13976i = false;
        } else {
            if (ViewCompat.d(this.f13977j) == 1) {
                ViewCompat.f(this.f13977j, 0);
            }
            this.f13976i = i2 > this.f13975h;
            boolean z2 = this.f13976i;
            if (z != z2) {
                setTextAppearanceCompatWithErrorFallback(this.f13977j, z2 ? this.f13978k : this.f13979l);
                if (this.f13976i) {
                    ViewCompat.f(this.f13977j, 1);
                }
            }
            this.f13977j.setText(getContext().getString(i.character_counter_pattern, Integer.valueOf(i2), Integer.valueOf(this.f13975h)));
            this.f13977j.setContentDescription(getContext().getString(i.character_counter_content_description, Integer.valueOf(i2), Integer.valueOf(this.f13975h)));
        }
        if (this.editText == null || z == this.f13976i) {
            return;
        }
        updateLabelState(false);
        updateTextInputBoxState();
        updateEditTextBackground();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateEditTextBackground() {
        Drawable background;
        TextView textView;
        EditText editText = this.editText;
        if (editText == null || (background = editText.getBackground()) == null) {
            return;
        }
        i();
        if (p.a(background)) {
            background = background.mutate();
        }
        if (this.f13974g.c()) {
            background.setColorFilter(androidx.appcompat.widget.f.a(this.f13974g.e(), PorterDuff.Mode.SRC_IN));
        } else if (this.f13976i && (textView = this.f13977j) != null) {
            background.setColorFilter(androidx.appcompat.widget.f.a(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            androidx.core.graphics.drawable.a.b(background);
            this.editText.refreshDrawableState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateLabelState(boolean z) {
        a(z, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateTextInputBoxState() {
        TextView textView;
        if (this.p == null || this.s == 0) {
            return;
        }
        EditText editText = this.editText;
        boolean z = editText != null && editText.hasFocus();
        EditText editText2 = this.editText;
        boolean z2 = editText2 != null && editText2.isHovered();
        if (this.s == 2) {
            if (!isEnabled()) {
                this.B = this.a0;
            } else if (this.f13974g.c()) {
                this.B = this.f13974g.e();
            } else if (this.f13976i && (textView = this.f13977j) != null) {
                this.B = textView.getCurrentTextColor();
            } else if (z) {
                this.B = this.W;
            } else if (z2) {
                this.B = this.V;
            } else {
                this.B = this.U;
            }
            if ((z2 || z) && isEnabled()) {
                this.y = this.A;
            } else {
                this.y = this.z;
            }
            a();
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, e.i.b.c.b.textInputStyle);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13974g = new com.google.android.material.textfield.b(this);
        this.E = new Rect();
        this.F = new RectF();
        this.collapsingTextHelper = new com.google.android.material.internal.c(this);
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        this.f13972e = new FrameLayout(context);
        this.f13972e.setAddStatesFromChildren(true);
        addView(this.f13972e);
        this.collapsingTextHelper.b(e.i.b.c.l.a.f17896a);
        this.collapsingTextHelper.a(e.i.b.c.l.a.f17896a);
        this.collapsingTextHelper.b(8388659);
        d0 d2 = k.d(context, attributeSet, e.i.b.c.k.TextInputLayout, i2, j.Widget_Design_TextInputLayout, new int[0]);
        this.m = d2.a(e.i.b.c.k.TextInputLayout_hintEnabled, true);
        setHint(d2.e(e.i.b.c.k.TextInputLayout_android_hint));
        this.c0 = d2.a(e.i.b.c.k.TextInputLayout_hintAnimationEnabled, true);
        this.q = context.getResources().getDimensionPixelOffset(e.i.b.c.d.mtrl_textinput_box_bottom_offset);
        this.r = context.getResources().getDimensionPixelOffset(e.i.b.c.d.mtrl_textinput_box_label_cutout_padding);
        this.t = d2.b(e.i.b.c.k.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.u = d2.a(e.i.b.c.k.TextInputLayout_boxCornerRadiusTopStart, 0.0f);
        this.v = d2.a(e.i.b.c.k.TextInputLayout_boxCornerRadiusTopEnd, 0.0f);
        this.w = d2.a(e.i.b.c.k.TextInputLayout_boxCornerRadiusBottomEnd, 0.0f);
        this.x = d2.a(e.i.b.c.k.TextInputLayout_boxCornerRadiusBottomStart, 0.0f);
        this.C = d2.a(e.i.b.c.k.TextInputLayout_boxBackgroundColor, 0);
        this.W = d2.a(e.i.b.c.k.TextInputLayout_boxStrokeColor, 0);
        this.z = context.getResources().getDimensionPixelSize(e.i.b.c.d.mtrl_textinput_box_stroke_width_default);
        this.A = context.getResources().getDimensionPixelSize(e.i.b.c.d.mtrl_textinput_box_stroke_width_focused);
        this.y = this.z;
        setBoxBackgroundMode(d2.d(e.i.b.c.k.TextInputLayout_boxBackgroundMode, 0));
        if (d2.g(e.i.b.c.k.TextInputLayout_android_textColorHint)) {
            ColorStateList a2 = d2.a(e.i.b.c.k.TextInputLayout_android_textColorHint);
            this.T = a2;
            this.S = a2;
        }
        this.U = androidx.core.content.a.a(context, e.i.b.c.c.mtrl_textinput_default_box_stroke_color);
        this.a0 = androidx.core.content.a.a(context, e.i.b.c.c.mtrl_textinput_disabled_color);
        this.V = androidx.core.content.a.a(context, e.i.b.c.c.mtrl_textinput_hovered_box_stroke_color);
        if (d2.g(e.i.b.c.k.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(d2.g(e.i.b.c.k.TextInputLayout_hintTextAppearance, 0));
        }
        int g2 = d2.g(e.i.b.c.k.TextInputLayout_errorTextAppearance, 0);
        boolean a3 = d2.a(e.i.b.c.k.TextInputLayout_errorEnabled, false);
        int g3 = d2.g(e.i.b.c.k.TextInputLayout_helperTextTextAppearance, 0);
        boolean a4 = d2.a(e.i.b.c.k.TextInputLayout_helperTextEnabled, false);
        CharSequence e2 = d2.e(e.i.b.c.k.TextInputLayout_helperText);
        boolean a5 = d2.a(e.i.b.c.k.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(d2.d(e.i.b.c.k.TextInputLayout_counterMaxLength, -1));
        this.f13979l = d2.g(e.i.b.c.k.TextInputLayout_counterTextAppearance, 0);
        this.f13978k = d2.g(e.i.b.c.k.TextInputLayout_counterOverflowTextAppearance, 0);
        this.H = d2.a(e.i.b.c.k.TextInputLayout_passwordToggleEnabled, false);
        this.I = d2.b(e.i.b.c.k.TextInputLayout_passwordToggleDrawable);
        this.J = d2.e(e.i.b.c.k.TextInputLayout_passwordToggleContentDescription);
        if (d2.g(e.i.b.c.k.TextInputLayout_passwordToggleTint)) {
            this.P = true;
            this.O = d2.a(e.i.b.c.k.TextInputLayout_passwordToggleTint);
        }
        if (d2.g(e.i.b.c.k.TextInputLayout_passwordToggleTintMode)) {
            this.R = true;
            this.Q = l.a(d2.d(e.i.b.c.k.TextInputLayout_passwordToggleTintMode, -1), null);
        }
        d2.b();
        setHelperTextEnabled(a4);
        setHelperText(e2);
        setHelperTextTextAppearance(g3);
        setErrorEnabled(a3);
        setErrorTextAppearance(g2);
        setCounterEnabled(a5);
        b();
        ViewCompat.g(this, 2);
    }

    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.J = charSequence;
        CheckableImageButton checkableImageButton = this.K;
        if (checkableImageButton != null) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.I = drawable;
        CheckableImageButton checkableImageButton = this.K;
        if (checkableImageButton != null) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    private void b(boolean z) {
        ValueAnimator valueAnimator = this.d0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.d0.cancel();
        }
        if (z && this.c0) {
            animateToExpansionFraction(0.0f);
        } else {
            this.collapsingTextHelper.b(0.0f);
        }
        if (h() && ((com.google.android.material.textfield.a) this.p).a()) {
            g();
        }
        this.b0 = true;
    }

    private static void a(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                a((ViewGroup) childAt, z);
            }
        }
    }

    private void a() {
        int i2;
        Drawable drawable;
        if (this.p == null) {
            return;
        }
        m();
        EditText editText = this.editText;
        if (editText != null && this.s == 2) {
            if (editText.getBackground() != null) {
                this.D = this.editText.getBackground();
            }
            ViewCompat.a(this.editText, (Drawable) null);
        }
        EditText editText2 = this.editText;
        if (editText2 != null && this.s == 1 && (drawable = this.D) != null) {
            ViewCompat.a(editText2, drawable);
        }
        int i3 = this.y;
        if (i3 > -1 && (i2 = this.B) != 0) {
            this.p.setStroke(i3, i2);
        }
        this.p.setCornerRadii(getCornerRadiiAsArray());
        this.p.setColor(this.C);
        invalidate();
    }

    private void a(boolean z) {
        ValueAnimator valueAnimator = this.d0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.d0.cancel();
        }
        if (z && this.c0) {
            animateToExpansionFraction(1.0f);
        } else {
            this.collapsingTextHelper.b(1.0f);
        }
        this.b0 = false;
        if (h()) {
            l();
        }
    }

    private void a(RectF rectF) {
        float f2 = rectF.left;
        int i2 = this.r;
        rectF.left = f2 - i2;
        rectF.top -= i2;
        rectF.right += i2;
        rectF.bottom += i2;
    }
}
