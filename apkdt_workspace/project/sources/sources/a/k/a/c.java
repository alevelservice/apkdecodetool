package a.k.a;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import com.alipay.zoloz.hardware.camera.CameraConstants;
import java.util.Arrays;

/* compiled from: ViewDragHelper.java */
/* loaded from: classes.dex */
public class c {
    private static final Interpolator w = new a();

    /* renamed from: a, reason: collision with root package name */
    private int f395a;

    /* renamed from: b, reason: collision with root package name */
    private int f396b;

    /* renamed from: d, reason: collision with root package name */
    private float[] f398d;

    /* renamed from: e, reason: collision with root package name */
    private float[] f399e;

    /* renamed from: f, reason: collision with root package name */
    private float[] f400f;

    /* renamed from: g, reason: collision with root package name */
    private float[] f401g;

    /* renamed from: h, reason: collision with root package name */
    private int[] f402h;

    /* renamed from: i, reason: collision with root package name */
    private int[] f403i;

    /* renamed from: j, reason: collision with root package name */
    private int[] f404j;

    /* renamed from: k, reason: collision with root package name */
    private int f405k;

    /* renamed from: l, reason: collision with root package name */
    private VelocityTracker f406l;
    private float m;
    private float n;
    private int o;
    private int p;
    private OverScroller q;
    private final AbstractC0012c r;
    private View s;
    private boolean t;
    private final ViewGroup u;

    /* renamed from: c, reason: collision with root package name */
    private int f397c = -1;
    private final Runnable v = new b();

    /* compiled from: ViewDragHelper.java */
    /* loaded from: classes.dex */
    static class a implements Interpolator {
        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    /* compiled from: ViewDragHelper.java */
    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.c(0);
        }
    }

    /* compiled from: ViewDragHelper.java */
    /* renamed from: a.k.a.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0012c {
        public int a(int i2) {
            return i2;
        }

        public int a(@NonNull View view) {
            return 0;
        }

        public abstract int a(@NonNull View view, int i2, int i3);

        public void a(int i2, int i3) {
        }

        public abstract void a(@NonNull View view, float f2, float f3);

        public void a(@NonNull View view, int i2) {
        }

        public abstract void a(@NonNull View view, int i2, int i3, @Px int i4, @Px int i5);

        public int b(@NonNull View view) {
            return 0;
        }

        public abstract int b(@NonNull View view, int i2, int i3);

        public void b(int i2, int i3) {
        }

        public boolean b(int i2) {
            return false;
        }

        public abstract boolean b(@NonNull View view, int i2);

        public abstract void c(int i2);
    }

    private c(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull AbstractC0012c abstractC0012c) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (abstractC0012c != null) {
            this.u = viewGroup;
            this.r = abstractC0012c;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f396b = viewConfiguration.getScaledTouchSlop();
            this.m = viewConfiguration.getScaledMaximumFlingVelocity();
            this.n = viewConfiguration.getScaledMinimumFlingVelocity();
            this.q = new OverScroller(context, w);
            return;
        }
        throw new IllegalArgumentException("Callback may not be null");
    }

    public static c a(@NonNull ViewGroup viewGroup, @NonNull AbstractC0012c abstractC0012c) {
        return new c(viewGroup.getContext(), viewGroup, abstractC0012c);
    }

    private void g() {
        float[] fArr = this.f398d;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.f399e, 0.0f);
        Arrays.fill(this.f400f, 0.0f);
        Arrays.fill(this.f401g, 0.0f);
        Arrays.fill(this.f402h, 0);
        Arrays.fill(this.f403i, 0);
        Arrays.fill(this.f404j, 0);
        this.f405k = 0;
    }

    private void h() {
        this.f406l.computeCurrentVelocity(1000, this.m);
        a(a(this.f406l.getXVelocity(this.f397c), this.n, this.m), a(this.f406l.getYVelocity(this.f397c), this.n, this.m));
    }

    public void b() {
        this.f397c = -1;
        g();
        VelocityTracker velocityTracker = this.f406l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f406l = null;
        }
    }

    @Nullable
    public View c() {
        return this.s;
    }

    public void d(int i2) {
        this.p = i2;
    }

    @Px
    public int e() {
        return this.f396b;
    }

    public int f() {
        return this.f395a;
    }

    public static c a(@NonNull ViewGroup viewGroup, float f2, @NonNull AbstractC0012c abstractC0012c) {
        c a2 = a(viewGroup, abstractC0012c);
        a2.f396b = (int) (a2.f396b * (1.0f / f2));
        return a2;
    }

    private void c(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            if (g(pointerId)) {
                float x = motionEvent.getX(i2);
                float y = motionEvent.getY(i2);
                this.f400f[pointerId] = x;
                this.f401g[pointerId] = y;
            }
        }
    }

    private void e(int i2) {
        if (this.f398d == null || !b(i2)) {
            return;
        }
        this.f398d[i2] = 0.0f;
        this.f399e[i2] = 0.0f;
        this.f400f[i2] = 0.0f;
        this.f401g[i2] = 0.0f;
        this.f402h[i2] = 0;
        this.f403i[i2] = 0;
        this.f404j[i2] = 0;
        this.f405k = ((1 << i2) ^ (-1)) & this.f405k;
    }

    private void f(int i2) {
        float[] fArr = this.f398d;
        if (fArr == null || fArr.length <= i2) {
            int i3 = i2 + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            float[] fArr6 = this.f398d;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.f399e;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.f400f;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.f401g;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.f402h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f403i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f404j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f398d = fArr2;
            this.f399e = fArr3;
            this.f400f = fArr4;
            this.f401g = fArr5;
            this.f402h = iArr;
            this.f403i = iArr2;
            this.f404j = iArr3;
        }
    }

    @Px
    public int d() {
        return this.o;
    }

    public boolean d(int i2, int i3) {
        if (this.t) {
            return b(i2, i3, (int) this.f406l.getXVelocity(this.f397c), (int) this.f406l.getYVelocity(this.f397c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    public void a(float f2) {
        this.n = f2;
    }

    public void a(@NonNull View view, int i2) {
        if (view.getParent() == this.u) {
            this.s = view;
            this.f397c = i2;
            this.r.a(view, i2);
            c(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
    }

    public boolean b(@NonNull View view, int i2, int i3) {
        this.s = view;
        this.f397c = -1;
        boolean b2 = b(i2, i3, 0, 0);
        if (!b2 && this.f395a == 0 && this.s != null) {
            this.s = null;
        }
        return b2;
    }

    void c(int i2) {
        this.u.removeCallbacks(this.v);
        if (this.f395a != i2) {
            this.f395a = i2;
            this.r.c(i2);
            if (this.f395a == 0) {
                this.s = null;
            }
        }
    }

    private boolean g(int i2) {
        if (b(i2)) {
            return true;
        }
        String str = "Ignoring pointerId=" + i2 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.";
        return false;
    }

    private boolean b(int i2, int i3, int i4, int i5) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i6 = i2 - left;
        int i7 = i3 - top;
        if (i6 == 0 && i7 == 0) {
            this.q.abortAnimation();
            c(0);
            return false;
        }
        this.q.startScroll(left, top, i6, i7, a(this.s, i6, i7, i4, i5));
        c(2);
        return true;
    }

    private int e(int i2, int i3) {
        int i4 = i2 < this.u.getLeft() + this.o ? 1 : 0;
        if (i3 < this.u.getTop() + this.o) {
            i4 |= 4;
        }
        if (i2 > this.u.getRight() - this.o) {
            i4 |= 2;
        }
        return i3 > this.u.getBottom() - this.o ? i4 | 8 : i4;
    }

    public void a() {
        b();
        if (this.f395a == 2) {
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            this.q.abortAnimation();
            int currX2 = this.q.getCurrX();
            int currY2 = this.q.getCurrY();
            this.r.a(this.s, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        c(0);
    }

    public boolean c(int i2, int i3) {
        return a(this.s, i2, i3);
    }

    private int b(int i2, int i3, int i4) {
        int abs;
        if (i2 == 0) {
            return 0;
        }
        int width = this.u.getWidth();
        float f2 = width / 2;
        float b2 = f2 + (b(Math.min(1.0f, Math.abs(i2) / width)) * f2);
        int abs2 = Math.abs(i3);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(b2 / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i2) / i4) + 1.0f) * 256.0f);
        }
        return Math.min(abs, CameraConstants.CAMERA_MAX_WIDTH);
    }

    private int a(View view, int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float f5;
        int a2 = a(i4, (int) this.n, (int) this.m);
        int a3 = a(i5, (int) this.n, (int) this.m);
        int abs = Math.abs(i2);
        int abs2 = Math.abs(i3);
        int abs3 = Math.abs(a2);
        int abs4 = Math.abs(a3);
        int i6 = abs3 + abs4;
        int i7 = abs + abs2;
        if (a2 != 0) {
            f2 = abs3;
            f3 = i6;
        } else {
            f2 = abs;
            f3 = i7;
        }
        float f6 = f2 / f3;
        if (a3 != 0) {
            f4 = abs4;
            f5 = i6;
        } else {
            f4 = abs2;
            f5 = i7;
        }
        return (int) ((b(i2, a2, this.r.a(view)) * f6) + (b(i3, a3, this.r.b(view)) * (f4 / f5)));
    }

    private float b(float f2) {
        return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
    }

    private void b(float f2, float f3, int i2) {
        f(i2);
        float[] fArr = this.f398d;
        this.f400f[i2] = f2;
        fArr[i2] = f2;
        float[] fArr2 = this.f399e;
        this.f401g[i2] = f3;
        fArr2[i2] = f3;
        this.f402h[i2] = e((int) f2, (int) f3);
        this.f405k |= 1 << i2;
    }

    private int a(int i2, int i3, int i4) {
        int abs = Math.abs(i2);
        if (abs < i3) {
            return 0;
        }
        return abs > i4 ? i2 > 0 ? i4 : -i4 : i2;
    }

    private float a(float f2, float f3, float f4) {
        float abs = Math.abs(f2);
        if (abs < f3) {
            return 0.0f;
        }
        return abs > f4 ? f2 > 0.0f ? f4 : -f4 : f2;
    }

    public boolean a(boolean z) {
        if (this.f395a == 2) {
            boolean computeScrollOffset = this.q.computeScrollOffset();
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            int left = currX - this.s.getLeft();
            int top = currY - this.s.getTop();
            if (left != 0) {
                ViewCompat.d(this.s, left);
            }
            if (top != 0) {
                ViewCompat.e(this.s, top);
            }
            if (left != 0 || top != 0) {
                this.r.a(this.s, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.q.getFinalX() && currY == this.q.getFinalY()) {
                this.q.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                if (z) {
                    this.u.post(this.v);
                } else {
                    c(0);
                }
            }
        }
        return this.f395a == 2;
    }

    public boolean b(int i2) {
        return ((1 << i2) & this.f405k) != 0;
    }

    boolean b(View view, int i2) {
        if (view == this.s && this.f397c == i2) {
            return true;
        }
        if (view == null || !this.r.b(view, i2)) {
            return false;
        }
        this.f397c = i2;
        a(view, i2);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00dd, code lost:
    
        if (r12 != r11) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b(@androidx.annotation.NonNull android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a.k.a.c.b(android.view.MotionEvent):boolean");
    }

    private void a(float f2, float f3) {
        this.t = true;
        this.r.a(this.s, f2, f3);
        this.t = false;
        if (this.f395a == 1) {
            c(0);
        }
    }

    public void a(@NonNull MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            b();
        }
        if (this.f406l == null) {
            this.f406l = VelocityTracker.obtain();
        }
        this.f406l.addMovement(motionEvent);
        int i3 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View b2 = b((int) x, (int) y);
            b(x, y, pointerId);
            b(b2, pointerId);
            int i4 = this.f402h[pointerId];
            int i5 = this.p;
            if ((i4 & i5) != 0) {
                this.r.b(i4 & i5, pointerId);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f395a == 1) {
                h();
            }
            b();
            return;
        }
        if (actionMasked == 2) {
            if (this.f395a == 1) {
                if (g(this.f397c)) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f397c);
                    float x2 = motionEvent.getX(findPointerIndex);
                    float y2 = motionEvent.getY(findPointerIndex);
                    float[] fArr = this.f400f;
                    int i6 = this.f397c;
                    int i7 = (int) (x2 - fArr[i6]);
                    int i8 = (int) (y2 - this.f401g[i6]);
                    a(this.s.getLeft() + i7, this.s.getTop() + i8, i7, i8);
                    c(motionEvent);
                    return;
                }
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            while (i3 < pointerCount) {
                int pointerId2 = motionEvent.getPointerId(i3);
                if (g(pointerId2)) {
                    float x3 = motionEvent.getX(i3);
                    float y3 = motionEvent.getY(i3);
                    float f2 = x3 - this.f398d[pointerId2];
                    float f3 = y3 - this.f399e[pointerId2];
                    a(f2, f3, pointerId2);
                    if (this.f395a != 1) {
                        View b3 = b((int) x3, (int) y3);
                        if (a(b3, f2, f3) && b(b3, pointerId2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i3++;
            }
            c(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.f395a == 1) {
                a(0.0f, 0.0f);
            }
            b();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x4 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            b(x4, y4, pointerId3);
            if (this.f395a == 0) {
                b(b((int) x4, (int) y4), pointerId3);
                int i9 = this.f402h[pointerId3];
                int i10 = this.p;
                if ((i9 & i10) != 0) {
                    this.r.b(i9 & i10, pointerId3);
                    return;
                }
                return;
            }
            if (c((int) x4, (int) y4)) {
                b(this.s, pointerId3);
                return;
            }
            return;
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = motionEvent.getPointerId(actionIndex);
        if (this.f395a == 1 && pointerId4 == this.f397c) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (true) {
                if (i3 >= pointerCount2) {
                    i2 = -1;
                    break;
                }
                int pointerId5 = motionEvent.getPointerId(i3);
                if (pointerId5 != this.f397c) {
                    View b4 = b((int) motionEvent.getX(i3), (int) motionEvent.getY(i3));
                    View view = this.s;
                    if (b4 == view && b(view, pointerId5)) {
                        i2 = this.f397c;
                        break;
                    }
                }
                i3++;
            }
            if (i2 == -1) {
                h();
            }
        }
        e(pointerId4);
    }

    @Nullable
    public View b(int i2, int i3) {
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            ViewGroup viewGroup = this.u;
            this.r.a(childCount);
            View childAt = viewGroup.getChildAt(childCount);
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private void a(float f2, float f3, int i2) {
        int i3 = a(f2, f3, i2, 1) ? 1 : 0;
        if (a(f3, f2, i2, 4)) {
            i3 |= 4;
        }
        if (a(f2, f3, i2, 2)) {
            i3 |= 2;
        }
        if (a(f3, f2, i2, 8)) {
            i3 |= 8;
        }
        if (i3 != 0) {
            int[] iArr = this.f403i;
            iArr[i2] = iArr[i2] | i3;
            this.r.a(i3, i2);
        }
    }

    private boolean a(float f2, float f3, int i2, int i3) {
        float abs = Math.abs(f2);
        float abs2 = Math.abs(f3);
        if ((this.f402h[i2] & i3) != i3 || (this.p & i3) == 0 || (this.f404j[i2] & i3) == i3 || (this.f403i[i2] & i3) == i3) {
            return false;
        }
        int i4 = this.f396b;
        if (abs <= i4 && abs2 <= i4) {
            return false;
        }
        if (abs >= abs2 * 0.5f || !this.r.b(i3)) {
            return (this.f403i[i2] & i3) == 0 && abs > ((float) this.f396b);
        }
        int[] iArr = this.f404j;
        iArr[i2] = iArr[i2] | i3;
        return false;
    }

    private boolean a(View view, float f2, float f3) {
        if (view == null) {
            return false;
        }
        boolean z = this.r.a(view) > 0;
        boolean z2 = this.r.b(view) > 0;
        if (!z || !z2) {
            return z ? Math.abs(f2) > ((float) this.f396b) : z2 && Math.abs(f3) > ((float) this.f396b);
        }
        float f4 = (f2 * f2) + (f3 * f3);
        int i2 = this.f396b;
        return f4 > ((float) (i2 * i2));
    }

    public boolean a(int i2) {
        int length = this.f398d.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (a(i2, i3)) {
                return true;
            }
        }
        return false;
    }

    public boolean a(int i2, int i3) {
        if (!b(i3)) {
            return false;
        }
        boolean z = (i2 & 1) == 1;
        boolean z2 = (i2 & 2) == 2;
        float f2 = this.f400f[i3] - this.f398d[i3];
        float f3 = this.f401g[i3] - this.f399e[i3];
        if (!z || !z2) {
            return z ? Math.abs(f2) > ((float) this.f396b) : z2 && Math.abs(f3) > ((float) this.f396b);
        }
        float f4 = (f2 * f2) + (f3 * f3);
        int i4 = this.f396b;
        return f4 > ((float) (i4 * i4));
    }

    private void a(int i2, int i3, int i4, int i5) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        if (i4 != 0) {
            i2 = this.r.a(this.s, i2, i4);
            ViewCompat.d(this.s, i2 - left);
        }
        int i6 = i2;
        if (i5 != 0) {
            i3 = this.r.b(this.s, i3, i5);
            ViewCompat.e(this.s, i3 - top);
        }
        int i7 = i3;
        if (i4 == 0 && i5 == 0) {
            return;
        }
        this.r.a(this.s, i6, i7, i6 - left, i7 - top);
    }

    public boolean a(@Nullable View view, int i2, int i3) {
        return view != null && i2 >= view.getLeft() && i2 < view.getRight() && i3 >= view.getTop() && i3 < view.getBottom();
    }
}
