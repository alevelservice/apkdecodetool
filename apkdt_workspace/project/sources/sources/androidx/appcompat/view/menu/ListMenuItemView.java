package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.d0;
import androidx.core.view.ViewCompat;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements n.a, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: e, reason: collision with root package name */
    private i f944e;

    /* renamed from: f, reason: collision with root package name */
    private ImageView f945f;

    /* renamed from: g, reason: collision with root package name */
    private RadioButton f946g;

    /* renamed from: h, reason: collision with root package name */
    private TextView f947h;

    /* renamed from: i, reason: collision with root package name */
    private CheckBox f948i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f949j;

    /* renamed from: k, reason: collision with root package name */
    private ImageView f950k;

    /* renamed from: l, reason: collision with root package name */
    private ImageView f951l;
    private LinearLayout m;
    private Drawable n;
    private int o;
    private Context p;
    private boolean q;
    private Drawable r;
    private boolean s;
    private LayoutInflater t;
    private boolean u;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.a.a.listMenuViewStyle);
    }

    private void a(View view) {
        a(view, -1);
    }

    private void b() {
        this.f945f = (ImageView) getInflater().inflate(a.a.g.abc_list_menu_item_icon, (ViewGroup) this, false);
        a(this.f945f, 0);
    }

    private void c() {
        this.f946g = (RadioButton) getInflater().inflate(a.a.g.abc_list_menu_item_radio, (ViewGroup) this, false);
        a(this.f946g);
    }

    private LayoutInflater getInflater() {
        if (this.t == null) {
            this.t = LayoutInflater.from(getContext());
        }
        return this.t;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f950k;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f951l;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f951l.getLayoutParams();
        rect.top += this.f951l.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public i getItemData() {
        return this.f944e;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void initialize(i iVar, int i2) {
        this.f944e = iVar;
        setVisibility(iVar.isVisible() ? 0 : 8);
        setTitle(iVar.a(this));
        setCheckable(iVar.isCheckable());
        setShortcut(iVar.m(), iVar.d());
        setIcon(iVar.getIcon());
        setEnabled(iVar.isEnabled());
        setSubMenuArrowVisible(iVar.hasSubMenu());
        setContentDescription(iVar.getContentDescription());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ViewCompat.a(this, this.n);
        this.f947h = (TextView) findViewById(a.a.f.title);
        int i2 = this.o;
        if (i2 != -1) {
            this.f947h.setTextAppearance(this.p, i2);
        }
        this.f949j = (TextView) findViewById(a.a.f.shortcut);
        this.f950k = (ImageView) findViewById(a.a.f.submenuarrow);
        ImageView imageView = this.f950k;
        if (imageView != null) {
            imageView.setImageDrawable(this.r);
        }
        this.f951l = (ImageView) findViewById(a.a.f.group_divider);
        this.m = (LinearLayout) findViewById(a.a.f.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        if (this.f945f != null && this.q) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f945f.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i2, i3);
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (!z && this.f946g == null && this.f948i == null) {
            return;
        }
        if (this.f944e.i()) {
            if (this.f946g == null) {
                c();
            }
            compoundButton = this.f946g;
            compoundButton2 = this.f948i;
        } else {
            if (this.f948i == null) {
                a();
            }
            compoundButton = this.f948i;
            compoundButton2 = this.f946g;
        }
        if (z) {
            compoundButton.setChecked(this.f944e.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
                return;
            }
            compoundButton2.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.f948i;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f946g;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f944e.i()) {
            if (this.f946g == null) {
                c();
            }
            compoundButton = this.f946g;
        } else {
            if (this.f948i == null) {
                a();
            }
            compoundButton = this.f948i;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.u = z;
        this.q = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f951l;
        if (imageView != null) {
            imageView.setVisibility((this.s || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f944e.l() || this.u;
        if (z || this.q) {
            if (this.f945f == null && drawable == null && !this.q) {
                return;
            }
            if (this.f945f == null) {
                b();
            }
            if (drawable == null && !this.q) {
                this.f945f.setVisibility(8);
                return;
            }
            ImageView imageView = this.f945f;
            if (!z) {
                drawable = null;
            }
            imageView.setImageDrawable(drawable);
            if (this.f945f.getVisibility() != 0) {
                this.f945f.setVisibility(0);
            }
        }
    }

    public void setShortcut(boolean z, char c2) {
        int i2 = (z && this.f944e.m()) ? 0 : 8;
        if (i2 == 0) {
            this.f949j.setText(this.f944e.e());
        }
        if (this.f949j.getVisibility() != i2) {
            this.f949j.setVisibility(i2);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f947h.setText(charSequence);
            if (this.f947h.getVisibility() != 0) {
                this.f947h.setVisibility(0);
                return;
            }
            return;
        }
        if (this.f947h.getVisibility() != 8) {
            this.f947h.setVisibility(8);
        }
    }

    public boolean showsIcon() {
        return this.u;
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        d0 a2 = d0.a(getContext(), attributeSet, a.a.j.MenuView, i2, 0);
        this.n = a2.b(a.a.j.MenuView_android_itemBackground);
        this.o = a2.g(a.a.j.MenuView_android_itemTextAppearance, -1);
        this.q = a2.a(a.a.j.MenuView_preserveIconSpacing, false);
        this.p = context;
        this.r = a2.b(a.a.j.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, a.a.a.dropDownListViewStyle, 0);
        this.s = obtainStyledAttributes.hasValue(0);
        a2.b();
        obtainStyledAttributes.recycle();
    }

    private void a(View view, int i2) {
        LinearLayout linearLayout = this.m;
        if (linearLayout != null) {
            linearLayout.addView(view, i2);
        } else {
            addView(view, i2);
        }
    }

    private void a() {
        this.f948i = (CheckBox) getInflater().inflate(a.a.g.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        a(this.f948i);
    }
}
