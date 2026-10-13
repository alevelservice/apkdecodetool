package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.app.c;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class AppCompatSpinner extends Spinner implements androidx.core.view.w {

    /* renamed from: k, reason: collision with root package name */
    private static final int[] f1137k = {R.attr.spinnerMode};

    /* renamed from: e, reason: collision with root package name */
    private final androidx.appcompat.widget.d f1138e;

    /* renamed from: f, reason: collision with root package name */
    private final Context f1139f;

    /* renamed from: g, reason: collision with root package name */
    private s f1140g;

    /* renamed from: h, reason: collision with root package name */
    private SpinnerAdapter f1141h;

    /* renamed from: i, reason: collision with root package name */
    private final boolean f1142i;

    /* renamed from: j, reason: collision with root package name */
    private f f1143j;
    int mDropDownWidth;
    final Rect mTempRect;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        boolean f1144e;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeByte(this.f1144e ? (byte) 1 : (byte) 0);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f1144e = parcel.readByte() != 0;
        }
    }

    /* loaded from: classes.dex */
    class a extends s {
        final /* synthetic */ e n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View view, e eVar) {
            super(view);
            this.n = eVar;
        }

        @Override // androidx.appcompat.widget.s
        public androidx.appcompat.view.menu.p a() {
            return this.n;
        }

        @Override // androidx.appcompat.widget.s
        @SuppressLint({"SyntheticAccessor"})
        public boolean b() {
            if (AppCompatSpinner.this.getInternalPopup().c()) {
                return true;
            }
            AppCompatSpinner.this.showPopup();
            return true;
        }
    }

    /* loaded from: classes.dex */
    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!AppCompatSpinner.this.getInternalPopup().c()) {
                AppCompatSpinner.this.showPopup();
            }
            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                } else {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    class c implements f, DialogInterface.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        @VisibleForTesting
        androidx.appcompat.app.c f1146e;

        /* renamed from: f, reason: collision with root package name */
        private ListAdapter f1147f;

        /* renamed from: g, reason: collision with root package name */
        private CharSequence f1148g;

        c() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public int a() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void a(int i2) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void a(Drawable drawable) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void a(ListAdapter listAdapter) {
            this.f1147f = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public CharSequence b() {
            return this.f1148g;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void b(int i2) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void c(int i2) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public boolean c() {
            androidx.appcompat.app.c cVar = this.f1146e;
            if (cVar != null) {
                return cVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public Drawable d() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void dismiss() {
            androidx.appcompat.app.c cVar = this.f1146e;
            if (cVar != null) {
                cVar.dismiss();
                this.f1146e = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public int f() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            AppCompatSpinner.this.setSelection(i2);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i2, this.f1147f.getItemId(i2));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void a(CharSequence charSequence) {
            this.f1148g = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void a(int i2, int i3) {
            if (this.f1147f == null) {
                return;
            }
            c.a aVar = new c.a(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.f1148g;
            if (charSequence != null) {
                aVar.b(charSequence);
            }
            aVar.a(this.f1147f, AppCompatSpinner.this.getSelectedItemPosition(), this);
            this.f1146e = aVar.a();
            ListView b2 = this.f1146e.b();
            if (Build.VERSION.SDK_INT >= 17) {
                b2.setTextDirection(i2);
                b2.setTextAlignment(i3);
            }
            this.f1146e.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d implements ListAdapter, SpinnerAdapter {

        /* renamed from: e, reason: collision with root package name */
        private SpinnerAdapter f1150e;

        /* renamed from: f, reason: collision with root package name */
        private ListAdapter f1151f;

        public d(@Nullable SpinnerAdapter spinnerAdapter, @Nullable Resources.Theme theme) {
            this.f1150e = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1151f = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                        return;
                    }
                    return;
                }
                if (spinnerAdapter instanceof z) {
                    z zVar = (z) spinnerAdapter;
                    if (zVar.getDropDownViewTheme() == null) {
                        zVar.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1151f;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1150e;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1150e;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i2, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            SpinnerAdapter spinnerAdapter = this.f1150e;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            SpinnerAdapter spinnerAdapter = this.f1150e;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i2);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i2) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            return getDropDownView(i2, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1150e;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i2) {
            ListAdapter listAdapter = this.f1151f;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i2);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1150e;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1150e;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    class e extends ListPopupWindow implements f {
        private CharSequence M;
        ListAdapter N;
        private final Rect O;
        private int P;

        /* loaded from: classes.dex */
        class a implements AdapterView.OnItemClickListener {
            a(AppCompatSpinner appCompatSpinner) {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
                AppCompatSpinner.this.setSelection(i2);
                if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                    e eVar = e.this;
                    AppCompatSpinner.this.performItemClick(view, i2, eVar.N.getItemId(i2));
                }
                e.this.dismiss();
            }
        }

        /* loaded from: classes.dex */
        class b implements ViewTreeObserver.OnGlobalLayoutListener {
            b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                e eVar = e.this;
                if (!eVar.b(AppCompatSpinner.this)) {
                    e.this.dismiss();
                } else {
                    e.this.l();
                    e.super.show();
                }
            }
        }

        /* loaded from: classes.dex */
        class c implements PopupWindow.OnDismissListener {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f1154e;

            c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f1154e = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f1154e);
                }
            }
        }

        public e(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            this.O = new Rect();
            a(AppCompatSpinner.this);
            a(true);
            h(0);
            a(new a(AppCompatSpinner.this));
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public CharSequence b() {
            return this.M;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void c(int i2) {
            this.P = i2;
        }

        void l() {
            int m;
            Drawable d2 = d();
            int i2 = 0;
            if (d2 != null) {
                d2.getPadding(AppCompatSpinner.this.mTempRect);
                i2 = j0.a(AppCompatSpinner.this) ? AppCompatSpinner.this.mTempRect.right : -AppCompatSpinner.this.mTempRect.left;
            } else {
                Rect rect = AppCompatSpinner.this.mTempRect;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i3 = appCompatSpinner.mDropDownWidth;
            if (i3 == -2) {
                int compatMeasureContentWidth = appCompatSpinner.compatMeasureContentWidth((SpinnerAdapter) this.N, d());
                int i4 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.mTempRect;
                int i5 = (i4 - rect2.left) - rect2.right;
                if (compatMeasureContentWidth > i5) {
                    compatMeasureContentWidth = i5;
                }
                e(Math.max(compatMeasureContentWidth, (width - paddingLeft) - paddingRight));
            } else if (i3 == -1) {
                e((width - paddingLeft) - paddingRight);
            } else {
                e(i3);
            }
            if (j0.a(AppCompatSpinner.this)) {
                m = i2 + (((width - paddingRight) - i()) - m());
            } else {
                m = i2 + paddingLeft + m();
            }
            a(m);
        }

        public int m() {
            return this.P;
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.f
        public void a(ListAdapter listAdapter) {
            super.a(listAdapter);
            this.N = listAdapter;
        }

        boolean b(View view) {
            return ViewCompat.C(view) && view.getGlobalVisibleRect(this.O);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void a(CharSequence charSequence) {
            this.M = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void a(int i2, int i3) {
            ViewTreeObserver viewTreeObserver;
            boolean c2 = c();
            l();
            g(2);
            super.show();
            ListView e2 = e();
            e2.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                e2.setTextDirection(i2);
                e2.setTextAlignment(i3);
            }
            i(AppCompatSpinner.this.getSelectedItemPosition());
            if (c2 || (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            a(new c(bVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface f {
        int a();

        void a(int i2);

        void a(int i2, int i3);

        void a(Drawable drawable);

        void a(ListAdapter listAdapter);

        void a(CharSequence charSequence);

        CharSequence b();

        void b(int i2);

        void c(int i2);

        boolean c();

        Drawable d();

        void dismiss();

        int f();
    }

    public AppCompatSpinner(@NonNull Context context) {
        this(context, (AttributeSet) null);
    }

    int compatMeasureContentWidth(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i3 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i3 = Math.max(i3, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i3;
        }
        drawable.getPadding(this.mTempRect);
        Rect rect = this.mTempRect;
        return i3 + rect.left + rect.right;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.d dVar = this.f1138e;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        f fVar = this.f1143j;
        if (fVar != null) {
            return fVar.a();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        f fVar = this.f1143j;
        if (fVar != null) {
            return fVar.f();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f1143j != null) {
            return this.mDropDownWidth;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    @VisibleForTesting
    final f getInternalPopup() {
        return this.f1143j;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        f fVar = this.f1143j;
        if (fVar != null) {
            return fVar.d();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1139f;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        f fVar = this.f1143j;
        return fVar != null ? fVar.b() : super.getPrompt();
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.d dVar = this.f1138e;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.w
    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.d dVar = this.f1138e;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f fVar = this.f1143j;
        if (fVar == null || !fVar.c()) {
            return;
        }
        this.f1143j.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f1143j == null || View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), compatMeasureContentWidth(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f1144e || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        f fVar = this.f1143j;
        savedState.f1144e = fVar != null && fVar.c();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        s sVar = this.f1140g;
        if (sVar == null || !sVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        f fVar = this.f1143j;
        if (fVar != null) {
            if (fVar.c()) {
                return true;
            }
            showPopup();
            return true;
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.d dVar = this.f1138e;
        if (dVar != null) {
            dVar.a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        androidx.appcompat.widget.d dVar = this.f1138e;
        if (dVar != null) {
            dVar.a(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i2) {
        f fVar = this.f1143j;
        if (fVar != null) {
            fVar.c(i2);
            this.f1143j.a(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i2) {
        f fVar = this.f1143j;
        if (fVar != null) {
            fVar.b(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i2) {
        if (this.f1143j != null) {
            this.mDropDownWidth = i2;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        f fVar = this.f1143j;
        if (fVar != null) {
            fVar.a(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(@DrawableRes int i2) {
        setPopupBackgroundDrawable(a.a.k.a.a.c(getPopupContext(), i2));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        f fVar = this.f1143j;
        if (fVar != null) {
            fVar.a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        androidx.appcompat.widget.d dVar = this.f1138e;
        if (dVar != null) {
            dVar.b(colorStateList);
        }
    }

    @Override // androidx.core.view.w
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        androidx.appcompat.widget.d dVar = this.f1138e;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    void showPopup() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1143j.a(getTextDirection(), getTextAlignment());
        } else {
            this.f1143j.a(-1, -1);
        }
    }

    public AppCompatSpinner(@NonNull Context context, int i2) {
        this(context, null, a.a.a.spinnerStyle, i2);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1142i) {
            this.f1141h = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1143j != null) {
            Context context = this.f1139f;
            if (context == null) {
                context = getContext();
            }
            this.f1143j.a(new d(spinnerAdapter, context.getTheme()));
        }
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, a.a.a.spinnerStyle);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, -1);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        this(context, attributeSet, i2, i3, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x004f, code lost:
    
        if (r10 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0051, code lost:
    
        r10.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
    
        if (r10 == null) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(@androidx.annotation.NonNull android.content.Context r6, @androidx.annotation.Nullable android.util.AttributeSet r7, int r8, int r9, android.content.res.Resources.Theme r10) {
        /*
            r5 = this;
            r5.<init>(r6, r7, r8)
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r5.mTempRect = r0
            android.content.Context r0 = r5.getContext()
            androidx.appcompat.widget.y.a(r5, r0)
            int[] r0 = a.a.j.Spinner
            r1 = 0
            androidx.appcompat.widget.d0 r0 = androidx.appcompat.widget.d0.a(r6, r7, r0, r8, r1)
            androidx.appcompat.widget.d r2 = new androidx.appcompat.widget.d
            r2.<init>(r5)
            r5.f1138e = r2
            if (r10 == 0) goto L29
            a.a.n.d r2 = new a.a.n.d
            r2.<init>(r6, r10)
            r5.f1139f = r2
            goto L3b
        L29:
            int r10 = a.a.j.Spinner_popupTheme
            int r10 = r0.g(r10, r1)
            if (r10 == 0) goto L39
            a.a.n.d r2 = new a.a.n.d
            r2.<init>(r6, r10)
            r5.f1139f = r2
            goto L3b
        L39:
            r5.f1139f = r6
        L3b:
            r10 = -1
            r2 = 0
            if (r9 != r10) goto L63
            int[] r10 = androidx.appcompat.widget.AppCompatSpinner.f1137k     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L5f
            android.content.res.TypedArray r10 = r6.obtainStyledAttributes(r7, r10, r8, r1)     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L5f
            boolean r3 = r10.hasValue(r1)     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L60
            if (r3 == 0) goto L4f
            int r9 = r10.getInt(r1, r1)     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L60
        L4f:
            if (r10 == 0) goto L63
        L51:
            r10.recycle()
            goto L63
        L55:
            r6 = move-exception
            goto L59
        L57:
            r6 = move-exception
            r10 = r2
        L59:
            if (r10 == 0) goto L5e
            r10.recycle()
        L5e:
            throw r6
        L5f:
            r10 = r2
        L60:
            if (r10 == 0) goto L63
            goto L51
        L63:
            r10 = 1
            if (r9 == 0) goto La0
            if (r9 == r10) goto L69
            goto Lb2
        L69:
            androidx.appcompat.widget.AppCompatSpinner$e r9 = new androidx.appcompat.widget.AppCompatSpinner$e
            android.content.Context r3 = r5.f1139f
            r9.<init>(r3, r7, r8)
            android.content.Context r3 = r5.f1139f
            int[] r4 = a.a.j.Spinner
            androidx.appcompat.widget.d0 r1 = androidx.appcompat.widget.d0.a(r3, r7, r4, r8, r1)
            int r3 = a.a.j.Spinner_android_dropDownWidth
            r4 = -2
            int r3 = r1.f(r3, r4)
            r5.mDropDownWidth = r3
            int r3 = a.a.j.Spinner_android_popupBackground
            android.graphics.drawable.Drawable r3 = r1.b(r3)
            r9.a(r3)
            int r3 = a.a.j.Spinner_android_prompt
            java.lang.String r3 = r0.d(r3)
            r9.a(r3)
            r1.b()
            r5.f1143j = r9
            androidx.appcompat.widget.AppCompatSpinner$a r1 = new androidx.appcompat.widget.AppCompatSpinner$a
            r1.<init>(r5, r9)
            r5.f1140g = r1
            goto Lb2
        La0:
            androidx.appcompat.widget.AppCompatSpinner$c r9 = new androidx.appcompat.widget.AppCompatSpinner$c
            r9.<init>()
            r5.f1143j = r9
            androidx.appcompat.widget.AppCompatSpinner$f r9 = r5.f1143j
            int r1 = a.a.j.Spinner_android_prompt
            java.lang.String r1 = r0.d(r1)
            r9.a(r1)
        Lb2:
            int r9 = a.a.j.Spinner_android_entries
            java.lang.CharSequence[] r9 = r0.f(r9)
            if (r9 == 0) goto Lca
            android.widget.ArrayAdapter r1 = new android.widget.ArrayAdapter
            r3 = 17367048(0x1090008, float:2.5162948E-38)
            r1.<init>(r6, r3, r9)
            int r6 = a.a.g.support_simple_spinner_dropdown_item
            r1.setDropDownViewResource(r6)
            r5.setAdapter(r1)
        Lca:
            r0.b()
            r5.f1142i = r10
            android.widget.SpinnerAdapter r6 = r5.f1141h
            if (r6 == 0) goto Ld8
            r5.setAdapter(r6)
            r5.f1141h = r2
        Ld8:
            androidx.appcompat.widget.d r6 = r5.f1138e
            r6.a(r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }
}
