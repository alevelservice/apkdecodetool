package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.e;

/* compiled from: BaseTransientBottomBar.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private e.b f13915a;

    public a(SwipeDismissBehavior<?> swipeDismissBehavior) {
        swipeDismissBehavior.b(0.1f);
        swipeDismissBehavior.a(0.6f);
        swipeDismissBehavior.a(0);
    }

    public boolean a(View view) {
        return view instanceof BaseTransientBottomBar$SnackbarBaseLayout;
    }

    public void a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                e.a().a(this.f13915a);
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            e.a().b(this.f13915a);
        }
    }
}
