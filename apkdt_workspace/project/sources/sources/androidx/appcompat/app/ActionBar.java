package androidx.appcompat.app;

import a.a.n.b;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class ActionBar {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface DisplayOptions {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface NavigationMode {
    }

    /* loaded from: classes.dex */
    public interface a {
        void a(boolean z);
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class b {
        public abstract CharSequence a();

        public abstract View b();

        public abstract Drawable c();

        public abstract CharSequence d();

        public abstract void e();
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public a.a.n.b a(b.a aVar) {
        return null;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void a(Configuration configuration) {
    }

    public abstract void a(@Nullable Drawable drawable);

    public abstract void a(CharSequence charSequence);

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public abstract boolean a(int i2, KeyEvent keyEvent);

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean a(KeyEvent keyEvent) {
        return false;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public abstract void b(CharSequence charSequence);

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public abstract void b(boolean z);

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public abstract void c(boolean z);

    public abstract void d(boolean z);

    public abstract void e(boolean z);

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean e() {
        return false;
    }

    public abstract void f(boolean z);

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public abstract boolean f();

    public abstract int g();

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public abstract void g(boolean z);

    public abstract Context h();

    public abstract void i();

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean j() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean l() {
        return false;
    }

    public abstract void m();

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f727a;

        public LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f727a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.a.j.ActionBarLayout);
            this.f727a = obtainStyledAttributes.getInt(a.a.j.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f727a = 0;
            this.f727a = 8388627;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f727a = 0;
            this.f727a = layoutParams.f727a;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f727a = 0;
        }
    }
}
