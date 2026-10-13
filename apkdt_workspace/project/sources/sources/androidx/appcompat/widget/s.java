package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.annotation.RestrictTo;

/* compiled from: ForwardingListener.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class s implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: e, reason: collision with root package name */
    private final float f1424e;

    /* renamed from: f, reason: collision with root package name */
    private final int f1425f;

    /* renamed from: g, reason: collision with root package name */
    private final int f1426g;

    /* renamed from: h, reason: collision with root package name */
    final View f1427h;

    /* renamed from: i, reason: collision with root package name */
    private Runnable f1428i;

    /* renamed from: j, reason: collision with root package name */
    private Runnable f1429j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f1430k;

    /* renamed from: l, reason: collision with root package name */
    private int f1431l;
    private final int[] m = new int[2];

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ForwardingListener.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = s.this.f1427h.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ForwardingListener.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s.this.d();
        }
    }

    public s(View view) {
        this.f1427h = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1424e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.f1425f = ViewConfiguration.getTapTimeout();
        this.f1426g = (this.f1425f + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    private boolean a(MotionEvent motionEvent) {
        q qVar;
        View view = this.f1427h;
        androidx.appcompat.view.menu.p a2 = a();
        if (a2 == null || !a2.c() || (qVar = (q) a2.e()) == null || !qVar.isShown()) {
            return false;
        }
        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        a(view, obtainNoHistory);
        b(qVar, obtainNoHistory);
        boolean onForwardedEvent = qVar.onForwardedEvent(obtainNoHistory, this.f1431l);
        obtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return onForwardedEvent && (actionMasked != 1 && actionMasked != 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
    
        if (r1 != 3) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(android.view.MotionEvent r6) {
        /*
            r5 = this;
            android.view.View r0 = r5.f1427h
            boolean r1 = r0.isEnabled()
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            int r1 = r6.getActionMasked()
            if (r1 == 0) goto L41
            r3 = 1
            if (r1 == r3) goto L3d
            r4 = 2
            if (r1 == r4) goto L1a
            r6 = 3
            if (r1 == r6) goto L3d
            goto L6d
        L1a:
            int r1 = r5.f1431l
            int r1 = r6.findPointerIndex(r1)
            if (r1 < 0) goto L6d
            float r4 = r6.getX(r1)
            float r6 = r6.getY(r1)
            float r1 = r5.f1424e
            boolean r6 = a(r0, r4, r6, r1)
            if (r6 != 0) goto L6d
            r5.e()
            android.view.ViewParent r6 = r0.getParent()
            r6.requestDisallowInterceptTouchEvent(r3)
            return r3
        L3d:
            r5.e()
            goto L6d
        L41:
            int r6 = r6.getPointerId(r2)
            r5.f1431l = r6
            java.lang.Runnable r6 = r5.f1428i
            if (r6 != 0) goto L52
            androidx.appcompat.widget.s$a r6 = new androidx.appcompat.widget.s$a
            r6.<init>()
            r5.f1428i = r6
        L52:
            java.lang.Runnable r6 = r5.f1428i
            int r1 = r5.f1425f
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
            java.lang.Runnable r6 = r5.f1429j
            if (r6 != 0) goto L65
            androidx.appcompat.widget.s$b r6 = new androidx.appcompat.widget.s$b
            r6.<init>()
            r5.f1429j = r6
        L65:
            java.lang.Runnable r6 = r5.f1429j
            int r1 = r5.f1426g
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
        L6d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.s.b(android.view.MotionEvent):boolean");
    }

    private void e() {
        Runnable runnable = this.f1429j;
        if (runnable != null) {
            this.f1427h.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1428i;
        if (runnable2 != null) {
            this.f1427h.removeCallbacks(runnable2);
        }
    }

    public abstract androidx.appcompat.view.menu.p a();

    protected abstract boolean b();

    protected boolean c() {
        androidx.appcompat.view.menu.p a2 = a();
        if (a2 == null || !a2.c()) {
            return true;
        }
        a2.dismiss();
        return true;
    }

    void d() {
        e();
        View view = this.f1427h;
        if (view.isEnabled() && !view.isLongClickable() && b()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            this.f1430k = true;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f1430k;
        if (z2) {
            z = a(motionEvent) || !c();
        } else {
            z = b(motionEvent) && b();
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f1427h.onTouchEvent(obtain);
                obtain.recycle();
            }
        }
        this.f1430k = z;
        return z || z2;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f1430k = false;
        this.f1431l = -1;
        Runnable runnable = this.f1428i;
        if (runnable != null) {
            this.f1427h.removeCallbacks(runnable);
        }
    }

    private static boolean a(View view, float f2, float f3, float f4) {
        float f5 = -f4;
        return f2 >= f5 && f3 >= f5 && f2 < ((float) (view.getRight() - view.getLeft())) + f4 && f3 < ((float) (view.getBottom() - view.getTop())) + f4;
    }

    private boolean a(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.m);
        motionEvent.offsetLocation(r0[0], r0[1]);
        return true;
    }

    private boolean b(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.m);
        motionEvent.offsetLocation(-r0[0], -r0[1]);
        return true;
    }
}
