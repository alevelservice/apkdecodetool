package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MenuPopup.java */
/* loaded from: classes.dex */
public abstract class k implements p, m, AdapterView.OnItemClickListener {

    /* renamed from: e, reason: collision with root package name */
    private Rect f1030e;

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean b(f fVar) {
        int size = fVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = fVar.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    public abstract void a(int i2);

    @Override // androidx.appcompat.view.menu.m
    public void a(@NonNull Context context, @Nullable f fVar) {
    }

    public void a(Rect rect) {
        this.f1030e = rect;
    }

    public abstract void a(View view);

    public abstract void a(PopupWindow.OnDismissListener onDismissListener);

    public abstract void a(f fVar);

    @Override // androidx.appcompat.view.menu.m
    public boolean a(f fVar, i iVar) {
        return false;
    }

    public abstract void b(int i2);

    public abstract void b(boolean z);

    @Override // androidx.appcompat.view.menu.m
    public boolean b(f fVar, i iVar) {
        return false;
    }

    public abstract void c(int i2);

    public abstract void c(boolean z);

    protected boolean d() {
        return true;
    }

    public Rect f() {
        return this.f1030e;
    }

    @Override // androidx.appcompat.view.menu.m
    public int getId() {
        return 0;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        a(listAdapter).f985e.a((MenuItem) listAdapter.getItem(i2), this, d() ? 0 : 4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        ViewGroup viewGroup2 = viewGroup;
        View view = null;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < count; i5++) {
            int itemViewType = listAdapter.getItemViewType(i5);
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            if (viewGroup2 == null) {
                viewGroup2 = new FrameLayout(context);
            }
            view = listAdapter.getView(i5, view, viewGroup2);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i2) {
                return i2;
            }
            if (measuredWidth > i3) {
                i3 = measuredWidth;
            }
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static e a(ListAdapter listAdapter) {
        if (listAdapter instanceof HeaderViewListAdapter) {
            return (e) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter();
        }
        return (e) listAdapter;
    }
}
