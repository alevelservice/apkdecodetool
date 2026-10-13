package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.view.menu.r;
import androidx.core.view.ViewCompat;
import androidx.core.view.e0;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* compiled from: NavigationMenuPresenter.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class g implements m {

    /* renamed from: e, reason: collision with root package name */
    private NavigationMenuView f13870e;

    /* renamed from: f, reason: collision with root package name */
    LinearLayout f13871f;

    /* renamed from: g, reason: collision with root package name */
    private m.a f13872g;

    /* renamed from: h, reason: collision with root package name */
    androidx.appcompat.view.menu.f f13873h;

    /* renamed from: i, reason: collision with root package name */
    private int f13874i;

    /* renamed from: j, reason: collision with root package name */
    c f13875j;

    /* renamed from: k, reason: collision with root package name */
    LayoutInflater f13876k;

    /* renamed from: l, reason: collision with root package name */
    int f13877l;
    boolean m;
    ColorStateList n;
    ColorStateList o;
    Drawable p;
    int q;
    int r;
    private int s;
    int t;
    final View.OnClickListener u = new a();

    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.b(true);
            androidx.appcompat.view.menu.i itemData = ((NavigationMenuItemView) view).getItemData();
            g gVar = g.this;
            boolean a2 = gVar.f13873h.a(itemData, gVar, 0);
            if (itemData != null && itemData.isCheckable() && a2) {
                g.this.f13875j.a(itemData);
            }
            g.this.b(false);
            g.this.a(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class b extends k {
        public b(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public class c extends RecyclerView.g<k> {

        /* renamed from: c, reason: collision with root package name */
        private final ArrayList<e> f13879c = new ArrayList<>();

        /* renamed from: d, reason: collision with root package name */
        private androidx.appcompat.view.menu.i f13880d;

        /* renamed from: e, reason: collision with root package name */
        private boolean f13881e;

        c() {
            g();
        }

        private void g() {
            if (this.f13881e) {
                return;
            }
            this.f13881e = true;
            this.f13879c.clear();
            this.f13879c.add(new d());
            int size = g.this.f13873h.n().size();
            int i2 = -1;
            boolean z = false;
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                androidx.appcompat.view.menu.i iVar = g.this.f13873h.n().get(i4);
                if (iVar.isChecked()) {
                    a(iVar);
                }
                if (iVar.isCheckable()) {
                    iVar.c(false);
                }
                if (iVar.hasSubMenu()) {
                    SubMenu subMenu = iVar.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i4 != 0) {
                            this.f13879c.add(new f(g.this.t, 0));
                        }
                        this.f13879c.add(new C0104g(iVar));
                        int size2 = this.f13879c.size();
                        int size3 = subMenu.size();
                        boolean z2 = false;
                        for (int i5 = 0; i5 < size3; i5++) {
                            androidx.appcompat.view.menu.i iVar2 = (androidx.appcompat.view.menu.i) subMenu.getItem(i5);
                            if (iVar2.isVisible()) {
                                if (!z2 && iVar2.getIcon() != null) {
                                    z2 = true;
                                }
                                if (iVar2.isCheckable()) {
                                    iVar2.c(false);
                                }
                                if (iVar.isChecked()) {
                                    a(iVar);
                                }
                                this.f13879c.add(new C0104g(iVar2));
                            }
                        }
                        if (z2) {
                            a(size2, this.f13879c.size());
                        }
                    }
                } else {
                    int groupId = iVar.getGroupId();
                    if (groupId != i2) {
                        i3 = this.f13879c.size();
                        boolean z3 = iVar.getIcon() != null;
                        if (i4 != 0) {
                            i3++;
                            ArrayList<e> arrayList = this.f13879c;
                            int i6 = g.this.t;
                            arrayList.add(new f(i6, i6));
                        }
                        z = z3;
                    } else if (!z && iVar.getIcon() != null) {
                        a(i3, this.f13879c.size());
                        z = true;
                    }
                    C0104g c0104g = new C0104g(iVar);
                    c0104g.f13886b = z;
                    this.f13879c.add(c0104g);
                    i2 = groupId;
                }
            }
            this.f13881e = false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public int a() {
            return this.f13879c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public long a(int i2) {
            return i2;
        }

        public androidx.appcompat.view.menu.i e() {
            return this.f13880d;
        }

        public void f() {
            g();
            c();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(k kVar, int i2) {
            int b2 = b(i2);
            if (b2 != 0) {
                if (b2 == 1) {
                    ((TextView) kVar.f2640a).setText(((C0104g) this.f13879c.get(i2)).a().getTitle());
                    return;
                } else {
                    if (b2 != 2) {
                        return;
                    }
                    f fVar = (f) this.f13879c.get(i2);
                    kVar.f2640a.setPadding(0, fVar.b(), 0, fVar.a());
                    return;
                }
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) kVar.f2640a;
            navigationMenuItemView.setIconTintList(g.this.o);
            g gVar = g.this;
            if (gVar.m) {
                navigationMenuItemView.setTextAppearance(gVar.f13877l);
            }
            ColorStateList colorStateList = g.this.n;
            if (colorStateList != null) {
                navigationMenuItemView.setTextColor(colorStateList);
            }
            Drawable drawable = g.this.p;
            ViewCompat.a(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            C0104g c0104g = (C0104g) this.f13879c.get(i2);
            navigationMenuItemView.setNeedsEmptyIcon(c0104g.f13886b);
            navigationMenuItemView.setHorizontalPadding(g.this.q);
            navigationMenuItemView.setIconPadding(g.this.r);
            navigationMenuItemView.initialize(c0104g.a(), 0);
        }

        public Bundle d() {
            Bundle bundle = new Bundle();
            androidx.appcompat.view.menu.i iVar = this.f13880d;
            if (iVar != null) {
                bundle.putInt("android:menu:checked", iVar.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f13879c.size();
            for (int i2 = 0; i2 < size; i2++) {
                e eVar = this.f13879c.get(i2);
                if (eVar instanceof C0104g) {
                    androidx.appcompat.view.menu.i a2 = ((C0104g) eVar).a();
                    View actionView = a2 != null ? a2.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(a2.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public int b(int i2) {
            e eVar = this.f13879c.get(i2);
            if (eVar instanceof f) {
                return 2;
            }
            if (eVar instanceof d) {
                return 3;
            }
            if (eVar instanceof C0104g) {
                return ((C0104g) eVar).a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public k b(ViewGroup viewGroup, int i2) {
            if (i2 == 0) {
                g gVar = g.this;
                return new h(gVar.f13876k, viewGroup, gVar.u);
            }
            if (i2 == 1) {
                return new j(g.this.f13876k, viewGroup);
            }
            if (i2 == 2) {
                return new i(g.this.f13876k, viewGroup);
            }
            if (i2 != 3) {
                return null;
            }
            return new b(g.this.f13871f);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void d(k kVar) {
            if (kVar instanceof h) {
                ((NavigationMenuItemView) kVar.f2640a).recycle();
            }
        }

        private void a(int i2, int i3) {
            while (i2 < i3) {
                ((C0104g) this.f13879c.get(i2)).f13886b = true;
                i2++;
            }
        }

        public void a(androidx.appcompat.view.menu.i iVar) {
            if (this.f13880d == iVar || !iVar.isCheckable()) {
                return;
            }
            androidx.appcompat.view.menu.i iVar2 = this.f13880d;
            if (iVar2 != null) {
                iVar2.setChecked(false);
            }
            this.f13880d = iVar;
            iVar.setChecked(true);
        }

        public void a(Bundle bundle) {
            androidx.appcompat.view.menu.i a2;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            androidx.appcompat.view.menu.i a3;
            int i2 = bundle.getInt("android:menu:checked", 0);
            if (i2 != 0) {
                this.f13881e = true;
                int size = this.f13879c.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        break;
                    }
                    e eVar = this.f13879c.get(i3);
                    if ((eVar instanceof C0104g) && (a3 = ((C0104g) eVar).a()) != null && a3.getItemId() == i2) {
                        a(a3);
                        break;
                    }
                    i3++;
                }
                this.f13881e = false;
                g();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.f13879c.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    e eVar2 = this.f13879c.get(i4);
                    if ((eVar2 instanceof C0104g) && (a2 = ((C0104g) eVar2).a()) != null && (actionView = a2.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(a2.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void a(boolean z) {
            this.f13881e = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class d implements e {
        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public interface e {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class f implements e {

        /* renamed from: a, reason: collision with root package name */
        private final int f13883a;

        /* renamed from: b, reason: collision with root package name */
        private final int f13884b;

        public f(int i2, int i3) {
            this.f13883a = i2;
            this.f13884b = i3;
        }

        public int a() {
            return this.f13884b;
        }

        public int b() {
            return this.f13883a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* renamed from: com.google.android.material.internal.g$g, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0104g implements e {

        /* renamed from: a, reason: collision with root package name */
        private final androidx.appcompat.view.menu.i f13885a;

        /* renamed from: b, reason: collision with root package name */
        boolean f13886b;

        C0104g(androidx.appcompat.view.menu.i iVar) {
            this.f13885a = iVar;
        }

        public androidx.appcompat.view.menu.i a() {
            return this.f13885a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class h extends k {
        public h(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(e.i.b.c.h.design_navigation_item, viewGroup, false));
            this.f2640a.setOnClickListener(onClickListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class i extends k {
        public i(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(e.i.b.c.h.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    public static class j extends k {
        public j(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(e.i.b.c.h.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* compiled from: NavigationMenuPresenter.java */
    /* loaded from: classes.dex */
    private static abstract class k extends RecyclerView.z {
        public k(View view) {
            super(view);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Context context, androidx.appcompat.view.menu.f fVar) {
        this.f13876k = LayoutInflater.from(context);
        this.f13873h = fVar;
        this.t = context.getResources().getDimensionPixelOffset(e.i.b.c.d.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(r rVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable b() {
        Bundle bundle = new Bundle();
        if (this.f13870e != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f13870e.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        c cVar = this.f13875j;
        if (cVar != null) {
            bundle.putBundle("android:menu:adapter", cVar.d());
        }
        if (this.f13871f != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.f13871f.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean b(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.i iVar) {
        return false;
    }

    public void c(int i2) {
        this.f13874i = i2;
    }

    public int d() {
        return this.f13871f.getChildCount();
    }

    @Nullable
    public Drawable e() {
        return this.p;
    }

    public void f(@StyleRes int i2) {
        this.f13877l = i2;
        this.m = true;
        a(false);
    }

    public int g() {
        return this.r;
    }

    @Override // androidx.appcompat.view.menu.m
    public int getId() {
        return this.f13874i;
    }

    @Nullable
    public ColorStateList h() {
        return this.n;
    }

    @Nullable
    public ColorStateList i() {
        return this.o;
    }

    @Nullable
    public androidx.appcompat.view.menu.i c() {
        return this.f13875j.e();
    }

    public void d(int i2) {
        this.q = i2;
        a(false);
    }

    public void e(int i2) {
        this.r = i2;
        a(false);
    }

    public int f() {
        return this.q;
    }

    public n a(ViewGroup viewGroup) {
        if (this.f13870e == null) {
            this.f13870e = (NavigationMenuView) this.f13876k.inflate(e.i.b.c.h.design_navigation_menu, viewGroup, false);
            if (this.f13875j == null) {
                this.f13875j = new c();
            }
            this.f13871f = (LinearLayout) this.f13876k.inflate(e.i.b.c.h.design_navigation_item_header, (ViewGroup) this.f13870e, false);
            this.f13870e.setAdapter(this.f13875j);
        }
        return this.f13870e;
    }

    public View b(@LayoutRes int i2) {
        View inflate = this.f13876k.inflate(i2, (ViewGroup) this.f13871f, false);
        a(inflate);
        return inflate;
    }

    public void b(@NonNull View view) {
        this.f13871f.removeView(view);
        if (this.f13871f.getChildCount() == 0) {
            NavigationMenuView navigationMenuView = this.f13870e;
            navigationMenuView.setPadding(0, this.s, 0, navigationMenuView.getPaddingBottom());
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(boolean z) {
        c cVar = this.f13875j;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(androidx.appcompat.view.menu.f fVar, boolean z) {
        m.a aVar = this.f13872g;
        if (aVar != null) {
            aVar.a(fVar, z);
        }
    }

    public void b(@Nullable ColorStateList colorStateList) {
        this.n = colorStateList;
        a(false);
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f13870e.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.f13875j.a(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.f13871f.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    public void b(boolean z) {
        c cVar = this.f13875j;
        if (cVar != null) {
            cVar.a(z);
        }
    }

    public void a(@NonNull androidx.appcompat.view.menu.i iVar) {
        this.f13875j.a(iVar);
    }

    public void a(@NonNull View view) {
        this.f13871f.addView(view);
        NavigationMenuView navigationMenuView = this.f13870e;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    public View a(int i2) {
        return this.f13871f.getChildAt(i2);
    }

    public void a(@Nullable ColorStateList colorStateList) {
        this.o = colorStateList;
        a(false);
    }

    public void a(@Nullable Drawable drawable) {
        this.p = drawable;
        a(false);
    }

    public void a(e0 e0Var) {
        int g2 = e0Var.g();
        if (this.s != g2) {
            this.s = g2;
            if (this.f13871f.getChildCount() == 0) {
                NavigationMenuView navigationMenuView = this.f13870e;
                navigationMenuView.setPadding(0, this.s, 0, navigationMenuView.getPaddingBottom());
            }
        }
        ViewCompat.a(this.f13871f, e0Var);
    }
}
