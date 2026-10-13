package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.b;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ActionMenuPresenter extends androidx.appcompat.view.menu.b implements b.a {
    private final SparseBooleanArray A;
    e B;
    a C;
    c D;
    private b E;
    final f F;
    int G;
    d n;
    private Drawable o;
    private boolean p;
    private boolean q;
    private boolean r;
    private int s;
    private int t;
    private int u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private int z;

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        public int f1078e;

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

        SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f1078e);
        }

        SavedState(Parcel parcel) {
            this.f1078e = parcel.readInt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends androidx.appcompat.view.menu.l {
        public a(Context context, androidx.appcompat.view.menu.r rVar, View view) {
            super(context, rVar, view, false, a.a.a.actionOverflowMenuStyle);
            if (!((androidx.appcompat.view.menu.i) rVar.getItem()).h()) {
                View view2 = ActionMenuPresenter.this.n;
                a(view2 == null ? (View) ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f971l : view2);
            }
            a(ActionMenuPresenter.this.F);
        }

        @Override // androidx.appcompat.view.menu.l
        protected void d() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.C = null;
            actionMenuPresenter.G = 0;
            super.d();
        }
    }

    /* loaded from: classes.dex */
    private class b extends ActionMenuItemView.b {
        b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public androidx.appcompat.view.menu.p a() {
            a aVar = ActionMenuPresenter.this.C;
            if (aVar != null) {
                return aVar.b();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private e f1080e;

        public c(e eVar) {
            this.f1080e = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f966g != null) {
                ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f966g.a();
            }
            View view = (View) ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f971l;
            if (view != null && view.getWindowToken() != null && this.f1080e.f()) {
                ActionMenuPresenter.this.B = this.f1080e;
            }
            ActionMenuPresenter.this.D = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends AppCompatImageView implements ActionMenuView.a {

        /* loaded from: classes.dex */
        class a extends s {
            a(View view, ActionMenuPresenter actionMenuPresenter) {
                super(view);
            }

            @Override // androidx.appcompat.widget.s
            public androidx.appcompat.view.menu.p a() {
                e eVar = ActionMenuPresenter.this.B;
                if (eVar == null) {
                    return null;
                }
                return eVar.b();
            }

            @Override // androidx.appcompat.widget.s
            public boolean b() {
                ActionMenuPresenter.this.k();
                return true;
            }

            @Override // androidx.appcompat.widget.s
            public boolean c() {
                ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                if (actionMenuPresenter.D != null) {
                    return false;
                }
                actionMenuPresenter.f();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, a.a.a.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            f0.a(this, getContentDescription());
            setOnTouchListener(new a(this, ActionMenuPresenter.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean needsDividerAfter() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean needsDividerBefore() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.k();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i2, int i3, int i4, int i5) {
            boolean frame = super.setFrame(i2, i3, i4, i5);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                androidx.core.graphics.drawable.a.a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e extends androidx.appcompat.view.menu.l {
        public e(Context context, androidx.appcompat.view.menu.f fVar, View view, boolean z) {
            super(context, fVar, view, z, a.a.a.actionOverflowMenuStyle);
            a(8388613);
            a(ActionMenuPresenter.this.F);
        }

        @Override // androidx.appcompat.view.menu.l
        protected void d() {
            if (((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f966g != null) {
                ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f966g.close();
            }
            ActionMenuPresenter.this.B = null;
            super.d();
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, a.a.g.abc_action_menu_layout, a.a.g.abc_action_menu_item_layout);
        this.A = new SparseBooleanArray();
        this.F = new f();
    }

    public boolean g() {
        a aVar = this.C;
        if (aVar == null) {
            return false;
        }
        aVar.a();
        return true;
    }

    public boolean h() {
        return this.D != null || i();
    }

    public boolean i() {
        e eVar = this.B;
        return eVar != null && eVar.c();
    }

    public boolean j() {
        return this.q;
    }

    public boolean k() {
        androidx.appcompat.view.menu.f fVar;
        if (!this.q || i() || (fVar = this.f966g) == null || this.f971l == null || this.D != null || fVar.j().isEmpty()) {
            return false;
        }
        this.D = new c(new e(this.f965f, this.f966g, this.n, true));
        ((View) this.f971l).post(this.D);
        super.a((androidx.appcompat.view.menu.r) null);
        return true;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void a(@NonNull Context context, @Nullable androidx.appcompat.view.menu.f fVar) {
        super.a(context, fVar);
        Resources resources = context.getResources();
        a.a.n.a a2 = a.a.n.a.a(context);
        if (!this.r) {
            this.q = a2.g();
        }
        if (!this.x) {
            this.s = a2.b();
        }
        if (!this.v) {
            this.u = a2.c();
        }
        int i2 = this.s;
        if (this.q) {
            if (this.n == null) {
                this.n = new d(this.f964e);
                if (this.p) {
                    this.n.setImageDrawable(this.o);
                    this.o = null;
                    this.p = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.n.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i2 -= this.n.getMeasuredWidth();
        } else {
            this.n = null;
        }
        this.t = i2;
        this.z = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.b
    public androidx.appcompat.view.menu.n b(ViewGroup viewGroup) {
        androidx.appcompat.view.menu.n nVar = this.f971l;
        androidx.appcompat.view.menu.n b2 = super.b(viewGroup);
        if (nVar != b2) {
            ((ActionMenuView) b2).setPresenter(this);
        }
        return b2;
    }

    public void c(boolean z) {
        this.y = z;
    }

    public void d(boolean z) {
        this.q = z;
        this.r = true;
    }

    public Drawable e() {
        d dVar = this.n;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.p) {
            return this.o;
        }
        return null;
    }

    public boolean f() {
        Object obj;
        c cVar = this.D;
        if (cVar != null && (obj = this.f971l) != null) {
            ((View) obj).removeCallbacks(cVar);
            this.D = null;
            return true;
        }
        e eVar = this.B;
        if (eVar == null) {
            return false;
        }
        eVar.a();
        return true;
    }

    /* loaded from: classes.dex */
    private class f implements m.a {
        f() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean a(androidx.appcompat.view.menu.f fVar) {
            if (fVar == null) {
                return false;
            }
            ActionMenuPresenter.this.G = ((androidx.appcompat.view.menu.r) fVar).getItem().getItemId();
            m.a c2 = ActionMenuPresenter.this.c();
            if (c2 != null) {
                return c2.a(fVar);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void a(androidx.appcompat.view.menu.f fVar, boolean z) {
            if (fVar instanceof androidx.appcompat.view.menu.r) {
                fVar.m().a(false);
            }
            m.a c2 = ActionMenuPresenter.this.c();
            if (c2 != null) {
                c2.a(fVar, z);
            }
        }
    }

    public boolean d() {
        return f() | g();
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable b() {
        SavedState savedState = new SavedState();
        savedState.f1078e = this.G;
        return savedState;
    }

    @Override // androidx.core.view.b.a
    public void b(boolean z) {
        if (z) {
            super.a((androidx.appcompat.view.menu.r) null);
            return;
        }
        androidx.appcompat.view.menu.f fVar = this.f966g;
        if (fVar != null) {
            fVar.a(false);
        }
    }

    public void a(Configuration configuration) {
        if (!this.v) {
            this.u = a.a.n.a.a(this.f965f).c();
        }
        androidx.appcompat.view.menu.f fVar = this.f966g;
        if (fVar != null) {
            fVar.b(true);
        }
    }

    public void a(Drawable drawable) {
        d dVar = this.n;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            this.p = true;
            this.o = drawable;
        }
    }

    @Override // androidx.appcompat.view.menu.b
    public View a(androidx.appcompat.view.menu.i iVar, View view, ViewGroup viewGroup) {
        View actionView = iVar.getActionView();
        if (actionView == null || iVar.f()) {
            actionView = super.a(iVar, view, viewGroup);
        }
        actionView.setVisibility(iVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.b
    public void a(androidx.appcompat.view.menu.i iVar, n.a aVar) {
        aVar.initialize(iVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f971l);
        if (this.E == null) {
            this.E = new b();
        }
        actionMenuItemView.setPopupCallback(this.E);
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean a(int i2, androidx.appcompat.view.menu.i iVar) {
        return iVar.h();
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void a(boolean z) {
        super.a(z);
        ((View) this.f971l).requestLayout();
        androidx.appcompat.view.menu.f fVar = this.f966g;
        boolean z2 = false;
        if (fVar != null) {
            ArrayList<androidx.appcompat.view.menu.i> c2 = fVar.c();
            int size = c2.size();
            for (int i2 = 0; i2 < size; i2++) {
                androidx.core.view.b a2 = c2.get(i2).a();
                if (a2 != null) {
                    a2.a(this);
                }
            }
        }
        androidx.appcompat.view.menu.f fVar2 = this.f966g;
        ArrayList<androidx.appcompat.view.menu.i> j2 = fVar2 != null ? fVar2.j() : null;
        if (this.q && j2 != null) {
            int size2 = j2.size();
            if (size2 == 1) {
                z2 = !j2.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.n == null) {
                this.n = new d(this.f964e);
            }
            ViewGroup viewGroup = (ViewGroup) this.n.getParent();
            if (viewGroup != this.f971l) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.n);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f971l;
                actionMenuView.addView(this.n, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else {
            d dVar = this.n;
            if (dVar != null) {
                Object parent = dVar.getParent();
                Object obj = this.f971l;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.n);
                }
            }
        }
        ((ActionMenuView) this.f971l).setOverflowReserved(this.q);
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean a(ViewGroup viewGroup, int i2) {
        if (viewGroup.getChildAt(i2) == this.n) {
            return false;
        }
        return super.a(viewGroup, i2);
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public boolean a(androidx.appcompat.view.menu.r rVar) {
        boolean z = false;
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        androidx.appcompat.view.menu.r rVar2 = rVar;
        while (rVar2.t() != this.f966g) {
            rVar2 = (androidx.appcompat.view.menu.r) rVar2.t();
        }
        View a2 = a(rVar2.getItem());
        if (a2 == null) {
            return false;
        }
        this.G = rVar.getItem().getItemId();
        int size = rVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            MenuItem item = rVar.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i2++;
        }
        this.C = new a(this.f965f, rVar, a2);
        this.C.a(z);
        this.C.e();
        super.a(rVar);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f971l;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof n.a) && ((n.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a() {
        ArrayList<androidx.appcompat.view.menu.i> arrayList;
        int i2;
        int i3;
        int i4;
        int i5;
        ActionMenuPresenter actionMenuPresenter = this;
        androidx.appcompat.view.menu.f fVar = actionMenuPresenter.f966g;
        View view = null;
        int i6 = 0;
        if (fVar != null) {
            arrayList = fVar.n();
            i2 = arrayList.size();
        } else {
            arrayList = null;
            i2 = 0;
        }
        int i7 = actionMenuPresenter.u;
        int i8 = actionMenuPresenter.t;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.f971l;
        int i9 = i7;
        boolean z = false;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < i2; i12++) {
            androidx.appcompat.view.menu.i iVar = arrayList.get(i12);
            if (iVar.k()) {
                i10++;
            } else if (iVar.j()) {
                i11++;
            } else {
                z = true;
            }
            if (actionMenuPresenter.y && iVar.isActionViewExpanded()) {
                i9 = 0;
            }
        }
        if (actionMenuPresenter.q && (z || i11 + i10 > i9)) {
            i9--;
        }
        int i13 = i9 - i10;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.A;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.w) {
            int i14 = actionMenuPresenter.z;
            i4 = i8 / i14;
            i3 = i14 + ((i8 % i14) / i4);
        } else {
            i3 = 0;
            i4 = 0;
        }
        int i15 = i8;
        int i16 = 0;
        int i17 = 0;
        while (i16 < i2) {
            androidx.appcompat.view.menu.i iVar2 = arrayList.get(i16);
            if (iVar2.k()) {
                View a2 = actionMenuPresenter.a(iVar2, view, viewGroup);
                if (actionMenuPresenter.w) {
                    i4 -= ActionMenuView.measureChildForCells(a2, i3, i4, makeMeasureSpec, i6);
                } else {
                    a2.measure(makeMeasureSpec, makeMeasureSpec);
                }
                int measuredWidth = a2.getMeasuredWidth();
                i15 -= measuredWidth;
                if (i17 != 0) {
                    measuredWidth = i17;
                }
                int groupId = iVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                iVar2.d(true);
                i17 = measuredWidth;
                i5 = i2;
            } else if (iVar2.j()) {
                int groupId2 = iVar2.getGroupId();
                boolean z2 = sparseBooleanArray.get(groupId2);
                boolean z3 = (i13 > 0 || z2) && i15 > 0 && (!actionMenuPresenter.w || i4 > 0);
                boolean z4 = z3;
                i5 = i2;
                if (z3) {
                    View a3 = actionMenuPresenter.a(iVar2, null, viewGroup);
                    if (actionMenuPresenter.w) {
                        int measureChildForCells = ActionMenuView.measureChildForCells(a3, i3, i4, makeMeasureSpec, 0);
                        i4 -= measureChildForCells;
                        z4 = measureChildForCells == 0 ? false : z4;
                    } else {
                        a3.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    int measuredWidth2 = a3.getMeasuredWidth();
                    i15 -= measuredWidth2;
                    if (i17 == 0) {
                        i17 = measuredWidth2;
                    }
                    z3 = z4 & (!actionMenuPresenter.w ? i15 + i17 <= 0 : i15 < 0);
                }
                if (z3 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z2) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i18 = 0; i18 < i16; i18++) {
                        androidx.appcompat.view.menu.i iVar3 = arrayList.get(i18);
                        if (iVar3.getGroupId() == groupId2) {
                            if (iVar3.h()) {
                                i13++;
                            }
                            iVar3.d(false);
                        }
                    }
                }
                if (z3) {
                    i13--;
                }
                iVar2.d(z3);
            } else {
                i5 = i2;
                iVar2.d(false);
                i16++;
                i2 = i5;
                view = null;
                i6 = 0;
                actionMenuPresenter = this;
            }
            i16++;
            i2 = i5;
            view = null;
            i6 = 0;
            actionMenuPresenter = this;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void a(androidx.appcompat.view.menu.f fVar, boolean z) {
        d();
        super.a(fVar, z);
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Parcelable parcelable) {
        int i2;
        MenuItem findItem;
        if ((parcelable instanceof SavedState) && (i2 = ((SavedState) parcelable).f1078e) > 0 && (findItem = this.f966g.findItem(i2)) != null) {
            a((androidx.appcompat.view.menu.r) findItem.getSubMenu());
        }
    }

    public void a(ActionMenuView actionMenuView) {
        this.f971l = actionMenuView;
        actionMenuView.initialize(this.f966g);
    }
}
