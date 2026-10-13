package com.google.android.material.bottomnavigation;

import a.a.n.g;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.widget.d0;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.k;
import e.i.b.c.d;
import e.i.b.c.j;

/* loaded from: classes.dex */
public class BottomNavigationView extends FrameLayout {

    /* renamed from: e, reason: collision with root package name */
    private final f f13696e;

    /* renamed from: f, reason: collision with root package name */
    private final BottomNavigationMenuView f13697f;

    /* renamed from: g, reason: collision with root package name */
    private final BottomNavigationPresenter f13698g;

    /* renamed from: h, reason: collision with root package name */
    private MenuInflater f13699h;

    /* renamed from: i, reason: collision with root package name */
    private c f13700i;

    /* renamed from: j, reason: collision with root package name */
    private b f13701j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        Bundle f13702g;

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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void a(Parcel parcel, ClassLoader classLoader) {
            this.f13702g = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeBundle(this.f13702g);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader);
        }
    }

    /* loaded from: classes.dex */
    class a implements f.a {
        a() {
        }

        @Override // androidx.appcompat.view.menu.f.a
        public void a(f fVar) {
        }

        @Override // androidx.appcompat.view.menu.f.a
        public boolean a(f fVar, MenuItem menuItem) {
            if (BottomNavigationView.this.f13701j == null || menuItem.getItemId() != BottomNavigationView.this.getSelectedItemId()) {
                return (BottomNavigationView.this.f13700i == null || BottomNavigationView.this.f13700i.a(menuItem)) ? false : true;
            }
            BottomNavigationView.this.f13701j.a(menuItem);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(@NonNull MenuItem menuItem);
    }

    /* loaded from: classes.dex */
    public interface c {
        boolean a(@NonNull MenuItem menuItem);
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    private void a(Context context) {
        View view = new View(context);
        view.setBackgroundColor(androidx.core.content.a.a(context, e.i.b.c.c.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(d.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    private MenuInflater getMenuInflater() {
        if (this.f13699h == null) {
            this.f13699h = new g(getContext());
        }
        return this.f13699h;
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f13697f.getItemBackground();
    }

    @DrawableRes
    @Deprecated
    public int getItemBackgroundResource() {
        return this.f13697f.getItemBackgroundRes();
    }

    @Dimension
    public int getItemIconSize() {
        return this.f13697f.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f13697f.getIconTintList();
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f13697f.getItemTextAppearanceActive();
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f13697f.getItemTextAppearanceInactive();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f13697f.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f13697f.getLabelVisibilityMode();
    }

    public int getMaxItemCount() {
        return 5;
    }

    @NonNull
    public Menu getMenu() {
        return this.f13696e;
    }

    @IdRes
    public int getSelectedItemId() {
        return this.f13697f.getSelectedItemId();
    }

    public void inflateMenu(int i2) {
        this.f13698g.b(true);
        getMenuInflater().inflate(i2, this.f13696e);
        this.f13698g.b(false);
        this.f13698g.a(true);
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return this.f13697f.isItemHorizontalTranslationEnabled();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        this.f13696e.b(savedState.f13702g);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f13702g = new Bundle();
        this.f13696e.d(savedState.f13702g);
        return savedState;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f13697f.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(@DrawableRes int i2) {
        this.f13697f.setItemBackgroundRes(i2);
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        if (this.f13697f.isItemHorizontalTranslationEnabled() != z) {
            this.f13697f.setItemHorizontalTranslationEnabled(z);
            this.f13698g.a(false);
        }
    }

    public void setItemIconSize(@Dimension int i2) {
        this.f13697f.setItemIconSize(i2);
    }

    public void setItemIconSizeRes(@DimenRes int i2) {
        setItemIconSize(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f13697f.setIconTintList(colorStateList);
    }

    public void setItemTextAppearanceActive(@StyleRes int i2) {
        this.f13697f.setItemTextAppearanceActive(i2);
    }

    public void setItemTextAppearanceInactive(@StyleRes int i2) {
        this.f13697f.setItemTextAppearanceInactive(i2);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f13697f.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i2) {
        if (this.f13697f.getLabelVisibilityMode() != i2) {
            this.f13697f.setLabelVisibilityMode(i2);
            this.f13698g.a(false);
        }
    }

    public void setOnNavigationItemReselectedListener(@Nullable b bVar) {
        this.f13701j = bVar;
    }

    public void setOnNavigationItemSelectedListener(@Nullable c cVar) {
        this.f13700i = cVar;
    }

    public void setSelectedItemId(@IdRes int i2) {
        MenuItem findItem = this.f13696e.findItem(i2);
        if (findItem == null || this.f13696e.a(findItem, this.f13698g, 0)) {
            return;
        }
        findItem.setChecked(true);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, e.i.b.c.b.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13698g = new BottomNavigationPresenter();
        this.f13696e = new com.google.android.material.bottomnavigation.a(context);
        this.f13697f = new BottomNavigationMenuView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.f13697f.setLayoutParams(layoutParams);
        this.f13698g.a(this.f13697f);
        this.f13698g.a(1);
        this.f13697f.setPresenter(this.f13698g);
        this.f13696e.a(this.f13698g);
        this.f13698g.a(getContext(), this.f13696e);
        d0 d2 = k.d(context, attributeSet, e.i.b.c.k.BottomNavigationView, i2, j.Widget_Design_BottomNavigationView, e.i.b.c.k.BottomNavigationView_itemTextAppearanceInactive, e.i.b.c.k.BottomNavigationView_itemTextAppearanceActive);
        if (d2.g(e.i.b.c.k.BottomNavigationView_itemIconTint)) {
            this.f13697f.setIconTintList(d2.a(e.i.b.c.k.BottomNavigationView_itemIconTint));
        } else {
            BottomNavigationMenuView bottomNavigationMenuView = this.f13697f;
            bottomNavigationMenuView.setIconTintList(bottomNavigationMenuView.createDefaultColorStateList(R.attr.textColorSecondary));
        }
        setItemIconSize(d2.c(e.i.b.c.k.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(d.design_bottom_navigation_icon_size)));
        if (d2.g(e.i.b.c.k.BottomNavigationView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(d2.g(e.i.b.c.k.BottomNavigationView_itemTextAppearanceInactive, 0));
        }
        if (d2.g(e.i.b.c.k.BottomNavigationView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(d2.g(e.i.b.c.k.BottomNavigationView_itemTextAppearanceActive, 0));
        }
        if (d2.g(e.i.b.c.k.BottomNavigationView_itemTextColor)) {
            setItemTextColor(d2.a(e.i.b.c.k.BottomNavigationView_itemTextColor));
        }
        if (d2.g(e.i.b.c.k.BottomNavigationView_elevation)) {
            ViewCompat.a(this, d2.c(e.i.b.c.k.BottomNavigationView_elevation, 0));
        }
        setLabelVisibilityMode(d2.e(e.i.b.c.k.BottomNavigationView_labelVisibilityMode, -1));
        setItemHorizontalTranslationEnabled(d2.a(e.i.b.c.k.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        this.f13697f.setItemBackgroundRes(d2.g(e.i.b.c.k.BottomNavigationView_itemBackground, 0));
        if (d2.g(e.i.b.c.k.BottomNavigationView_menu)) {
            inflateMenu(d2.g(e.i.b.c.k.BottomNavigationView_menu, 0));
        }
        d2.b();
        addView(this.f13697f, layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            a(context);
        }
        this.f13696e.a(new a());
    }
}
