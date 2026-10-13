package com.example.errorWidget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import androidx.databinding.g;
import com.example.native_webview.h;
import com.example.native_webview.i;
import com.example.native_webview.j.e;

/* loaded from: classes.dex */
public class DropDownBanner extends LinearLayout {
    public static final String ERROR_BANNER_TAG = "Error Banner";

    /* renamed from: e, reason: collision with root package name */
    private Animation f3417e;

    /* renamed from: f, reason: collision with root package name */
    private Animation f3418f;

    /* renamed from: g, reason: collision with root package name */
    private int f3419g;

    /* renamed from: h, reason: collision with root package name */
    private Interpolator f3420h;

    /* renamed from: i, reason: collision with root package name */
    private Interpolator f3421i;

    /* renamed from: j, reason: collision with root package name */
    private int f3422j;

    /* renamed from: k, reason: collision with root package name */
    private e f3423k;

    /* loaded from: classes.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DropDownBanner.this.hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Animation.AnimationListener {
        b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            DropDownBanner.this.f3423k.c().setVisibility(8);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: e, reason: collision with root package name */
        private String f3430e;

        /* renamed from: f, reason: collision with root package name */
        private Context f3431f;

        /* renamed from: g, reason: collision with root package name */
        private ViewGroup f3432g;

        /* renamed from: d, reason: collision with root package name */
        private int f3429d = 80;

        /* renamed from: c, reason: collision with root package name */
        private int f3428c = 500;

        /* renamed from: a, reason: collision with root package name */
        private Interpolator f3426a = new LinearInterpolator();

        /* renamed from: b, reason: collision with root package name */
        private Interpolator f3427b = new LinearInterpolator();

        public c(Context context, ViewGroup viewGroup) {
            this.f3431f = context;
            this.f3432g = viewGroup;
            this.f3430e = context.getString(i.error_tryAgain_upper);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c a(Interpolator interpolator) {
            this.f3426a = interpolator;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c b(Interpolator interpolator) {
            this.f3427b = interpolator;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c a(int i2) {
            this.f3428c = i2;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c a(String str) {
            this.f3430e = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public DropDownBanner a() {
            return new DropDownBanner(this);
        }
    }

    public DropDownBanner(c cVar) {
        super(cVar.f3431f);
        this.f3419g = cVar.f3429d;
        this.f3420h = cVar.f3426a;
        this.f3421i = cVar.f3427b;
        this.f3422j = cVar.f3428c;
        this.f3423k = (e) g.a((LayoutInflater) cVar.f3432g.getContext().getSystemService("layout_inflater"), h.error_banner_basic, cVar.f3432g, false);
        this.f3423k.w.setText(cVar.f3430e);
        a();
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        View findViewWithTag = cVar.f3432g.findViewWithTag(ERROR_BANNER_TAG);
        if (findViewWithTag != null) {
            cVar.f3432g.removeView(findViewWithTag);
        }
        setTag(ERROR_BANNER_TAG);
        cVar.f3432g.addView(this);
        addView(this.f3423k.c());
        this.f3423k.v.setOnClickListener(new a());
    }

    private void a() {
        this.f3417e = new TranslateAnimation(0.0f, 0.0f, -this.f3419g, 0.0f);
        this.f3417e.setDuration(this.f3422j);
        this.f3418f = new TranslateAnimation(0.0f, 0.0f, 0.0f, (-this.f3419g) * 2);
        this.f3418f.setDuration(this.f3422j);
        Interpolator interpolator = this.f3420h;
        if (interpolator != null) {
            this.f3417e.setInterpolator(interpolator);
        }
        Interpolator interpolator2 = this.f3421i;
        if (interpolator2 != null) {
            this.f3418f.setInterpolator(interpolator2);
        }
    }

    public void hide() {
        if (this.f3423k.c().getVisibility() != 0) {
            return;
        }
        this.f3418f.setAnimationListener(new b());
        this.f3423k.c().startAnimation(this.f3418f);
    }

    public void show() {
        if (this.f3423k.c().getVisibility() != 0) {
            this.f3423k.c().setVisibility(0);
            this.f3423k.c().startAnimation(this.f3417e);
        }
    }
}
