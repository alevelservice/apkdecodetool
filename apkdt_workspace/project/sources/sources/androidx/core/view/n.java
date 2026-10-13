package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: NestedScrollingChildHelper.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    private ViewParent f1980a;

    /* renamed from: b, reason: collision with root package name */
    private ViewParent f1981b;

    /* renamed from: c, reason: collision with root package name */
    private final View f1982c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f1983d;

    /* renamed from: e, reason: collision with root package name */
    private int[] f1984e;

    public n(@NonNull View view) {
        this.f1982c = view;
    }

    private ViewParent d(int i2) {
        if (i2 == 0) {
            return this.f1980a;
        }
        if (i2 != 1) {
            return null;
        }
        return this.f1981b;
    }

    public void a(boolean z) {
        if (this.f1983d) {
            ViewCompat.J(this.f1982c);
        }
        this.f1983d = z;
    }

    public boolean b() {
        return this.f1983d;
    }

    public void c() {
        c(0);
    }

    public boolean b(int i2) {
        return a(i2, 0);
    }

    public void c(int i2) {
        ViewParent d2 = d(i2);
        if (d2 != null) {
            z.a(d2, this.f1982c, i2);
            a(i2, (ViewParent) null);
        }
    }

    private boolean b(int i2, int i3, int i4, int i5, @Nullable int[] iArr, int i6, @Nullable int[] iArr2) {
        ViewParent d2;
        int i7;
        int i8;
        int[] iArr3;
        if (!b() || (d2 = d(i6)) == null) {
            return false;
        }
        if (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f1982c.getLocationInWindow(iArr);
            i7 = iArr[0];
            i8 = iArr[1];
        } else {
            i7 = 0;
            i8 = 0;
        }
        if (iArr2 == null) {
            int[] d3 = d();
            d3[0] = 0;
            d3[1] = 0;
            iArr3 = d3;
        } else {
            iArr3 = iArr2;
        }
        z.a(d2, this.f1982c, i2, i3, i4, i5, i6, iArr3);
        if (iArr != null) {
            this.f1982c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i7;
            iArr[1] = iArr[1] - i8;
        }
        return true;
    }

    private int[] d() {
        if (this.f1984e == null) {
            this.f1984e = new int[2];
        }
        return this.f1984e;
    }

    public boolean a() {
        return a(0);
    }

    public boolean a(int i2) {
        return d(i2) != null;
    }

    public boolean a(int i2, int i3) {
        if (a(i3)) {
            return true;
        }
        if (!b()) {
            return false;
        }
        View view = this.f1982c;
        for (ViewParent parent = this.f1982c.getParent(); parent != null; parent = parent.getParent()) {
            if (z.b(parent, view, this.f1982c, i2, i3)) {
                a(i3, parent);
                z.a(parent, view, this.f1982c, i2, i3);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    public boolean a(int i2, int i3, int i4, int i5, @Nullable int[] iArr) {
        return b(i2, i3, i4, i5, iArr, 0, null);
    }

    public boolean a(int i2, int i3, int i4, int i5, @Nullable int[] iArr, int i6) {
        return b(i2, i3, i4, i5, iArr, i6, null);
    }

    public void a(int i2, int i3, int i4, int i5, @Nullable int[] iArr, int i6, @Nullable int[] iArr2) {
        b(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    public boolean a(int i2, int i3, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return a(i2, i3, iArr, iArr2, 0);
    }

    public boolean a(int i2, int i3, @Nullable int[] iArr, @Nullable int[] iArr2, int i4) {
        ViewParent d2;
        int i5;
        int i6;
        if (!b() || (d2 = d(i4)) == null) {
            return false;
        }
        if (i2 == 0 && i3 == 0) {
            if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
            return false;
        }
        if (iArr2 != null) {
            this.f1982c.getLocationInWindow(iArr2);
            i5 = iArr2[0];
            i6 = iArr2[1];
        } else {
            i5 = 0;
            i6 = 0;
        }
        if (iArr == null) {
            iArr = d();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        z.a(d2, this.f1982c, i2, i3, iArr, i4);
        if (iArr2 != null) {
            this.f1982c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i5;
            iArr2[1] = iArr2[1] - i6;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public boolean a(float f2, float f3, boolean z) {
        ViewParent d2;
        if (!b() || (d2 = d(0)) == null) {
            return false;
        }
        return z.a(d2, this.f1982c, f2, f3, z);
    }

    public boolean a(float f2, float f3) {
        ViewParent d2;
        if (!b() || (d2 = d(0)) == null) {
            return false;
        }
        return z.a(d2, this.f1982c, f2, f3);
    }

    private void a(int i2, ViewParent viewParent) {
        if (i2 == 0) {
            this.f1980a = viewParent;
        } else {
            if (i2 != 1) {
                return;
            }
            this.f1981b = viewParent;
        }
    }
}
