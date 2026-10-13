package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.m;
import androidx.core.view.ViewCompat;

/* compiled from: MenuPopupHelper.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class l implements h {

    /* renamed from: a, reason: collision with root package name */
    private final Context f1031a;

    /* renamed from: b, reason: collision with root package name */
    private final f f1032b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f1033c;

    /* renamed from: d, reason: collision with root package name */
    private final int f1034d;

    /* renamed from: e, reason: collision with root package name */
    private final int f1035e;

    /* renamed from: f, reason: collision with root package name */
    private View f1036f;

    /* renamed from: g, reason: collision with root package name */
    private int f1037g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f1038h;

    /* renamed from: i, reason: collision with root package name */
    private m.a f1039i;

    /* renamed from: j, reason: collision with root package name */
    private k f1040j;

    /* renamed from: k, reason: collision with root package name */
    private PopupWindow.OnDismissListener f1041k;

    /* renamed from: l, reason: collision with root package name */
    private final PopupWindow.OnDismissListener f1042l;

    /* compiled from: MenuPopupHelper.java */
    /* loaded from: classes.dex */
    class a implements PopupWindow.OnDismissListener {
        a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            l.this.d();
        }
    }

    public l(@NonNull Context context, @NonNull f fVar, @NonNull View view, boolean z, @AttrRes int i2) {
        this(context, fVar, view, z, i2, 0);
    }

    @NonNull
    private k g() {
        k qVar;
        Display defaultDisplay = ((WindowManager) this.f1031a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        if (Math.min(point.x, point.y) >= this.f1031a.getResources().getDimensionPixelSize(a.a.d.abc_cascading_menus_min_smallest_width)) {
            qVar = new CascadingMenuPopup(this.f1031a, this.f1036f, this.f1034d, this.f1035e, this.f1033c);
        } else {
            qVar = new q(this.f1031a, this.f1032b, this.f1036f, this.f1034d, this.f1035e, this.f1033c);
        }
        qVar.a(this.f1032b);
        qVar.a(this.f1042l);
        qVar.a(this.f1036f);
        qVar.a(this.f1039i);
        qVar.b(this.f1038h);
        qVar.a(this.f1037g);
        return qVar;
    }

    public void a(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.f1041k = onDismissListener;
    }

    @NonNull
    public k b() {
        if (this.f1040j == null) {
            this.f1040j = g();
        }
        return this.f1040j;
    }

    public boolean c() {
        k kVar = this.f1040j;
        return kVar != null && kVar.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        this.f1040j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f1041k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void e() {
        if (!f()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean f() {
        if (c()) {
            return true;
        }
        if (this.f1036f == null) {
            return false;
        }
        a(0, 0, false, false);
        return true;
    }

    public l(@NonNull Context context, @NonNull f fVar, @NonNull View view, boolean z, @AttrRes int i2, @StyleRes int i3) {
        this.f1037g = 8388611;
        this.f1042l = new a();
        this.f1031a = context;
        this.f1032b = fVar;
        this.f1036f = view;
        this.f1033c = z;
        this.f1034d = i2;
        this.f1035e = i3;
    }

    public void a(@NonNull View view) {
        this.f1036f = view;
    }

    public void a(boolean z) {
        this.f1038h = z;
        k kVar = this.f1040j;
        if (kVar != null) {
            kVar.b(z);
        }
    }

    public void a(int i2) {
        this.f1037g = i2;
    }

    public boolean a(int i2, int i3) {
        if (c()) {
            return true;
        }
        if (this.f1036f == null) {
            return false;
        }
        a(i2, i3, true, true);
        return true;
    }

    private void a(int i2, int i3, boolean z, boolean z2) {
        k b2 = b();
        b2.c(z2);
        if (z) {
            if ((androidx.core.view.e.a(this.f1037g, ViewCompat.n(this.f1036f)) & 7) == 5) {
                i2 -= this.f1036f.getWidth();
            }
            b2.b(i2);
            b2.c(i3);
            int i4 = (int) ((this.f1031a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            b2.a(new Rect(i2 - i4, i3 - i4, i2 + i4, i3 + i4));
        }
        b2.show();
    }

    public void a() {
        if (c()) {
            this.f1040j.dismiss();
        }
    }

    public void a(@Nullable m.a aVar) {
        this.f1039i = aVar;
        k kVar = this.f1040j;
        if (kVar != null) {
            kVar.a(aVar);
        }
    }
}
