package androidx.browser.browseractions;

import a.c.a;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
@Deprecated
/* loaded from: classes.dex */
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* renamed from: e, reason: collision with root package name */
    private final int f1465e;

    /* renamed from: f, reason: collision with root package name */
    private final int f1466f;

    public BrowserActionsFallbackMenuView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1465e = getResources().getDimensionPixelOffset(a.browser_actions_context_menu_min_padding);
        this.f1466f = getResources().getDimensionPixelOffset(a.browser_actions_context_menu_max_width);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f1465e * 2), this.f1466f), 1073741824), i3);
    }
}
