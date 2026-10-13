package androidx.appcompat.widget;

import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;

/* compiled from: TooltipCompatHandler.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class g0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    private static g0 n;
    private static g0 o;

    /* renamed from: e, reason: collision with root package name */
    private final View f1347e;

    /* renamed from: f, reason: collision with root package name */
    private final CharSequence f1348f;

    /* renamed from: g, reason: collision with root package name */
    private final int f1349g;

    /* renamed from: h, reason: collision with root package name */
    private final Runnable f1350h = new a();

    /* renamed from: i, reason: collision with root package name */
    private final Runnable f1351i = new b();

    /* renamed from: j, reason: collision with root package name */
    private int f1352j;

    /* renamed from: k, reason: collision with root package name */
    private int f1353k;

    /* renamed from: l, reason: collision with root package name */
    private h0 f1354l;
    private boolean m;

    /* compiled from: TooltipCompatHandler.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g0.this.a(false);
        }
    }

    /* compiled from: TooltipCompatHandler.java */
    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g0.this.a();
        }
    }

    private g0(View view, CharSequence charSequence) {
        this.f1347e = view;
        this.f1348f = charSequence;
        this.f1349g = androidx.core.view.x.a(ViewConfiguration.get(this.f1347e.getContext()));
        c();
        this.f1347e.setOnLongClickListener(this);
        this.f1347e.setOnHoverListener(this);
    }

    public static void a(View view, CharSequence charSequence) {
        g0 g0Var = n;
        if (g0Var != null && g0Var.f1347e == view) {
            a((g0) null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            g0 g0Var2 = o;
            if (g0Var2 != null && g0Var2.f1347e == view) {
                g0Var2.a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new g0(view, charSequence);
    }

    private void b() {
        this.f1347e.removeCallbacks(this.f1350h);
    }

    private void c() {
        this.f1352j = Integer.MAX_VALUE;
        this.f1353k = Integer.MAX_VALUE;
    }

    private void d() {
        this.f1347e.postDelayed(this.f1350h, ViewConfiguration.getLongPressTimeout());
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1354l != null && this.m) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1347e.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                c();
                a();
            }
        } else if (this.f1347e.isEnabled() && this.f1354l == null && a(motionEvent)) {
            a(this);
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f1352j = view.getWidth() / 2;
        this.f1353k = view.getHeight() / 2;
        a(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }

    void a(boolean z) {
        long j2;
        int longPressTimeout;
        long j3;
        if (ViewCompat.C(this.f1347e)) {
            a((g0) null);
            g0 g0Var = o;
            if (g0Var != null) {
                g0Var.a();
            }
            o = this;
            this.m = z;
            this.f1354l = new h0(this.f1347e.getContext());
            this.f1354l.a(this.f1347e, this.f1352j, this.f1353k, this.m, this.f1348f);
            this.f1347e.addOnAttachStateChangeListener(this);
            if (this.m) {
                j3 = 2500;
            } else {
                if ((ViewCompat.v(this.f1347e) & 1) == 1) {
                    j2 = 3000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                } else {
                    j2 = 15000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                }
                j3 = j2 - longPressTimeout;
            }
            this.f1347e.removeCallbacks(this.f1351i);
            this.f1347e.postDelayed(this.f1351i, j3);
        }
    }

    void a() {
        if (o == this) {
            o = null;
            h0 h0Var = this.f1354l;
            if (h0Var != null) {
                h0Var.a();
                this.f1354l = null;
                c();
                this.f1347e.removeOnAttachStateChangeListener(this);
            }
        }
        if (n == this) {
            a((g0) null);
        }
        this.f1347e.removeCallbacks(this.f1351i);
    }

    private static void a(g0 g0Var) {
        g0 g0Var2 = n;
        if (g0Var2 != null) {
            g0Var2.b();
        }
        n = g0Var;
        g0 g0Var3 = n;
        if (g0Var3 != null) {
            g0Var3.d();
        }
    }

    private boolean a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f1352j) <= this.f1349g && Math.abs(y - this.f1353k) <= this.f1349g) {
            return false;
        }
        this.f1352j = x;
        this.f1353k = y;
        return true;
    }
}
