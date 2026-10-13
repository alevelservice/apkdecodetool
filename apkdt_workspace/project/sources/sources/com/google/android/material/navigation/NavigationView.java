package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.widget.d0;
import androidx.core.view.ViewCompat;
import androidx.core.view.e0;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.f;
import com.google.android.material.internal.g;
import com.google.android.material.internal.k;
import e.i.b.c.j;

/* loaded from: classes.dex */
public class NavigationView extends ScrimInsetsFrameLayout {

    /* renamed from: j, reason: collision with root package name */
    private static final int[] f13897j = {R.attr.state_checked};

    /* renamed from: k, reason: collision with root package name */
    private static final int[] f13898k = {-16842910};

    /* renamed from: f, reason: collision with root package name */
    private final f f13899f;

    /* renamed from: g, reason: collision with root package name */
    private final g f13900g;

    /* renamed from: h, reason: collision with root package name */
    private final int f13901h;

    /* renamed from: i, reason: collision with root package name */
    private MenuInflater f13902i;
    b listener;

    /* loaded from: classes.dex */
    class a implements f.a {
        a() {
        }

        @Override // androidx.appcompat.view.menu.f.a
        public void a(androidx.appcompat.view.menu.f fVar) {
        }

        @Override // androidx.appcompat.view.menu.f.a
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            b bVar = NavigationView.this.listener;
            return bVar != null && bVar.a(menuItem);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        boolean a(@NonNull MenuItem menuItem);
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    private ColorStateList a(int i2) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i2, typedValue, true)) {
            return null;
        }
        ColorStateList b2 = a.a.k.a.a.b(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(a.a.a.colorPrimary, typedValue, true)) {
            return null;
        }
        int i3 = typedValue.data;
        int defaultColor = b2.getDefaultColor();
        return new ColorStateList(new int[][]{f13898k, f13897j, FrameLayout.EMPTY_STATE_SET}, new int[]{b2.getColorForState(f13898k, defaultColor), i3, defaultColor});
    }

    private MenuInflater getMenuInflater() {
        if (this.f13902i == null) {
            this.f13902i = new a.a.n.g(getContext());
        }
        return this.f13902i;
    }

    public void addHeaderView(@NonNull View view) {
        this.f13900g.a(view);
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.f13900g.c();
    }

    public int getHeaderCount() {
        return this.f13900g.d();
    }

    public View getHeaderView(int i2) {
        return this.f13900g.a(i2);
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f13900g.e();
    }

    @Dimension
    public int getItemHorizontalPadding() {
        return this.f13900g.f();
    }

    @Dimension
    public int getItemIconPadding() {
        return this.f13900g.g();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f13900g.i();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f13900g.h();
    }

    public Menu getMenu() {
        return this.f13899f;
    }

    public View inflateHeaderView(@LayoutRes int i2) {
        return this.f13900g.b(i2);
    }

    public void inflateMenu(int i2) {
        this.f13900g.b(true);
        getMenuInflater().inflate(i2, this.f13899f);
        this.f13900g.b(false);
        this.f13900g.a(false);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    protected void onInsetsChanged(e0 e0Var) {
        this.f13900g.a(e0Var);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), this.f13901h), 1073741824);
        } else if (mode == 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(this.f13901h, 1073741824);
        }
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
        this.f13899f.b(savedState.f13903g);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f13903g = new Bundle();
        this.f13899f.d(savedState.f13903g);
        return savedState;
    }

    public void removeHeaderView(@NonNull View view) {
        this.f13900g.b(view);
    }

    public void setCheckedItem(@IdRes int i2) {
        MenuItem findItem = this.f13899f.findItem(i2);
        if (findItem != null) {
            this.f13900g.a((i) findItem);
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f13900g.a(drawable);
    }

    public void setItemBackgroundResource(@DrawableRes int i2) {
        setItemBackground(androidx.core.content.a.c(getContext(), i2));
    }

    public void setItemHorizontalPadding(@Dimension int i2) {
        this.f13900g.d(i2);
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i2) {
        this.f13900g.d(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconPadding(@Dimension int i2) {
        this.f13900g.e(i2);
    }

    public void setItemIconPaddingResource(int i2) {
        this.f13900g.e(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f13900g.a(colorStateList);
    }

    public void setItemTextAppearance(@StyleRes int i2) {
        this.f13900g.f(i2);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f13900g.b(colorStateList);
    }

    public void setNavigationItemSelectedListener(@Nullable b bVar) {
        this.listener = bVar;
    }

    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        public Bundle f13903g;

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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f13903g = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeBundle(this.f13903g);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, e.i.b.c.b.navigationViewStyle);
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        ColorStateList a2;
        boolean z;
        int i3;
        this.f13900g = new g();
        this.f13899f = new com.google.android.material.internal.f(context);
        d0 d2 = k.d(context, attributeSet, e.i.b.c.k.NavigationView, i2, j.Widget_Design_NavigationView, new int[0]);
        ViewCompat.a(this, d2.b(e.i.b.c.k.NavigationView_android_background));
        if (d2.g(e.i.b.c.k.NavigationView_elevation)) {
            ViewCompat.a(this, d2.c(e.i.b.c.k.NavigationView_elevation, 0));
        }
        ViewCompat.a(this, d2.a(e.i.b.c.k.NavigationView_android_fitsSystemWindows, false));
        this.f13901h = d2.c(e.i.b.c.k.NavigationView_android_maxWidth, 0);
        if (d2.g(e.i.b.c.k.NavigationView_itemIconTint)) {
            a2 = d2.a(e.i.b.c.k.NavigationView_itemIconTint);
        } else {
            a2 = a(R.attr.textColorSecondary);
        }
        if (d2.g(e.i.b.c.k.NavigationView_itemTextAppearance)) {
            i3 = d2.g(e.i.b.c.k.NavigationView_itemTextAppearance, 0);
            z = true;
        } else {
            z = false;
            i3 = 0;
        }
        ColorStateList a3 = d2.g(e.i.b.c.k.NavigationView_itemTextColor) ? d2.a(e.i.b.c.k.NavigationView_itemTextColor) : null;
        if (!z && a3 == null) {
            a3 = a(R.attr.textColorPrimary);
        }
        Drawable b2 = d2.b(e.i.b.c.k.NavigationView_itemBackground);
        if (d2.g(e.i.b.c.k.NavigationView_itemHorizontalPadding)) {
            this.f13900g.d(d2.c(e.i.b.c.k.NavigationView_itemHorizontalPadding, 0));
        }
        int c2 = d2.c(e.i.b.c.k.NavigationView_itemIconPadding, 0);
        this.f13899f.a(new a());
        this.f13900g.c(1);
        this.f13900g.a(context, this.f13899f);
        this.f13900g.a(a2);
        if (z) {
            this.f13900g.f(i3);
        }
        this.f13900g.b(a3);
        this.f13900g.a(b2);
        this.f13900g.e(c2);
        this.f13899f.a(this.f13900g);
        addView((View) this.f13900g.a((ViewGroup) this));
        if (d2.g(e.i.b.c.k.NavigationView_menu)) {
            inflateMenu(d2.g(e.i.b.c.k.NavigationView_menu, 0));
        }
        if (d2.g(e.i.b.c.k.NavigationView_headerLayout)) {
            inflateHeaderView(d2.g(e.i.b.c.k.NavigationView_headerLayout, 0));
        }
        d2.b();
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem findItem = this.f13899f.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.f13900g.a((i) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }
}
