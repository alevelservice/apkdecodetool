package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    private ColorStateList A;
    private ColorStateList B;
    private boolean C;
    private boolean D;
    private final ArrayList<View> E;
    private final ArrayList<View> F;
    private final int[] G;
    private final ActionMenuView.d H;
    private e0 I;
    private ActionMenuPresenter J;
    private d K;
    private m.a L;
    private f.a M;
    private boolean N;
    private final Runnable O;

    /* renamed from: e, reason: collision with root package name */
    private ActionMenuView f1250e;

    /* renamed from: f, reason: collision with root package name */
    private TextView f1251f;

    /* renamed from: g, reason: collision with root package name */
    private TextView f1252g;

    /* renamed from: h, reason: collision with root package name */
    private ImageButton f1253h;

    /* renamed from: i, reason: collision with root package name */
    private ImageView f1254i;

    /* renamed from: j, reason: collision with root package name */
    private Drawable f1255j;

    /* renamed from: k, reason: collision with root package name */
    private CharSequence f1256k;

    /* renamed from: l, reason: collision with root package name */
    private Context f1257l;
    private int m;
    int mButtonGravity;
    ImageButton mCollapseButtonView;
    View mExpandedActionView;
    e mOnMenuItemClickListener;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private w u;
    private int v;
    private int w;
    private int x;
    private CharSequence y;
    private CharSequence z;

    /* loaded from: classes.dex */
    class a implements ActionMenuView.d {
        a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.d
        public boolean onMenuItemClick(MenuItem menuItem) {
            e eVar = Toolbar.this.mOnMenuItemClickListener;
            if (eVar != null) {
                return eVar.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.showOverflowMenu();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.collapseActionView();
        }
    }

    /* loaded from: classes.dex */
    public interface e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(@NonNull Context context) {
        this(context, null);
    }

    private void a(View view, boolean z) {
        LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams = generateDefaultLayoutParams();
        } else if (!checkLayoutParams(layoutParams2)) {
            layoutParams = generateLayoutParams(layoutParams2);
        } else {
            layoutParams = (LayoutParams) layoutParams2;
        }
        layoutParams.f1258b = 1;
        if (z && this.mExpandedActionView != null) {
            view.setLayoutParams(layoutParams);
            this.F.add(view);
        } else {
            addView(view, layoutParams);
        }
    }

    private void b() {
        if (this.f1254i == null) {
            this.f1254i = new AppCompatImageView(getContext());
        }
    }

    private void c() {
        d();
        if (this.f1250e.peekMenu() == null) {
            androidx.appcompat.view.menu.f fVar = (androidx.appcompat.view.menu.f) this.f1250e.getMenu();
            if (this.K == null) {
                this.K = new d();
            }
            this.f1250e.setExpandedActionViewsExclusive(true);
            fVar.a(this.K, this.f1257l);
        }
    }

    private void d() {
        if (this.f1250e == null) {
            this.f1250e = new ActionMenuView(getContext());
            this.f1250e.setPopupTheme(this.m);
            this.f1250e.setOnMenuItemClickListener(this.H);
            this.f1250e.setMenuCallbacks(this.L, this.M);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f727a = 8388613 | (this.mButtonGravity & 112);
            this.f1250e.setLayoutParams(generateDefaultLayoutParams);
            a((View) this.f1250e, false);
        }
    }

    private void e() {
        if (this.f1253h == null) {
            this.f1253h = new AppCompatImageButton(getContext(), null, a.a.a.toolbarNavigationButtonStyle);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f727a = 8388611 | (this.mButtonGravity & 112);
            this.f1253h.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    private void f() {
        removeCallbacks(this.O);
        post(this.O);
    }

    private boolean g() {
        if (!this.N) {
            return false;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (d(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    private MenuInflater getMenuInflater() {
        return new a.a.n.g(getContext());
    }

    void addChildrenForExpandedActionView() {
        for (int size = this.F.size() - 1; size >= 0; size--) {
            addView(this.F.get(size));
        }
        this.F.clear();
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean canShowOverflowMenu() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f1250e) != null && actionMenuView.isOverflowReserved();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public void collapseActionView() {
        d dVar = this.K;
        androidx.appcompat.view.menu.i iVar = dVar == null ? null : dVar.f1265f;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    public void dismissPopupMenus() {
        ActionMenuView actionMenuView = this.f1250e;
        if (actionMenuView != null) {
            actionMenuView.dismissPopupMenus();
        }
    }

    void ensureCollapseButtonView() {
        if (this.mCollapseButtonView == null) {
            this.mCollapseButtonView = new AppCompatImageButton(getContext(), null, a.a.a.toolbarNavigationButtonStyle);
            this.mCollapseButtonView.setImageDrawable(this.f1255j);
            this.mCollapseButtonView.setContentDescription(this.f1256k);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f727a = 8388611 | (this.mButtonGravity & 112);
            generateDefaultLayoutParams.f1258b = 2;
            this.mCollapseButtonView.setLayoutParams(generateDefaultLayoutParams);
            this.mCollapseButtonView.setOnClickListener(new c());
        }
    }

    @Nullable
    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.mCollapseButtonView;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    @Nullable
    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.mCollapseButtonView;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        w wVar = this.u;
        if (wVar != null) {
            return wVar.a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i2 = this.w;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        w wVar = this.u;
        if (wVar != null) {
            return wVar.b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        w wVar = this.u;
        if (wVar != null) {
            return wVar.c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        w wVar = this.u;
        if (wVar != null) {
            return wVar.d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i2 = this.v;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.f peekMenu;
        ActionMenuView actionMenuView = this.f1250e;
        if ((actionMenuView == null || (peekMenu = actionMenuView.peekMenu()) == null || !peekMenu.hasVisibleItems()) ? false : true) {
            return Math.max(getContentInsetEnd(), Math.max(this.w, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        if (ViewCompat.n(this) == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (ViewCompat.n(this) == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.v, 0));
        }
        return getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f1254i;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f1254i;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        c();
        return this.f1250e.getMenu();
    }

    @Nullable
    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f1253h;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    @Nullable
    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f1253h;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.J;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        c();
        return this.f1250e.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f1257l;
    }

    public int getPopupTheme() {
        return this.m;
    }

    public CharSequence getSubtitle() {
        return this.z;
    }

    @Nullable
    @RestrictTo({RestrictTo.a.TESTS})
    final TextView getSubtitleTextView() {
        return this.f1252g;
    }

    public CharSequence getTitle() {
        return this.y;
    }

    public int getTitleMarginBottom() {
        return this.t;
    }

    public int getTitleMarginEnd() {
        return this.r;
    }

    public int getTitleMarginStart() {
        return this.q;
    }

    public int getTitleMarginTop() {
        return this.s;
    }

    @Nullable
    @RestrictTo({RestrictTo.a.TESTS})
    final TextView getTitleTextView() {
        return this.f1251f;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public o getWrapper() {
        if (this.I == null) {
            this.I = new e0(this, true);
        }
        return this.I;
    }

    public boolean hasExpandedActionView() {
        d dVar = this.K;
        return (dVar == null || dVar.f1265f == null) ? false : true;
    }

    public boolean hideOverflowMenu() {
        ActionMenuView actionMenuView = this.f1250e;
        return actionMenuView != null && actionMenuView.hideOverflowMenu();
    }

    public void inflateMenu(@MenuRes int i2) {
        getMenuInflater().inflate(i2, getMenu());
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean isOverflowMenuShowPending() {
        ActionMenuView actionMenuView = this.f1250e;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuView actionMenuView = this.f1250e;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowing();
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean isTitleTruncated() {
        Layout layout;
        TextView textView = this.f1251f;
        if (textView == null || (layout = textView.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i2 = 0; i2 < lineCount; i2++) {
            if (layout.getEllipsisCount(i2) > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.O);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.D = false;
        }
        if (!this.D) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.D = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.D = false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x02a6 A[LOOP:0: B:41:0x02a4->B:42:0x02a6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02c8 A[LOOP:1: B:45:0x02c6->B:46:0x02c8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0302 A[LOOP:2: B:54:0x0300->B:55:0x0302, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x022c  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 791
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        char c2;
        char c3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int[] iArr = this.G;
        if (j0.a(this)) {
            c2 = 1;
            c3 = 0;
        } else {
            c2 = 0;
            c3 = 1;
        }
        if (d(this.f1253h)) {
            a(this.f1253h, i2, 0, i3, 0, this.p);
            i4 = this.f1253h.getMeasuredWidth() + a(this.f1253h);
            i5 = Math.max(0, this.f1253h.getMeasuredHeight() + b(this.f1253h));
            i6 = View.combineMeasuredStates(0, this.f1253h.getMeasuredState());
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
        }
        if (d(this.mCollapseButtonView)) {
            a(this.mCollapseButtonView, i2, 0, i3, 0, this.p);
            i4 = this.mCollapseButtonView.getMeasuredWidth() + a(this.mCollapseButtonView);
            i5 = Math.max(i5, this.mCollapseButtonView.getMeasuredHeight() + b(this.mCollapseButtonView));
            i6 = View.combineMeasuredStates(i6, this.mCollapseButtonView.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i4);
        iArr[c2] = Math.max(0, currentContentInsetStart - i4);
        if (d(this.f1250e)) {
            a(this.f1250e, i2, max, i3, 0, this.p);
            i7 = this.f1250e.getMeasuredWidth() + a(this.f1250e);
            i5 = Math.max(i5, this.f1250e.getMeasuredHeight() + b(this.f1250e));
            i6 = View.combineMeasuredStates(i6, this.f1250e.getMeasuredState());
        } else {
            i7 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i7);
        iArr[c3] = Math.max(0, currentContentInsetEnd - i7);
        if (d(this.mExpandedActionView)) {
            max2 += a(this.mExpandedActionView, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, this.mExpandedActionView.getMeasuredHeight() + b(this.mExpandedActionView));
            i6 = View.combineMeasuredStates(i6, this.mExpandedActionView.getMeasuredState());
        }
        if (d(this.f1254i)) {
            max2 += a(this.f1254i, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, this.f1254i.getMeasuredHeight() + b(this.f1254i));
            i6 = View.combineMeasuredStates(i6, this.f1254i.getMeasuredState());
        }
        int childCount = getChildCount();
        int i11 = i5;
        int i12 = max2;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (((LayoutParams) childAt.getLayoutParams()).f1258b == 0 && d(childAt)) {
                i12 += a(childAt, i2, i12, i3, 0, iArr);
                i11 = Math.max(i11, childAt.getMeasuredHeight() + b(childAt));
                i6 = View.combineMeasuredStates(i6, childAt.getMeasuredState());
            }
        }
        int i14 = this.s + this.t;
        int i15 = this.q + this.r;
        if (d(this.f1251f)) {
            a(this.f1251f, i2, i12 + i15, i3, i14, iArr);
            int measuredWidth = this.f1251f.getMeasuredWidth() + a(this.f1251f);
            i10 = this.f1251f.getMeasuredHeight() + b(this.f1251f);
            i8 = View.combineMeasuredStates(i6, this.f1251f.getMeasuredState());
            i9 = measuredWidth;
        } else {
            i8 = i6;
            i9 = 0;
            i10 = 0;
        }
        if (d(this.f1252g)) {
            i9 = Math.max(i9, a(this.f1252g, i2, i12 + i15, i3, i10 + i14, iArr));
            i10 += this.f1252g.getMeasuredHeight() + b(this.f1252g);
            i8 = View.combineMeasuredStates(i8, this.f1252g.getMeasuredState());
        }
        int max3 = Math.max(i11, i10);
        int paddingLeft = i12 + i9 + getPaddingLeft() + getPaddingRight();
        int paddingTop = max3 + getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i2, (-16777216) & i8);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i3, i8 << 16);
        if (g()) {
            resolveSizeAndState2 = 0;
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        ActionMenuView actionMenuView = this.f1250e;
        androidx.appcompat.view.menu.f peekMenu = actionMenuView != null ? actionMenuView.peekMenu() : null;
        int i2 = savedState.f1259g;
        if (i2 != 0 && this.K != null && peekMenu != null && (findItem = peekMenu.findItem(i2)) != null) {
            findItem.expandActionView();
        }
        if (savedState.f1260h) {
            f();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i2);
        }
        a();
        this.u.a(i2 == 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        androidx.appcompat.view.menu.i iVar;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        d dVar = this.K;
        if (dVar != null && (iVar = dVar.f1265f) != null) {
            savedState.f1259g = iVar.getItemId();
        }
        savedState.f1260h = isOverflowMenuShowing();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.C = false;
        }
        if (!this.C) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    void removeChildrenForExpandedActionView() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((LayoutParams) childAt.getLayoutParams()).f1258b != 2 && childAt != this.f1250e) {
                removeViewAt(childCount);
                this.F.add(childAt);
            }
        }
    }

    public void setCollapseContentDescription(@StringRes int i2) {
        setCollapseContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setCollapseIcon(@DrawableRes int i2) {
        setCollapseIcon(a.a.k.a.a.c(getContext(), i2));
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setCollapsible(boolean z) {
        this.N = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i2) {
        if (i2 < 0) {
            i2 = e.b.b.a.a.a.c.ALL_INT;
        }
        if (i2 != this.w) {
            this.w = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i2) {
        if (i2 < 0) {
            i2 = e.b.b.a.a.a.c.ALL_INT;
        }
        if (i2 != this.v) {
            this.v = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetsAbsolute(int i2, int i3) {
        a();
        this.u.a(i2, i3);
    }

    public void setContentInsetsRelative(int i2, int i3) {
        a();
        this.u.b(i2, i3);
    }

    public void setLogo(@DrawableRes int i2) {
        setLogo(a.a.k.a.a.c(getContext(), i2));
    }

    public void setLogoDescription(@StringRes int i2) {
        setLogoDescription(getContext().getText(i2));
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setMenu(androidx.appcompat.view.menu.f fVar, ActionMenuPresenter actionMenuPresenter) {
        if (fVar == null && this.f1250e == null) {
            return;
        }
        d();
        androidx.appcompat.view.menu.f peekMenu = this.f1250e.peekMenu();
        if (peekMenu == fVar) {
            return;
        }
        if (peekMenu != null) {
            peekMenu.b(this.J);
            peekMenu.b(this.K);
        }
        if (this.K == null) {
            this.K = new d();
        }
        actionMenuPresenter.c(true);
        if (fVar != null) {
            fVar.a(actionMenuPresenter, this.f1257l);
            fVar.a(this.K, this.f1257l);
        } else {
            actionMenuPresenter.a(this.f1257l, (androidx.appcompat.view.menu.f) null);
            this.K.a(this.f1257l, (androidx.appcompat.view.menu.f) null);
            actionMenuPresenter.a(true);
            this.K.a(true);
        }
        this.f1250e.setPopupTheme(this.m);
        this.f1250e.setPresenter(actionMenuPresenter);
        this.J = actionMenuPresenter;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setMenuCallbacks(m.a aVar, f.a aVar2) {
        this.L = aVar;
        this.M = aVar2;
        ActionMenuView actionMenuView = this.f1250e;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(aVar, aVar2);
        }
    }

    public void setNavigationContentDescription(@StringRes int i2) {
        setNavigationContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setNavigationIcon(@DrawableRes int i2) {
        setNavigationIcon(a.a.k.a.a.c(getContext(), i2));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        e();
        this.f1253h.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.mOnMenuItemClickListener = eVar;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        c();
        this.f1250e.setOverflowIcon(drawable);
    }

    public void setPopupTheme(@StyleRes int i2) {
        if (this.m != i2) {
            this.m = i2;
            if (i2 == 0) {
                this.f1257l = getContext();
            } else {
                this.f1257l = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setSubtitle(@StringRes int i2) {
        setSubtitle(getContext().getText(i2));
    }

    public void setSubtitleTextAppearance(Context context, @StyleRes int i2) {
        this.o = i2;
        TextView textView = this.f1252g;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public void setSubtitleTextColor(@ColorInt int i2) {
        setSubtitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setTitle(@StringRes int i2) {
        setTitle(getContext().getText(i2));
    }

    public void setTitleMargin(int i2, int i3, int i4, int i5) {
        this.q = i2;
        this.s = i3;
        this.r = i4;
        this.t = i5;
        requestLayout();
    }

    public void setTitleMarginBottom(int i2) {
        this.t = i2;
        requestLayout();
    }

    public void setTitleMarginEnd(int i2) {
        this.r = i2;
        requestLayout();
    }

    public void setTitleMarginStart(int i2) {
        this.q = i2;
        requestLayout();
    }

    public void setTitleMarginTop(int i2) {
        this.s = i2;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, @StyleRes int i2) {
        this.n = i2;
        TextView textView = this.f1251f;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public void setTitleTextColor(@ColorInt int i2) {
        setTitleTextColor(ColorStateList.valueOf(i2));
    }

    public boolean showOverflowMenu() {
        ActionMenuView actionMenuView = this.f1250e;
        return actionMenuView != null && actionMenuView.showOverflowMenu();
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ActionBar.LayoutParams {

        /* renamed from: b, reason: collision with root package name */
        int f1258b;

        public LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1258b = 0;
        }

        void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f1258b = 0;
            this.f727a = 8388627;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.f1258b = 0;
            this.f1258b = layoutParams.f1258b;
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1258b = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1258b = 0;
            a(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1258b = 0;
        }
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, a.a.a.toolbarStyle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public void setCollapseContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            ensureCollapseButtonView();
        }
        ImageButton imageButton = this.mCollapseButtonView;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            ensureCollapseButtonView();
            this.mCollapseButtonView.setImageDrawable(drawable);
        } else {
            ImageButton imageButton = this.mCollapseButtonView;
            if (imageButton != null) {
                imageButton.setImageDrawable(this.f1255j);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            b();
            if (!c(this.f1254i)) {
                a((View) this.f1254i, true);
            }
        } else {
            ImageView imageView = this.f1254i;
            if (imageView != null && c(imageView)) {
                removeView(this.f1254i);
                this.F.remove(this.f1254i);
            }
        }
        ImageView imageView2 = this.f1254i;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            b();
        }
        ImageView imageView = this.f1254i;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            e();
        }
        ImageButton imageButton = this.f1253h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            e();
            if (!c(this.f1253h)) {
                a((View) this.f1253h, true);
            }
        } else {
            ImageButton imageButton = this.f1253h;
            if (imageButton != null && c(imageButton)) {
                removeView(this.f1253h);
                this.F.remove(this.f1253h);
            }
        }
        ImageButton imageButton2 = this.f1253h;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1252g == null) {
                Context context = getContext();
                this.f1252g = new AppCompatTextView(context);
                this.f1252g.setSingleLine();
                this.f1252g.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.o;
                if (i2 != 0) {
                    this.f1252g.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.B;
                if (colorStateList != null) {
                    this.f1252g.setTextColor(colorStateList);
                }
            }
            if (!c(this.f1252g)) {
                a((View) this.f1252g, true);
            }
        } else {
            TextView textView = this.f1252g;
            if (textView != null && c(textView)) {
                removeView(this.f1252g);
                this.F.remove(this.f1252g);
            }
        }
        TextView textView2 = this.f1252g;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.z = charSequence;
    }

    public void setSubtitleTextColor(@NonNull ColorStateList colorStateList) {
        this.B = colorStateList;
        TextView textView = this.f1252g;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1251f == null) {
                Context context = getContext();
                this.f1251f = new AppCompatTextView(context);
                this.f1251f.setSingleLine();
                this.f1251f.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.n;
                if (i2 != 0) {
                    this.f1251f.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f1251f.setTextColor(colorStateList);
                }
            }
            if (!c(this.f1251f)) {
                a((View) this.f1251f, true);
            }
        } else {
            TextView textView = this.f1251f;
            if (textView != null && c(textView)) {
                removeView(this.f1251f);
                this.F.remove(this.f1251f);
            }
        }
        TextView textView2 = this.f1251f;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void setTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.f1251f;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        int f1259g;

        /* renamed from: h, reason: collision with root package name */
        boolean f1260h;

        /* loaded from: classes.dex */
        class a implements Parcelable.ClassLoaderCreator<SavedState> {
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
            this.f1259g = parcel.readInt();
            this.f1260h = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f1259g);
            parcel.writeInt(this.f1260h ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d implements androidx.appcompat.view.menu.m {

        /* renamed from: e, reason: collision with root package name */
        androidx.appcompat.view.menu.f f1264e;

        /* renamed from: f, reason: collision with root package name */
        androidx.appcompat.view.menu.i f1265f;

        d() {
        }

        @Override // androidx.appcompat.view.menu.m
        public void a(Context context, androidx.appcompat.view.menu.f fVar) {
            androidx.appcompat.view.menu.i iVar;
            androidx.appcompat.view.menu.f fVar2 = this.f1264e;
            if (fVar2 != null && (iVar = this.f1265f) != null) {
                fVar2.a(iVar);
            }
            this.f1264e = fVar;
        }

        @Override // androidx.appcompat.view.menu.m
        public void a(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.m
        public void a(androidx.appcompat.view.menu.f fVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean a() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean a(androidx.appcompat.view.menu.r rVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.m
        public Parcelable b() {
            return null;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean b(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.i iVar) {
            Toolbar.this.ensureCollapseButtonView();
            ViewParent parent = Toolbar.this.mCollapseButtonView.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.mCollapseButtonView);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.mCollapseButtonView);
            }
            Toolbar.this.mExpandedActionView = iVar.getActionView();
            this.f1265f = iVar;
            ViewParent parent2 = Toolbar.this.mExpandedActionView.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.mExpandedActionView);
                }
                LayoutParams generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                generateDefaultLayoutParams.f727a = 8388611 | (toolbar4.mButtonGravity & 112);
                generateDefaultLayoutParams.f1258b = 2;
                toolbar4.mExpandedActionView.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.mExpandedActionView);
            }
            Toolbar.this.removeChildrenForExpandedActionView();
            Toolbar.this.requestLayout();
            iVar.a(true);
            KeyEvent.Callback callback = Toolbar.this.mExpandedActionView;
            if (callback instanceof a.a.n.c) {
                ((a.a.n.c) callback).onActionViewExpanded();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.m
        public void a(boolean z) {
            if (this.f1265f != null) {
                androidx.appcompat.view.menu.f fVar = this.f1264e;
                boolean z2 = false;
                if (fVar != null) {
                    int size = fVar.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        }
                        if (this.f1264e.getItem(i2) == this.f1265f) {
                            z2 = true;
                            break;
                        }
                        i2++;
                    }
                }
                if (z2) {
                    return;
                }
                a(this.f1264e, this.f1265f);
            }
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean a(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.i iVar) {
            KeyEvent.Callback callback = Toolbar.this.mExpandedActionView;
            if (callback instanceof a.a.n.c) {
                ((a.a.n.c) callback).onActionViewCollapsed();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.mExpandedActionView);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.mCollapseButtonView);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.mExpandedActionView = null;
            toolbar3.addChildrenForExpandedActionView();
            this.f1265f = null;
            Toolbar.this.requestLayout();
            iVar.a(false);
            return true;
        }
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.x = 8388627;
        this.E = new ArrayList<>();
        this.F = new ArrayList<>();
        this.G = new int[2];
        this.H = new a();
        this.O = new b();
        d0 a2 = d0.a(getContext(), attributeSet, a.a.j.Toolbar, i2, 0);
        ViewCompat.a(this, context, a.a.j.Toolbar, attributeSet, a2.a(), i2, 0);
        this.n = a2.g(a.a.j.Toolbar_titleTextAppearance, 0);
        this.o = a2.g(a.a.j.Toolbar_subtitleTextAppearance, 0);
        this.x = a2.e(a.a.j.Toolbar_android_gravity, this.x);
        this.mButtonGravity = a2.e(a.a.j.Toolbar_buttonGravity, 48);
        int b2 = a2.b(a.a.j.Toolbar_titleMargin, 0);
        b2 = a2.g(a.a.j.Toolbar_titleMargins) ? a2.b(a.a.j.Toolbar_titleMargins, b2) : b2;
        this.t = b2;
        this.s = b2;
        this.r = b2;
        this.q = b2;
        int b3 = a2.b(a.a.j.Toolbar_titleMarginStart, -1);
        if (b3 >= 0) {
            this.q = b3;
        }
        int b4 = a2.b(a.a.j.Toolbar_titleMarginEnd, -1);
        if (b4 >= 0) {
            this.r = b4;
        }
        int b5 = a2.b(a.a.j.Toolbar_titleMarginTop, -1);
        if (b5 >= 0) {
            this.s = b5;
        }
        int b6 = a2.b(a.a.j.Toolbar_titleMarginBottom, -1);
        if (b6 >= 0) {
            this.t = b6;
        }
        this.p = a2.c(a.a.j.Toolbar_maxButtonHeight, -1);
        int b7 = a2.b(a.a.j.Toolbar_contentInsetStart, e.b.b.a.a.a.c.ALL_INT);
        int b8 = a2.b(a.a.j.Toolbar_contentInsetEnd, e.b.b.a.a.a.c.ALL_INT);
        int c2 = a2.c(a.a.j.Toolbar_contentInsetLeft, 0);
        int c3 = a2.c(a.a.j.Toolbar_contentInsetRight, 0);
        a();
        this.u.a(c2, c3);
        if (b7 != Integer.MIN_VALUE || b8 != Integer.MIN_VALUE) {
            this.u.b(b7, b8);
        }
        this.v = a2.b(a.a.j.Toolbar_contentInsetStartWithNavigation, e.b.b.a.a.a.c.ALL_INT);
        this.w = a2.b(a.a.j.Toolbar_contentInsetEndWithActions, e.b.b.a.a.a.c.ALL_INT);
        this.f1255j = a2.b(a.a.j.Toolbar_collapseIcon);
        this.f1256k = a2.e(a.a.j.Toolbar_collapseContentDescription);
        CharSequence e2 = a2.e(a.a.j.Toolbar_title);
        if (!TextUtils.isEmpty(e2)) {
            setTitle(e2);
        }
        CharSequence e3 = a2.e(a.a.j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(e3)) {
            setSubtitle(e3);
        }
        this.f1257l = getContext();
        setPopupTheme(a2.g(a.a.j.Toolbar_popupTheme, 0));
        Drawable b9 = a2.b(a.a.j.Toolbar_navigationIcon);
        if (b9 != null) {
            setNavigationIcon(b9);
        }
        CharSequence e4 = a2.e(a.a.j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(e4)) {
            setNavigationContentDescription(e4);
        }
        Drawable b10 = a2.b(a.a.j.Toolbar_logo);
        if (b10 != null) {
            setLogo(b10);
        }
        CharSequence e5 = a2.e(a.a.j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(e5)) {
            setLogoDescription(e5);
        }
        if (a2.g(a.a.j.Toolbar_titleTextColor)) {
            setTitleTextColor(a2.a(a.a.j.Toolbar_titleTextColor));
        }
        if (a2.g(a.a.j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(a2.a(a.a.j.Toolbar_subtitleTextColor));
        }
        if (a2.g(a.a.j.Toolbar_menu)) {
            inflateMenu(a2.g(a.a.j.Toolbar_menu, 0));
        }
        a2.b();
    }

    private int b(View view, int i2, int[] iArr, int i3) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int max = i2 - Math.max(0, i4);
        iArr[1] = Math.max(0, -i4);
        int a2 = a(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, a2, max, view.getMeasuredHeight() + a2);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ActionBar.LayoutParams) {
            return new LayoutParams((ActionBar.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    private boolean c(View view) {
        return view.getParent() == this || this.F.contains(view);
    }

    private boolean d(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private void a(View view, int i2, int i3, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i6 >= 0) {
            if (mode != 0) {
                i6 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i6);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private int b(int i2) {
        int i3 = i2 & 112;
        return (i3 == 16 || i3 == 48 || i3 == 80) ? i3 : this.x & 112;
    }

    private int b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private int a(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = marginLayoutParams.leftMargin - iArr[0];
        int i7 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i7);
        iArr[0] = Math.max(0, -i6);
        iArr[1] = Math.max(0, -i7);
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + max + i3, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    private int a(List<View> list, int[] iArr) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int size = list.size();
        int i4 = i3;
        int i5 = i2;
        int i6 = 0;
        int i7 = 0;
        while (i6 < size) {
            View view = list.get(i6);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - i5;
            int i9 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - i4;
            int max = Math.max(0, i8);
            int max2 = Math.max(0, i9);
            int max3 = Math.max(0, -i8);
            int max4 = Math.max(0, -i9);
            i7 += max + view.getMeasuredWidth() + max2;
            i6++;
            i4 = max4;
            i5 = max3;
        }
        return i7;
    }

    private int a(View view, int i2, int[] iArr, int i3) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int max = i2 + Math.max(0, i4);
        iArr[0] = Math.max(0, -i4);
        int a2 = a(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, a2, max + measuredWidth, view.getMeasuredHeight() + a2);
        return max + measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    private int a(View view, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int b2 = b(layoutParams.f727a);
        if (b2 == 48) {
            return getPaddingTop() - i3;
        }
        if (b2 != 80) {
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int height = getHeight();
            int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
            int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            if (i4 < i5) {
                i4 = i5;
            } else {
                int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
                int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                if (i6 < i7) {
                    i4 = Math.max(0, i4 - (i7 - i6));
                }
            }
            return paddingTop + i4;
        }
        return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i3;
    }

    private void a(List<View> list, int i2) {
        boolean z = ViewCompat.n(this) == 1;
        int childCount = getChildCount();
        int a2 = androidx.core.view.e.a(i2, ViewCompat.n(this));
        list.clear();
        if (!z) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f1258b == 0 && d(childAt) && a(layoutParams.f727a) == a2) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f1258b == 0 && d(childAt2) && a(layoutParams2.f727a) == a2) {
                list.add(childAt2);
            }
        }
    }

    private int a(int i2) {
        int n = ViewCompat.n(this);
        int a2 = androidx.core.view.e.a(i2, n) & 7;
        return (a2 == 1 || a2 == 3 || a2 == 5) ? a2 : n == 1 ? 5 : 3;
    }

    private int a(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return androidx.core.view.h.b(marginLayoutParams) + androidx.core.view.h.a(marginLayoutParams);
    }

    private void a() {
        if (this.u == null) {
            this.u = new w();
        }
    }
}
