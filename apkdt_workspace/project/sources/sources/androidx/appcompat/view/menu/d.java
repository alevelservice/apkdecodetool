package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* compiled from: ListMenuPresenter.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class d implements m, AdapterView.OnItemClickListener {

    /* renamed from: e, reason: collision with root package name */
    Context f975e;

    /* renamed from: f, reason: collision with root package name */
    LayoutInflater f976f;

    /* renamed from: g, reason: collision with root package name */
    f f977g;

    /* renamed from: h, reason: collision with root package name */
    ExpandedMenuView f978h;

    /* renamed from: i, reason: collision with root package name */
    int f979i;

    /* renamed from: j, reason: collision with root package name */
    int f980j;

    /* renamed from: k, reason: collision with root package name */
    int f981k;

    /* renamed from: l, reason: collision with root package name */
    private m.a f982l;
    a m;
    private int n;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListMenuPresenter.java */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {

        /* renamed from: e, reason: collision with root package name */
        private int f983e = -1;

        public a() {
            a();
        }

        void a() {
            i f2 = d.this.f977g.f();
            if (f2 != null) {
                ArrayList<i> j2 = d.this.f977g.j();
                int size = j2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (j2.get(i2) == f2) {
                        this.f983e = i2;
                        return;
                    }
                }
            }
            this.f983e = -1;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = d.this.f977g.j().size() - d.this.f979i;
            return this.f983e < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                d dVar = d.this;
                view = dVar.f976f.inflate(dVar.f981k, viewGroup, false);
            }
            ((n.a) view).initialize(getItem(i2), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public i getItem(int i2) {
            ArrayList<i> j2 = d.this.f977g.j();
            int i3 = i2 + d.this.f979i;
            int i4 = this.f983e;
            if (i4 >= 0 && i3 >= i4) {
                i3++;
            }
            return j2.get(i3);
        }
    }

    public d(Context context, int i2) {
        this(i2, 0);
        this.f975e = context;
        this.f976f = LayoutInflater.from(this.f975e);
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Context context, f fVar) {
        int i2 = this.f980j;
        if (i2 != 0) {
            this.f975e = new ContextThemeWrapper(context, i2);
            this.f976f = LayoutInflater.from(this.f975e);
        } else if (this.f975e != null) {
            this.f975e = context;
            if (this.f976f == null) {
                this.f976f = LayoutInflater.from(this.f975e);
            }
        }
        this.f977g = fVar;
        a aVar = this.m;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(f fVar, i iVar) {
        return false;
    }

    public void b(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f978h;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean b(f fVar, i iVar) {
        return false;
    }

    public ListAdapter c() {
        if (this.m == null) {
            this.m = new a();
        }
        return this.m;
    }

    @Override // androidx.appcompat.view.menu.m
    public int getId() {
        return this.n;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.f977g.a(this.m.getItem(i2), this, 0);
    }

    public d(int i2, int i3) {
        this.f981k = i2;
        this.f980j = i3;
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable b() {
        if (this.f978h == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        b(bundle);
        return bundle;
    }

    public n a(ViewGroup viewGroup) {
        if (this.f978h == null) {
            this.f978h = (ExpandedMenuView) this.f976f.inflate(a.a.g.abc_expanded_menu_layout, viewGroup, false);
            if (this.m == null) {
                this.m = new a();
            }
            this.f978h.setAdapter((ListAdapter) this.m);
            this.f978h.setOnItemClickListener(this);
        }
        return this.f978h;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(boolean z) {
        a aVar = this.m;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(m.a aVar) {
        this.f982l = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        new g(rVar).a((IBinder) null);
        m.a aVar = this.f982l;
        if (aVar == null) {
            return true;
        }
        aVar.a(rVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(f fVar, boolean z) {
        m.a aVar = this.f982l;
        if (aVar != null) {
            aVar.a(fVar, z);
        }
    }

    public void a(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f978h.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Parcelable parcelable) {
        a((Bundle) parcelable);
    }
}
