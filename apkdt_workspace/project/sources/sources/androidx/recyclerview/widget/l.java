package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: ScrollbarHelper.java */
/* loaded from: classes.dex */
class l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RecyclerView.w wVar, j jVar, View view, View view2, RecyclerView.m mVar, boolean z, boolean z2) {
        int max;
        if (mVar.e() == 0 || wVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(mVar.l(view), mVar.l(view2));
        int max2 = Math.max(mVar.l(view), mVar.l(view2));
        if (z2) {
            max = Math.max(0, (wVar.a() - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(jVar.a(view2) - jVar.d(view)) / (Math.abs(mVar.l(view) - mVar.l(view2)) + 1))) + (jVar.f() - jVar.d(view)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(RecyclerView.w wVar, j jVar, View view, View view2, RecyclerView.m mVar, boolean z) {
        if (mVar.e() == 0 || wVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return wVar.a();
        }
        return (int) (((jVar.a(view2) - jVar.d(view)) / (Math.abs(mVar.l(view) - mVar.l(view2)) + 1)) * wVar.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RecyclerView.w wVar, j jVar, View view, View view2, RecyclerView.m mVar, boolean z) {
        if (mVar.e() == 0 || wVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(mVar.l(view) - mVar.l(view2)) + 1;
        }
        return Math.min(jVar.g(), jVar.a(view2) - jVar.d(view));
    }
}
