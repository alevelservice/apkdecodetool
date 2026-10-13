package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* compiled from: BaseMenuPresenter.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class b implements m {

    /* renamed from: e, reason: collision with root package name */
    protected Context f964e;

    /* renamed from: f, reason: collision with root package name */
    protected Context f965f;

    /* renamed from: g, reason: collision with root package name */
    protected f f966g;

    /* renamed from: h, reason: collision with root package name */
    protected LayoutInflater f967h;

    /* renamed from: i, reason: collision with root package name */
    private m.a f968i;

    /* renamed from: j, reason: collision with root package name */
    private int f969j;

    /* renamed from: k, reason: collision with root package name */
    private int f970k;

    /* renamed from: l, reason: collision with root package name */
    protected n f971l;
    private int m;

    public b(Context context, int i2, int i3) {
        this.f964e = context;
        this.f967h = LayoutInflater.from(context);
        this.f969j = i2;
        this.f970k = i3;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Context context, f fVar) {
        this.f965f = context;
        LayoutInflater.from(this.f965f);
        this.f966g = fVar;
    }

    public abstract void a(i iVar, n.a aVar);

    public abstract boolean a(int i2, i iVar);

    @Override // androidx.appcompat.view.menu.m
    public boolean a(f fVar, i iVar) {
        return false;
    }

    public n b(ViewGroup viewGroup) {
        if (this.f971l == null) {
            this.f971l = (n) this.f967h.inflate(this.f969j, viewGroup, false);
            this.f971l.initialize(this.f966g);
            a(true);
        }
        return this.f971l;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean b(f fVar, i iVar) {
        return false;
    }

    public m.a c() {
        return this.f968i;
    }

    @Override // androidx.appcompat.view.menu.m
    public int getId() {
        return this.m;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.m
    public void a(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f971l;
        if (viewGroup == null) {
            return;
        }
        f fVar = this.f966g;
        int i2 = 0;
        if (fVar != null) {
            fVar.b();
            ArrayList<i> n = this.f966g.n();
            int size = n.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                i iVar = n.get(i4);
                if (a(i3, iVar)) {
                    View childAt = viewGroup.getChildAt(i3);
                    i itemData = childAt instanceof n.a ? ((n.a) childAt).getItemData() : null;
                    View a2 = a(iVar, childAt, viewGroup);
                    if (iVar != itemData) {
                        a2.setPressed(false);
                        a2.jumpDrawablesToCurrentState();
                    }
                    if (a2 != childAt) {
                        a(a2, i3);
                    }
                    i3++;
                }
            }
            i2 = i3;
        }
        while (i2 < viewGroup.getChildCount()) {
            if (!a(viewGroup, i2)) {
                i2++;
            }
        }
    }

    protected void a(View view, int i2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f971l).addView(view, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(ViewGroup viewGroup, int i2) {
        viewGroup.removeViewAt(i2);
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(m.a aVar) {
        this.f968i = aVar;
    }

    public n.a a(ViewGroup viewGroup) {
        return (n.a) this.f967h.inflate(this.f970k, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View a(i iVar, View view, ViewGroup viewGroup) {
        n.a aVar;
        if (view instanceof n.a) {
            aVar = (n.a) view;
        } else {
            aVar = a(viewGroup);
        }
        a(iVar, aVar);
        return (View) aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(f fVar, boolean z) {
        m.a aVar = this.f968i;
        if (aVar != null) {
            aVar.a(fVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a(r rVar) {
        m.a aVar = this.f968i;
        if (aVar != null) {
            return aVar.a(rVar);
        }
        return false;
    }

    public void a(int i2) {
        this.m = i2;
    }
}
