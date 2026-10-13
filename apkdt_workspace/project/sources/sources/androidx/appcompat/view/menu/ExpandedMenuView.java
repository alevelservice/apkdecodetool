package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.widget.d0;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements f.b, n, AdapterView.OnItemClickListener {

    /* renamed from: g, reason: collision with root package name */
    private static final int[] f941g = {R.attr.background, R.attr.divider};

    /* renamed from: e, reason: collision with root package name */
    private f f942e;

    /* renamed from: f, reason: collision with root package name */
    private int f943f;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    public int getWindowAnimations() {
        return this.f943f;
    }

    @Override // androidx.appcompat.view.menu.n
    public void initialize(f fVar) {
        this.f942e = fVar;
    }

    @Override // androidx.appcompat.view.menu.f.b
    public boolean invokeItem(i iVar) {
        return this.f942e.a(iVar, 0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
        invokeItem((i) getAdapter().getItem(i2));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        d0 a2 = d0.a(context, attributeSet, f941g, i2, 0);
        if (a2.g(0)) {
            setBackgroundDrawable(a2.b(0));
        }
        if (a2.g(1)) {
            setDivider(a2.b(1));
        }
        a2.b();
    }
}
