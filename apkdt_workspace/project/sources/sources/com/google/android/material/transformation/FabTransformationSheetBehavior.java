package com.google.android.material.transformation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.CallSuper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.transformation.FabTransformationBehavior;
import e.i.b.c.a;
import e.i.b.c.l.h;
import e.i.b.c.l.j;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: g, reason: collision with root package name */
    private Map<View, Integer> f14030g;

    public FabTransformationSheetBehavior() {
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    protected FabTransformationBehavior.e a(Context context, boolean z) {
        int i2;
        if (z) {
            i2 = a.mtrl_fab_transformation_sheet_expand_spec;
        } else {
            i2 = a.mtrl_fab_transformation_sheet_collapse_spec;
        }
        FabTransformationBehavior.e eVar = new FabTransformationBehavior.e();
        eVar.f14024a = h.a(context, i2);
        eVar.f14025b = new j(17, 0.0f, 0.0f);
        return eVar;
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    public boolean a(View view, View view2, boolean z, boolean z2) {
        a(view2, z);
        return super.a(view, view2, z, z2);
    }

    private void a(View view, boolean z) {
        ViewParent parent = view.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                this.f14030g = new HashMap(childCount);
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                boolean z2 = (childAt.getLayoutParams() instanceof CoordinatorLayout.d) && (((CoordinatorLayout.d) childAt.getLayoutParams()).d() instanceof FabTransformationScrimBehavior);
                if (childAt != view && !z2) {
                    if (!z) {
                        Map<View, Integer> map = this.f14030g;
                        if (map != null && map.containsKey(childAt)) {
                            ViewCompat.g(childAt, this.f14030g.get(childAt).intValue());
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.f14030g.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        ViewCompat.g(childAt, 4);
                    }
                }
            }
            if (z) {
                return;
            }
            this.f14030g = null;
        }
    }
}
