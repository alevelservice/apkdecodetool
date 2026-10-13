package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.facebook.common.internal.g;
import com.facebook.drawee.view.a;
import e.f.f.i.b;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public class DraweeView<DH extends e.f.f.i.b> extends ImageView {

    /* renamed from: j, reason: collision with root package name */
    private static boolean f3573j = false;

    /* renamed from: e, reason: collision with root package name */
    private final a.C0063a f3574e;

    /* renamed from: f, reason: collision with root package name */
    private float f3575f;

    /* renamed from: g, reason: collision with root package name */
    private b<DH> f3576g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f3577h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f3578i;

    public DraweeView(Context context) {
        super(context);
        this.f3574e = new a.C0063a();
        this.f3575f = 0.0f;
        this.f3577h = false;
        this.f3578i = false;
        a(context);
    }

    private void a(Context context) {
        boolean c2;
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("DraweeView#init");
            }
            if (this.f3577h) {
                if (c2) {
                    return;
                } else {
                    return;
                }
            }
            boolean z = true;
            this.f3577h = true;
            this.f3576g = b.a(null, context);
            if (Build.VERSION.SDK_INT >= 21) {
                ColorStateList imageTintList = getImageTintList();
                if (imageTintList == null) {
                    if (e.f.i.j.b.c()) {
                        e.f.i.j.b.a();
                        return;
                    }
                    return;
                }
                setColorFilter(imageTintList.getDefaultColor());
            }
            if (!f3573j || context.getApplicationInfo().targetSdkVersion < 24) {
                z = false;
            }
            this.f3578i = z;
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    public static void setGlobalLegacyVisibilityHandlingEnabled(boolean z) {
        f3573j = z;
    }

    protected void doAttach() {
        this.f3576g.f();
    }

    protected void doDetach() {
        this.f3576g.g();
    }

    public float getAspectRatio() {
        return this.f3575f;
    }

    @Nullable
    public e.f.f.i.a getController() {
        return this.f3576g.a();
    }

    public DH getHierarchy() {
        return this.f3576g.b();
    }

    @Nullable
    public Drawable getTopLevelDrawable() {
        return this.f3576g.c();
    }

    public boolean hasController() {
        return this.f3576g.a() != null;
    }

    public boolean hasHierarchy() {
        return this.f3576g.d();
    }

    protected void onAttach() {
        doAttach();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
        onAttach();
    }

    protected void onDetach() {
        doDetach();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
        onDetach();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        a();
        onAttach();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i2, int i3) {
        a.C0063a c0063a = this.f3574e;
        c0063a.f3581a = i2;
        c0063a.f3582b = i3;
        a.a(c0063a, this.f3575f, getLayoutParams(), getPaddingLeft() + getPaddingRight(), getPaddingTop() + getPaddingBottom());
        a.C0063a c0063a2 = this.f3574e;
        super.onMeasure(c0063a2.f3581a, c0063a2.f3582b);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        a();
        onDetach();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f3576g.a(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        a();
    }

    public void setAspectRatio(float f2) {
        if (f2 == this.f3575f) {
            return;
        }
        this.f3575f = f2;
        requestLayout();
    }

    public void setController(@Nullable e.f.f.i.a aVar) {
        this.f3576g.a(aVar);
        super.setImageDrawable(this.f3576g.c());
    }

    public void setHierarchy(DH dh) {
        this.f3576g.a((b<DH>) dh);
        super.setImageDrawable(this.f3576g.c());
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageBitmap(Bitmap bitmap) {
        a(getContext());
        this.f3576g.a((e.f.f.i.a) null);
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageDrawable(Drawable drawable) {
        a(getContext());
        this.f3576g.a((e.f.f.i.a) null);
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageResource(int i2) {
        a(getContext());
        this.f3576g.a((e.f.f.i.a) null);
        super.setImageResource(i2);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageURI(Uri uri) {
        a(getContext());
        this.f3576g.a((e.f.f.i.a) null);
        super.setImageURI(uri);
    }

    public void setLegacyVisibilityHandlingEnabled(boolean z) {
        this.f3578i = z;
    }

    @Override // android.view.View
    public String toString() {
        g.b a2 = g.a(this);
        b<DH> bVar = this.f3576g;
        a2.a("holder", bVar != null ? bVar.toString() : "<no holder set>");
        return a2.toString();
    }

    public DraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3574e = new a.C0063a();
        this.f3575f = 0.0f;
        this.f3577h = false;
        this.f3578i = false;
        a(context);
    }

    public DraweeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f3574e = new a.C0063a();
        this.f3575f = 0.0f;
        this.f3577h = false;
        this.f3578i = false;
        a(context);
    }

    @TargetApi(21)
    public DraweeView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f3574e = new a.C0063a();
        this.f3575f = 0.0f;
        this.f3577h = false;
        this.f3578i = false;
        a(context);
    }

    private void a() {
        Drawable drawable;
        if (!this.f3578i || (drawable = getDrawable()) == null) {
            return;
        }
        drawable.setVisible(getVisibility() == 0, false);
    }
}
