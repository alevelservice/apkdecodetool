package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* compiled from: TooltipPopup.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class h0 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f1361a;

    /* renamed from: b, reason: collision with root package name */
    private final View f1362b;

    /* renamed from: c, reason: collision with root package name */
    private final TextView f1363c;

    /* renamed from: d, reason: collision with root package name */
    private final WindowManager.LayoutParams f1364d = new WindowManager.LayoutParams();

    /* renamed from: e, reason: collision with root package name */
    private final Rect f1365e = new Rect();

    /* renamed from: f, reason: collision with root package name */
    private final int[] f1366f = new int[2];

    /* renamed from: g, reason: collision with root package name */
    private final int[] f1367g = new int[2];

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(@NonNull Context context) {
        this.f1361a = context;
        this.f1362b = LayoutInflater.from(this.f1361a).inflate(a.a.g.abc_tooltip, (ViewGroup) null);
        this.f1363c = (TextView) this.f1362b.findViewById(a.a.f.message);
        this.f1364d.setTitle(h0.class.getSimpleName());
        this.f1364d.packageName = this.f1361a.getPackageName();
        WindowManager.LayoutParams layoutParams = this.f1364d;
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = a.a.i.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, int i2, int i3, boolean z, CharSequence charSequence) {
        if (b()) {
            a();
        }
        this.f1363c.setText(charSequence);
        a(view, i2, i3, z, this.f1364d);
        ((WindowManager) this.f1361a.getSystemService("window")).addView(this.f1362b, this.f1364d);
    }

    boolean b() {
        return this.f1362b.getParent() != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (b()) {
            ((WindowManager) this.f1361a.getSystemService("window")).removeView(this.f1362b);
        }
    }

    private void a(View view, int i2, int i3, boolean z, WindowManager.LayoutParams layoutParams) {
        int height;
        int i4;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1361a.getResources().getDimensionPixelOffset(a.a.d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i2 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1361a.getResources().getDimensionPixelOffset(a.a.d.tooltip_precise_anchor_extra_offset);
            height = i3 + dimensionPixelOffset2;
            i4 = i3 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i4 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1361a.getResources().getDimensionPixelOffset(z ? a.a.d.tooltip_y_offset_touch : a.a.d.tooltip_y_offset_non_touch);
        View a2 = a(view);
        if (a2 == null) {
            return;
        }
        a2.getWindowVisibleDisplayFrame(this.f1365e);
        Rect rect = this.f1365e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f1361a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1365e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        a2.getLocationOnScreen(this.f1367g);
        view.getLocationOnScreen(this.f1366f);
        int[] iArr = this.f1366f;
        int i5 = iArr[0];
        int[] iArr2 = this.f1367g;
        iArr[0] = i5 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i2) - (a2.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1362b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f1362b.getMeasuredHeight();
        int[] iArr3 = this.f1366f;
        int i6 = ((iArr3[1] + i4) - dimensionPixelOffset3) - measuredHeight;
        int i7 = iArr3[1] + height + dimensionPixelOffset3;
        if (z) {
            if (i6 >= 0) {
                layoutParams.y = i6;
                return;
            } else {
                layoutParams.y = i7;
                return;
            }
        }
        if (measuredHeight + i7 <= this.f1365e.height()) {
            layoutParams.y = i7;
        } else {
            layoutParams.y = i6;
        }
    }

    private static View a(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }
}
