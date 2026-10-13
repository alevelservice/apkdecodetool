package a.k.a;

import a.e.h;
import a.k.a.b;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.f0.d;
import androidx.core.view.f0.e;
import androidx.core.view.f0.f;
import androidx.core.view.z;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ExploreByTouchHelper.java */
/* loaded from: classes.dex */
public abstract class a extends androidx.core.view.a {
    private static final Rect n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, e.b.b.a.a.a.c.ALL_INT, e.b.b.a.a.a.c.ALL_INT);
    private static final b.a<d> o = new C0010a();
    private static final b.InterfaceC0011b<h<d>, d> p = new b();

    /* renamed from: h, reason: collision with root package name */
    private final AccessibilityManager f385h;

    /* renamed from: i, reason: collision with root package name */
    private final View f386i;

    /* renamed from: j, reason: collision with root package name */
    private c f387j;

    /* renamed from: d, reason: collision with root package name */
    private final Rect f381d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    private final Rect f382e = new Rect();

    /* renamed from: f, reason: collision with root package name */
    private final Rect f383f = new Rect();

    /* renamed from: g, reason: collision with root package name */
    private final int[] f384g = new int[2];

    /* renamed from: k, reason: collision with root package name */
    int f388k = e.b.b.a.a.a.c.ALL_INT;

    /* renamed from: l, reason: collision with root package name */
    int f389l = e.b.b.a.a.a.c.ALL_INT;
    private int m = e.b.b.a.a.a.c.ALL_INT;

    /* compiled from: ExploreByTouchHelper.java */
    /* renamed from: a.k.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0010a implements b.a<d> {
        C0010a() {
        }

        @Override // a.k.a.b.a
        public void a(d dVar, Rect rect) {
            dVar.a(rect);
        }
    }

    public a(@NonNull View view) {
        if (view != null) {
            this.f386i = view;
            this.f385h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (ViewCompat.l(view) == 0) {
                ViewCompat.g(view, 1);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    private boolean b(int i2, @Nullable Rect rect) {
        d dVar;
        h<d> d2 = d();
        int i3 = this.f389l;
        int i4 = e.b.b.a.a.a.c.ALL_INT;
        d a2 = i3 == Integer.MIN_VALUE ? null : d2.a(i3);
        if (i2 == 1 || i2 == 2) {
            dVar = (d) a.k.a.b.a(d2, p, o, a2, i2, ViewCompat.n(this.f386i) == 1, false);
        } else {
            if (i2 != 17 && i2 != 33 && i2 != 66 && i2 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i5 = this.f389l;
            if (i5 != Integer.MIN_VALUE) {
                a(i5, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                a(this.f386i, i2, rect2);
            }
            dVar = (d) a.k.a.b.a(d2, p, o, a2, rect2, i2);
        }
        if (dVar != null) {
            i4 = d2.c(d2.a((h<d>) dVar));
        }
        return c(i4);
    }

    private AccessibilityEvent c(int i2, int i3) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i3);
        d b2 = b(i2);
        obtain.getText().add(b2.i());
        obtain.setContentDescription(b2.e());
        obtain.setScrollable(b2.t());
        obtain.setPassword(b2.s());
        obtain.setEnabled(b2.o());
        obtain.setChecked(b2.m());
        a(i2, obtain);
        if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain.setClassName(b2.d());
        f.a(obtain, this.f386i, i2);
        obtain.setPackageName(this.f386i.getContext().getPackageName());
        return obtain;
    }

    private h<d> d() {
        ArrayList arrayList = new ArrayList();
        a(arrayList);
        h<d> hVar = new h<>();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            hVar.c(i2, f(i2));
        }
        return hVar;
    }

    private AccessibilityEvent e(int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        this.f386i.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    @NonNull
    private d f(int i2) {
        d A = d.A();
        A.g(true);
        A.h(true);
        A.a("android.view.View");
        A.c(n);
        A.d(n);
        A.b(this.f386i);
        a(i2, A);
        if (A.i() == null && A.e() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        A.a(this.f382e);
        if (!this.f382e.equals(n)) {
            int b2 = A.b();
            if ((b2 & 64) != 0) {
                throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
            if ((b2 & 128) == 0) {
                A.e(this.f386i.getContext().getPackageName());
                A.c(this.f386i, i2);
                if (this.f388k == i2) {
                    A.a(true);
                    A.a(128);
                } else {
                    A.a(false);
                    A.a(64);
                }
                boolean z = this.f389l == i2;
                if (z) {
                    A.a(2);
                } else if (A.p()) {
                    A.a(1);
                }
                A.i(z);
                this.f386i.getLocationOnScreen(this.f384g);
                A.b(this.f381d);
                if (this.f381d.equals(n)) {
                    A.a(this.f381d);
                    if (A.f1962b != -1) {
                        d A2 = d.A();
                        for (int i3 = A.f1962b; i3 != -1; i3 = A2.f1962b) {
                            A2.b(this.f386i, -1);
                            A2.c(n);
                            a(i3, A2);
                            A2.a(this.f382e);
                            Rect rect = this.f381d;
                            Rect rect2 = this.f382e;
                            rect.offset(rect2.left, rect2.top);
                        }
                        A2.w();
                    }
                    this.f381d.offset(this.f384g[0] - this.f386i.getScrollX(), this.f384g[1] - this.f386i.getScrollY());
                }
                if (this.f386i.getLocalVisibleRect(this.f383f)) {
                    this.f383f.offset(this.f384g[0] - this.f386i.getScrollX(), this.f384g[1] - this.f386i.getScrollY());
                    if (this.f381d.intersect(this.f383f)) {
                        A.d(this.f381d);
                        if (a(this.f381d)) {
                            A.p(true);
                        }
                    }
                }
                return A;
            }
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
    }

    private static int g(int i2) {
        if (i2 == 19) {
            return 33;
        }
        if (i2 != 21) {
            return i2 != 22 ? 130 : 66;
        }
        return 17;
    }

    private boolean h(int i2) {
        int i3;
        if (!this.f385h.isEnabled() || !this.f385h.isTouchExplorationEnabled() || (i3 = this.f388k) == i2) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            d(i3);
        }
        this.f388k = i2;
        this.f386i.invalidate();
        a(i2, 32768);
        return true;
    }

    private void i(int i2) {
        int i3 = this.m;
        if (i3 == i2) {
            return;
        }
        this.m = i2;
        a(i2, 128);
        a(i3, 256);
    }

    protected abstract int a(float f2, float f3);

    @Override // androidx.core.view.a
    public e a(View view) {
        if (this.f387j == null) {
            this.f387j = new c();
        }
        return this.f387j;
    }

    protected void a(int i2, @NonNull AccessibilityEvent accessibilityEvent) {
    }

    protected abstract void a(int i2, @NonNull d dVar);

    protected void a(int i2, boolean z) {
    }

    protected void a(@NonNull AccessibilityEvent accessibilityEvent) {
    }

    protected void a(@NonNull d dVar) {
    }

    protected abstract void a(List<Integer> list);

    protected abstract boolean a(int i2, int i3, @Nullable Bundle bundle);

    /* compiled from: ExploreByTouchHelper.java */
    /* loaded from: classes.dex */
    static class b implements b.InterfaceC0011b<h<d>, d> {
        b() {
        }

        @Override // a.k.a.b.InterfaceC0011b
        public d a(h<d> hVar, int i2) {
            return hVar.e(i2);
        }

        @Override // a.k.a.b.InterfaceC0011b
        public int a(h<d> hVar) {
            return hVar.b();
        }
    }

    /* compiled from: ExploreByTouchHelper.java */
    /* loaded from: classes.dex */
    private class c extends e {
        c() {
        }

        @Override // androidx.core.view.f0.e
        public d a(int i2) {
            return d.a(a.this.b(i2));
        }

        @Override // androidx.core.view.f0.e
        public d b(int i2) {
            int i3 = i2 == 2 ? a.this.f388k : a.this.f389l;
            if (i3 == Integer.MIN_VALUE) {
                return null;
            }
            return a(i3);
        }

        @Override // androidx.core.view.f0.e
        public boolean a(int i2, int i3, Bundle bundle) {
            return a.this.b(i2, i3, bundle);
        }
    }

    public final boolean a(@NonNull MotionEvent motionEvent) {
        if (!this.f385h.isEnabled() || !this.f385h.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7 && action != 9) {
            if (action != 10 || this.m == Integer.MIN_VALUE) {
                return false;
            }
            i(e.b.b.a.a.a.c.ALL_INT);
            return true;
        }
        int a2 = a(motionEvent.getX(), motionEvent.getY());
        i(a2);
        return a2 != Integer.MIN_VALUE;
    }

    private boolean d(int i2) {
        if (this.f388k != i2) {
            return false;
        }
        this.f388k = e.b.b.a.a.a.c.ALL_INT;
        this.f386i.invalidate();
        a(i2, AntDetector.ACTION_ID_SAMPLE);
        return true;
    }

    public final boolean a(@NonNull KeyEvent keyEvent) {
        int i2 = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 61) {
            if (keyCode != 66) {
                switch (keyCode) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                        if (!keyEvent.hasNoModifiers()) {
                            return false;
                        }
                        int g2 = g(keyCode);
                        int repeatCount = keyEvent.getRepeatCount() + 1;
                        boolean z = false;
                        while (i2 < repeatCount && b(g2, (Rect) null)) {
                            i2++;
                            z = true;
                        }
                        return z;
                    case 23:
                        break;
                    default:
                        return false;
                }
            }
            if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
                return false;
            }
            b();
            return true;
        }
        if (keyEvent.hasNoModifiers()) {
            return b(2, (Rect) null);
        }
        if (keyEvent.hasModifiers(1)) {
            return b(1, (Rect) null);
        }
        return false;
    }

    @NonNull
    private d c() {
        d f2 = d.f(this.f386i);
        ViewCompat.a(this.f386i, f2);
        ArrayList arrayList = new ArrayList();
        a(arrayList);
        if (f2.c() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            f2.a(this.f386i, ((Integer) arrayList.get(i2)).intValue());
        }
        return f2;
    }

    private boolean b() {
        int i2 = this.f389l;
        return i2 != Integer.MIN_VALUE && a(i2, 16, (Bundle) null);
    }

    private AccessibilityEvent b(int i2, int i3) {
        if (i2 != -1) {
            return c(i2, i3);
        }
        return e(i3);
    }

    @Override // androidx.core.view.a
    public void b(View view, AccessibilityEvent accessibilityEvent) {
        super.b(view, accessibilityEvent);
        a(accessibilityEvent);
    }

    @NonNull
    d b(int i2) {
        if (i2 == -1) {
            return c();
        }
        return f(i2);
    }

    public final void a(boolean z, int i2, @Nullable Rect rect) {
        int i3 = this.f389l;
        if (i3 != Integer.MIN_VALUE) {
            a(i3);
        }
        if (z) {
            b(i2, rect);
        }
    }

    private boolean c(int i2, int i3, Bundle bundle) {
        if (i3 == 1) {
            return c(i2);
        }
        if (i3 == 2) {
            return a(i2);
        }
        if (i3 == 64) {
            return h(i2);
        }
        if (i3 != 128) {
            return a(i2, i3, bundle);
        }
        return d(i2);
    }

    boolean b(int i2, int i3, Bundle bundle) {
        if (i2 != -1) {
            return c(i2, i3, bundle);
        }
        return a(i3, bundle);
    }

    private void a(int i2, Rect rect) {
        b(i2).a(rect);
    }

    private static Rect a(@NonNull View view, int i2, @NonNull Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i2 == 17) {
            rect.set(width, 0, width, height);
        } else if (i2 == 33) {
            rect.set(0, height, width, height);
        } else if (i2 == 66) {
            rect.set(-1, 0, -1, height);
        } else if (i2 == 130) {
            rect.set(0, -1, width, -1);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return rect;
    }

    public final boolean c(int i2) {
        int i3;
        if ((!this.f386i.isFocused() && !this.f386i.requestFocus()) || (i3 = this.f389l) == i2) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            a(i3);
        }
        this.f389l = i2;
        a(i2, true);
        a(i2, 8);
        return true;
    }

    public final boolean a(int i2, int i3) {
        ViewParent parent;
        if (i2 == Integer.MIN_VALUE || !this.f385h.isEnabled() || (parent = this.f386i.getParent()) == null) {
            return false;
        }
        return z.a(parent, this.f386i, b(i2, i3));
    }

    @Override // androidx.core.view.a
    public void a(View view, d dVar) {
        super.a(view, dVar);
        a(dVar);
    }

    private boolean a(int i2, Bundle bundle) {
        return ViewCompat.a(this.f386i, i2, bundle);
    }

    private boolean a(Rect rect) {
        if (rect == null || rect.isEmpty() || this.f386i.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.f386i.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    public final boolean a(int i2) {
        if (this.f389l != i2) {
            return false;
        }
        this.f389l = e.b.b.a.a.a.c.ALL_INT;
        a(i2, false);
        a(i2, 8);
        return true;
    }
}
