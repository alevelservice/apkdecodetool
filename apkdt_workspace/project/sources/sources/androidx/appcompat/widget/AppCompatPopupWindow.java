package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;

/* loaded from: classes.dex */
class AppCompatPopupWindow extends PopupWindow {

    /* renamed from: b, reason: collision with root package name */
    private static final boolean f1130b;

    /* renamed from: a, reason: collision with root package name */
    private boolean f1131a;

    static {
        f1130b = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i3) {
        super(context, attributeSet, i2, i3);
        a(context, attributeSet, i2, i3);
    }

    private void a(Context context, AttributeSet attributeSet, int i2, int i3) {
        d0 a2 = d0.a(context, attributeSet, a.a.j.PopupWindow, i2, i3);
        if (a2.g(a.a.j.PopupWindow_overlapAnchor)) {
            a(a2.a(a.a.j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(a2.b(a.a.j.PopupWindow_android_popupBackground));
        a2.b();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i3) {
        if (f1130b && this.f1131a) {
            i3 -= view.getHeight();
        }
        super.showAsDropDown(view, i2, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i2, int i3, int i4, int i5) {
        if (f1130b && this.f1131a) {
            i3 -= view.getHeight();
        }
        super.update(view, i2, i3, i4, i5);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i3, int i4) {
        if (f1130b && this.f1131a) {
            i3 -= view.getHeight();
        }
        super.showAsDropDown(view, i2, i3, i4);
    }

    private void a(boolean z) {
        if (f1130b) {
            this.f1131a = z;
        } else {
            androidx.core.widget.h.a(this, z);
        }
    }
}
