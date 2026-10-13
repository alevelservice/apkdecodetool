package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(19)
/* loaded from: classes.dex */
public final class u60 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private Context f9684a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private PopupWindow f9685b;

    private static PopupWindow b(Context context, View view) {
        Window window = context instanceof Activity ? ((Activity) context).getWindow() : null;
        if (window == null || window.getDecorView() == null || ((Activity) context).isDestroyed()) {
            return null;
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.addView(view, -1, -1);
        PopupWindow popupWindow = new PopupWindow((View) frameLayout, 1, 1, false);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setClippingEnabled(false);
        qd.a("Displaying the 1x1 popup off the screen.");
        try {
            popupWindow.showAtLocation(window.getDecorView(), 0, -1, -1);
            return popupWindow;
        } catch (Exception unused) {
            return null;
        }
    }

    public final void a(Context context, View view) {
        if (!com.google.android.gms.common.util.o.f() || com.google.android.gms.common.util.o.h()) {
            return;
        }
        this.f9685b = b(context, view);
        if (this.f9685b == null) {
            context = null;
        }
        this.f9684a = context;
    }

    public final void a() {
        Context context = this.f9684a;
        if (context == null || this.f9685b == null) {
            return;
        }
        if ((context instanceof Activity) && ((Activity) context).isDestroyed()) {
            this.f9684a = null;
            this.f9685b = null;
        } else {
            if (this.f9685b.isShowing()) {
                this.f9685b.dismiss();
            }
            this.f9684a = null;
            this.f9685b = null;
        }
    }
}
