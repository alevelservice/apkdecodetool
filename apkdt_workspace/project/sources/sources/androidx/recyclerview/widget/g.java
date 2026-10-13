package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: LayoutState.java */
/* loaded from: classes.dex */
class g {

    /* renamed from: b, reason: collision with root package name */
    int f2783b;

    /* renamed from: c, reason: collision with root package name */
    int f2784c;

    /* renamed from: d, reason: collision with root package name */
    int f2785d;

    /* renamed from: e, reason: collision with root package name */
    int f2786e;

    /* renamed from: h, reason: collision with root package name */
    boolean f2789h;

    /* renamed from: i, reason: collision with root package name */
    boolean f2790i;

    /* renamed from: a, reason: collision with root package name */
    boolean f2782a = true;

    /* renamed from: f, reason: collision with root package name */
    int f2787f = 0;

    /* renamed from: g, reason: collision with root package name */
    int f2788g = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(RecyclerView.w wVar) {
        int i2 = this.f2784c;
        return i2 >= 0 && i2 < wVar.a();
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f2783b + ", mCurrentPosition=" + this.f2784c + ", mItemDirection=" + this.f2785d + ", mLayoutDirection=" + this.f2786e + ", mStartLine=" + this.f2787f + ", mEndLine=" + this.f2788g + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View a(RecyclerView.s sVar) {
        View d2 = sVar.d(this.f2784c);
        this.f2784c += this.f2785d;
        return d2;
    }
}
