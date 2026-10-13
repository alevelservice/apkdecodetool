package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.f0;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements n.a, View.OnClickListener, ActionMenuView.a {

    /* renamed from: i, reason: collision with root package name */
    private CharSequence f920i;

    /* renamed from: j, reason: collision with root package name */
    private Drawable f921j;

    /* renamed from: k, reason: collision with root package name */
    private androidx.appcompat.widget.s f922k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f923l;
    private boolean m;
    i mItemData;
    f.b mItemInvoker;
    b mPopupCallback;
    private int n;
    private int o;
    private int p;

    /* loaded from: classes.dex */
    private class a extends androidx.appcompat.widget.s {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.s
        public p a() {
            b bVar = ActionMenuItemView.this.mPopupCallback;
            if (bVar != null) {
                return bVar.a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.s
        protected boolean b() {
            p a2;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            f.b bVar = actionMenuItemView.mItemInvoker;
            return bVar != null && bVar.invokeItem(actionMenuItemView.mItemData) && (a2 = a()) != null && a2.c();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {
        public abstract p a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    private boolean a() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        return i2 >= 480 || (i2 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    private void b() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f920i);
        if (this.f921j != null && (!this.mItemData.n() || (!this.f923l && !this.m))) {
            z = false;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.f920i : null);
        CharSequence contentDescription = this.mItemData.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z3 ? null : this.mItemData.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.mItemData.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            f0.a(this, z3 ? null : this.mItemData.getTitle());
        } else {
            f0.a(this, tooltipText);
        }
    }

    @Override // androidx.appcompat.view.menu.n.a
    public i getItemData() {
        return this.mItemData;
    }

    public boolean hasText() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void initialize(i iVar, int i2) {
        this.mItemData = iVar;
        setIcon(iVar.getIcon());
        setTitle(iVar.a(this));
        setId(iVar.getItemId());
        setVisibility(iVar.isVisible() ? 0 : 8);
        setEnabled(iVar.isEnabled());
        if (iVar.hasSubMenu() && this.f922k == null) {
            this.f922k = new a();
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean needsDividerAfter() {
        return hasText();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean needsDividerBefore() {
        return hasText() && this.mItemData.getIcon() == null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        f.b bVar = this.mItemInvoker;
        if (bVar != null) {
            bVar.invokeItem(this.mItemData);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f923l = a();
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        boolean hasText = hasText();
        if (hasText && (i5 = this.o) >= 0) {
            super.setPadding(i5, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        if (mode == Integer.MIN_VALUE) {
            i4 = Math.min(size, this.n);
        } else {
            i4 = this.n;
        }
        if (mode != 1073741824 && this.n > 0 && measuredWidth < i4) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i3);
        }
        if (hasText || this.f921j == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f921j.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        androidx.appcompat.widget.s sVar;
        if (this.mItemData.hasSubMenu() && (sVar = this.f922k) != null && sVar.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean prefersCondensedTitle() {
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.m != z) {
            this.m = z;
            i iVar = this.mItemData;
            if (iVar != null) {
                iVar.b();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f921j = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i2 = this.p;
            if (intrinsicWidth > i2) {
                intrinsicHeight = (int) (intrinsicHeight * (i2 / intrinsicWidth));
                intrinsicWidth = i2;
            }
            int i3 = this.p;
            if (intrinsicHeight > i3) {
                intrinsicWidth = (int) (intrinsicWidth * (i3 / intrinsicHeight));
                intrinsicHeight = i3;
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, null, null, null);
        b();
    }

    public void setItemInvoker(f.b bVar) {
        this.mItemInvoker = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
        this.o = i2;
        super.setPadding(i2, i3, i4, i5);
    }

    public void setPopupCallback(b bVar) {
        this.mPopupCallback = bVar;
    }

    public void setShortcut(boolean z, char c2) {
    }

    public void setTitle(CharSequence charSequence) {
        this.f920i = charSequence;
        b();
    }

    public boolean showsIcon() {
        return true;
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Resources resources = context.getResources();
        this.f923l = a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.a.j.ActionMenuItemView, i2, 0);
        this.n = obtainStyledAttributes.getDimensionPixelSize(a.a.j.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.p = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.o = -1;
        setSaveEnabled(false);
    }
}
