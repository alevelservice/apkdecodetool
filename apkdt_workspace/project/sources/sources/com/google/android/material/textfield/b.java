package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.legacy.widget.Space;
import e.i.b.c.d;
import e.i.b.c.f;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IndicatorViewController.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private final Context f13989a;

    /* renamed from: b, reason: collision with root package name */
    private final TextInputLayout f13990b;

    /* renamed from: c, reason: collision with root package name */
    private LinearLayout f13991c;

    /* renamed from: d, reason: collision with root package name */
    private int f13992d;

    /* renamed from: e, reason: collision with root package name */
    private FrameLayout f13993e;

    /* renamed from: f, reason: collision with root package name */
    private int f13994f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private Animator f13995g;

    /* renamed from: h, reason: collision with root package name */
    private final float f13996h;

    /* renamed from: i, reason: collision with root package name */
    private int f13997i;

    /* renamed from: j, reason: collision with root package name */
    private int f13998j;

    /* renamed from: k, reason: collision with root package name */
    private CharSequence f13999k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f14000l;
    private TextView m;
    private int n;
    private CharSequence o;
    private boolean p;
    private TextView q;
    private int r;
    private Typeface s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IndicatorViewController.java */
    /* loaded from: classes.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f14001e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ TextView f14002f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f14003g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ TextView f14004h;

        a(int i2, TextView textView, int i3, TextView textView2) {
            this.f14001e = i2;
            this.f14002f = textView;
            this.f14003g = i3;
            this.f14004h = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.this.f13997i = this.f14001e;
            b.this.f13995g = null;
            TextView textView = this.f14002f;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f14003g != 1 || b.this.m == null) {
                    return;
                }
                b.this.m.setText((CharSequence) null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f14004h;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public b(TextInputLayout textInputLayout) {
        this.f13989a = textInputLayout.getContext();
        this.f13990b = textInputLayout;
        this.f13996h = this.f13989a.getResources().getDimensionPixelSize(d.design_textinput_caption_translate_y);
    }

    @Nullable
    private TextView d(int i2) {
        if (i2 == 1) {
            return this.m;
        }
        if (i2 != 2) {
            return null;
        }
        return this.q;
    }

    private boolean e(int i2) {
        return (i2 != 1 || this.m == null || TextUtils.isEmpty(this.f13999k)) ? false : true;
    }

    private boolean f(int i2) {
        return (i2 != 2 || this.q == null || TextUtils.isEmpty(this.o)) ? false : true;
    }

    private boolean n() {
        return (this.f13991c == null || this.f13990b.getEditText() == null) ? false : true;
    }

    boolean a(int i2) {
        return i2 == 0 || i2 == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(CharSequence charSequence) {
        b();
        this.o = charSequence;
        this.q.setText(charSequence);
        if (this.f13997i != 2) {
            this.f13998j = 2;
        }
        a(this.f13997i, this.f13998j, a(this.q, charSequence));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return e(this.f13998j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence g() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public int h() {
        TextView textView = this.q;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return f(this.f13997i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        this.f13999k = null;
        b();
        if (this.f13997i == 1) {
            if (this.p && !TextUtils.isEmpty(this.o)) {
                this.f13998j = 2;
            } else {
                this.f13998j = 0;
            }
        }
        a(this.f13997i, this.f13998j, a(this.m, (CharSequence) null));
    }

    void k() {
        b();
        if (this.f13997i == 2) {
            this.f13998j = 0;
        }
        a(this.f13997i, this.f13998j, a(this.q, (CharSequence) null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l() {
        return this.f14000l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        return this.p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@StyleRes int i2) {
        this.r = i2;
        TextView textView = this.q;
        if (textView != null) {
            TextViewCompat.d(textView, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence d() {
        return this.f13999k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public int e() {
        TextView textView = this.m;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList f() {
        TextView textView = this.m;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CharSequence charSequence) {
        b();
        this.f13999k = charSequence;
        this.m.setText(charSequence);
        if (this.f13997i != 1) {
            this.f13998j = 1;
        }
        a(this.f13997i, this.f13998j, a(this.m, charSequence));
    }

    void b() {
        Animator animator = this.f13995g;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(TextView textView, int i2) {
        FrameLayout frameLayout;
        if (this.f13991c == null) {
            return;
        }
        if (a(i2) && (frameLayout = this.f13993e) != null) {
            this.f13994f--;
            a(frameLayout, this.f13994f);
            this.f13993e.removeView(textView);
        } else {
            this.f13991c.removeView(textView);
        }
        this.f13992d--;
        a(this.f13991c, this.f13992d);
    }

    private boolean a(TextView textView, @Nullable CharSequence charSequence) {
        return ViewCompat.D(this.f13990b) && this.f13990b.isEnabled() && !(this.f13998j == this.f13997i && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private void a(int i2, int i3, boolean z) {
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f13995g = animatorSet;
            ArrayList arrayList = new ArrayList();
            a(arrayList, this.p, this.q, 2, i2, i3);
            a(arrayList, this.f14000l, this.m, 1, i2, i3);
            e.i.b.c.l.b.a(animatorSet, arrayList);
            animatorSet.addListener(new a(i3, d(i2), i2, d(i3)));
            animatorSet.start();
        } else {
            a(i2, i3);
        }
        this.f13990b.updateEditTextBackground();
        this.f13990b.updateLabelState(z);
        this.f13990b.updateTextInputBoxState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        if (this.p == z) {
            return;
        }
        b();
        if (z) {
            this.q = new AppCompatTextView(this.f13989a);
            this.q.setId(f.textinput_helper_text);
            Typeface typeface = this.s;
            if (typeface != null) {
                this.q.setTypeface(typeface);
            }
            this.q.setVisibility(4);
            ViewCompat.f(this.q, 1);
            c(this.r);
            a(this.q, 1);
        } else {
            k();
            b(this.q, 1);
            this.q = null;
            this.f13990b.updateEditTextBackground();
            this.f13990b.updateTextInputBoxState();
        }
        this.p = z;
    }

    private void a(int i2, int i3) {
        TextView d2;
        TextView d3;
        if (i2 == i3) {
            return;
        }
        if (i3 != 0 && (d3 = d(i3)) != null) {
            d3.setVisibility(0);
            d3.setAlpha(1.0f);
        }
        if (i2 != 0 && (d2 = d(i2)) != null) {
            d2.setVisibility(4);
            if (i2 == 1) {
                d2.setText((CharSequence) null);
            }
        }
        this.f13997i = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@StyleRes int i2) {
        this.n = i2;
        TextView textView = this.m;
        if (textView != null) {
            this.f13990b.setTextAppearanceCompatWithErrorFallback(textView, i2);
        }
    }

    private void a(List<Animator> list, boolean z, TextView textView, int i2, int i3, int i4) {
        if (textView == null || !z) {
            return;
        }
        if (i2 == i4 || i2 == i3) {
            list.add(a(textView, i4 == i2));
            if (i4 == i2) {
                list.add(a(textView));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@Nullable ColorStateList colorStateList) {
        TextView textView = this.q;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    private ObjectAnimator a(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(e.i.b.c.l.a.f17896a);
        return ofFloat;
    }

    private ObjectAnimator a(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f13996h, 0.0f);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(e.i.b.c.l.a.f17899d);
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (n()) {
            ViewCompat.b(this.f13991c, ViewCompat.r(this.f13990b.getEditText()), 0, ViewCompat.q(this.f13990b.getEditText()), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(TextView textView, int i2) {
        if (this.f13991c == null && this.f13993e == null) {
            this.f13991c = new LinearLayout(this.f13989a);
            this.f13991c.setOrientation(0);
            this.f13990b.addView(this.f13991c, -1, -2);
            this.f13993e = new FrameLayout(this.f13989a);
            this.f13991c.addView(this.f13993e, -1, new FrameLayout.LayoutParams(-2, -2));
            this.f13991c.addView(new Space(this.f13989a), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.f13990b.getEditText() != null) {
                a();
            }
        }
        if (a(i2)) {
            this.f13993e.setVisibility(0);
            this.f13993e.addView(textView);
            this.f13994f++;
        } else {
            this.f13991c.addView(textView, i2);
        }
        this.f13991c.setVisibility(0);
        this.f13992d++;
    }

    private void a(ViewGroup viewGroup, int i2) {
        if (i2 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        if (this.f14000l == z) {
            return;
        }
        b();
        if (z) {
            this.m = new AppCompatTextView(this.f13989a);
            this.m.setId(f.textinput_error);
            Typeface typeface = this.s;
            if (typeface != null) {
                this.m.setTypeface(typeface);
            }
            b(this.n);
            this.m.setVisibility(4);
            ViewCompat.f(this.m, 1);
            a(this.m, 0);
        } else {
            j();
            b(this.m, 0);
            this.m = null;
            this.f13990b.updateEditTextBackground();
            this.f13990b.updateTextInputBoxState();
        }
        this.f14000l = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Typeface typeface) {
        if (typeface != this.s) {
            this.s = typeface;
            a(this.m, typeface);
            a(this.q, typeface);
        }
    }

    private void a(@Nullable TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable ColorStateList colorStateList) {
        TextView textView = this.m;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }
}
