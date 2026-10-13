package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* compiled from: MenuAdapter.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class e extends BaseAdapter {

    /* renamed from: e, reason: collision with root package name */
    f f985e;

    /* renamed from: f, reason: collision with root package name */
    private int f986f = -1;

    /* renamed from: g, reason: collision with root package name */
    private boolean f987g;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f988h;

    /* renamed from: i, reason: collision with root package name */
    private final LayoutInflater f989i;

    /* renamed from: j, reason: collision with root package name */
    private final int f990j;

    public e(f fVar, LayoutInflater layoutInflater, boolean z, int i2) {
        this.f988h = z;
        this.f989i = layoutInflater;
        this.f985e = fVar;
        this.f990j = i2;
        a();
    }

    public void a(boolean z) {
        this.f987g = z;
    }

    public f b() {
        return this.f985e;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<i> j2 = this.f988h ? this.f985e.j() : this.f985e.n();
        if (this.f986f < 0) {
            return j2.size();
        }
        return j2.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f989i.inflate(this.f990j, viewGroup, false);
        }
        int groupId = getItem(i2).getGroupId();
        int i3 = i2 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f985e.o() && groupId != (i3 >= 0 ? getItem(i3).getGroupId() : groupId));
        n.a aVar = (n.a) view;
        if (this.f987g) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.initialize(getItem(i2), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }

    void a() {
        i f2 = this.f985e.f();
        if (f2 != null) {
            ArrayList<i> j2 = this.f985e.j();
            int size = j2.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (j2.get(i2) == f2) {
                    this.f986f = i2;
                    return;
                }
            }
        }
        this.f986f = -1;
    }

    @Override // android.widget.Adapter
    public i getItem(int i2) {
        ArrayList<i> j2 = this.f988h ? this.f985e.j() : this.f985e.n();
        int i3 = this.f986f;
        if (i3 >= 0 && i2 >= i3) {
            i2++;
        }
        return j2.get(i2);
    }
}
