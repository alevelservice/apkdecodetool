package androidx.drawerlayout.widget;

import a.k.a.c;
import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.f0.d;
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DrawerLayout extends ViewGroup {
    static final boolean CAN_HIDE_DESCENDANTS;
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNDEFINED = 3;
    public static final int LOCK_MODE_UNLOCKED = 0;
    private static final boolean P;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private Drawable A;
    private Drawable B;
    private Drawable C;
    private CharSequence D;
    private CharSequence E;
    private Object F;
    private boolean G;
    private Drawable H;
    private Drawable I;
    private Drawable J;
    private Drawable K;
    private final ArrayList<View> L;
    private Rect M;
    private Matrix N;

    /* renamed from: e, reason: collision with root package name */
    private final c f2073e;

    /* renamed from: f, reason: collision with root package name */
    private float f2074f;

    /* renamed from: g, reason: collision with root package name */
    private int f2075g;

    /* renamed from: h, reason: collision with root package name */
    private int f2076h;

    /* renamed from: i, reason: collision with root package name */
    private float f2077i;

    /* renamed from: j, reason: collision with root package name */
    private Paint f2078j;

    /* renamed from: k, reason: collision with root package name */
    private final a.k.a.c f2079k;

    /* renamed from: l, reason: collision with root package name */
    private final a.k.a.c f2080l;
    private final e m;
    private final e n;
    private int o;
    private boolean p;
    private boolean q;
    private int r;
    private int s;
    private int t;
    private int u;
    private boolean v;

    @Nullable
    private d w;
    private List<d> x;
    private float y;
    private float z;
    private static final int[] O = {R.attr.colorPrimaryDark};
    static final int[] LAYOUT_ATTRS = {R.attr.layout_gravity};

    /* loaded from: classes.dex */
    class a implements View.OnApplyWindowInsetsListener {
        a(DrawerLayout drawerLayout) {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    /* loaded from: classes.dex */
    static final class c extends androidx.core.view.a {
        c() {
        }

        @Override // androidx.core.view.a
        public void a(View view, androidx.core.view.f0.d dVar) {
            super.a(view, dVar);
            if (DrawerLayout.includeChildForAccessibility(view)) {
                return;
            }
            dVar.b((View) null);
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(int i2);

        void a(@NonNull View view);

        void a(@NonNull View view, float f2);

        void b(@NonNull View view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e extends c.AbstractC0012c {

        /* renamed from: a, reason: collision with root package name */
        private final int f2092a;

        /* renamed from: b, reason: collision with root package name */
        private a.k.a.c f2093b;

        /* renamed from: c, reason: collision with root package name */
        private final Runnable f2094c = new a();

        /* loaded from: classes.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.a();
            }
        }

        e(int i2) {
            this.f2092a = i2;
        }

        public void a(a.k.a.c cVar) {
            this.f2093b = cVar;
        }

        public void b() {
            DrawerLayout.this.removeCallbacks(this.f2094c);
        }

        @Override // a.k.a.c.AbstractC0012c
        public boolean b(int i2) {
            return false;
        }

        @Override // a.k.a.c.AbstractC0012c
        public void c(int i2) {
            DrawerLayout.this.updateDrawerState(this.f2092a, i2, this.f2093b.c());
        }

        private void c() {
            View findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(this.f2092a == 3 ? 5 : 3);
            if (findDrawerWithGravity != null) {
                DrawerLayout.this.closeDrawer(findDrawerWithGravity);
            }
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(View view, int i2, int i3, int i4, int i5) {
            float width = (DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3) ? i2 + r3 : DrawerLayout.this.getWidth() - i2) / view.getWidth();
            DrawerLayout.this.setDrawerViewOffset(view, width);
            view.setVisibility(width == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // a.k.a.c.AbstractC0012c
        public boolean b(View view, int i2) {
            return DrawerLayout.this.isDrawerView(view) && DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, this.f2092a) && DrawerLayout.this.getDrawerLockMode(view) == 0;
        }

        @Override // a.k.a.c.AbstractC0012c
        public void b(int i2, int i3) {
            DrawerLayout.this.postDelayed(this.f2094c, 160L);
        }

        @Override // a.k.a.c.AbstractC0012c
        public int b(View view, int i2, int i3) {
            return view.getTop();
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(View view, int i2) {
            ((LayoutParams) view.getLayoutParams()).f2083c = false;
            c();
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(View view, float f2, float f3) {
            int i2;
            float drawerViewOffset = DrawerLayout.this.getDrawerViewOffset(view);
            int width = view.getWidth();
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3)) {
                i2 = (f2 > 0.0f || (f2 == 0.0f && drawerViewOffset > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f2 < 0.0f || (f2 == 0.0f && drawerViewOffset > 0.5f)) {
                    width2 -= width;
                }
                i2 = width2;
            }
            this.f2093b.d(i2, view.getTop());
            DrawerLayout.this.invalidate();
        }

        void a() {
            View findDrawerWithGravity;
            int width;
            int d2 = this.f2093b.d();
            boolean z = this.f2092a == 3;
            if (z) {
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(3);
                width = (findDrawerWithGravity != null ? -findDrawerWithGravity.getWidth() : 0) + d2;
            } else {
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(5);
                width = DrawerLayout.this.getWidth() - d2;
            }
            if (findDrawerWithGravity != null) {
                if (((!z || findDrawerWithGravity.getLeft() >= width) && (z || findDrawerWithGravity.getLeft() <= width)) || DrawerLayout.this.getDrawerLockMode(findDrawerWithGravity) != 0) {
                    return;
                }
                LayoutParams layoutParams = (LayoutParams) findDrawerWithGravity.getLayoutParams();
                this.f2093b.b(findDrawerWithGravity, width, findDrawerWithGravity.getTop());
                layoutParams.f2083c = true;
                DrawerLayout.this.invalidate();
                c();
                DrawerLayout.this.cancelChildViewTouch();
            }
        }

        @Override // a.k.a.c.AbstractC0012c
        public void a(int i2, int i3) {
            View findDrawerWithGravity;
            if ((i2 & 1) == 1) {
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(3);
            } else {
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(5);
            }
            if (findDrawerWithGravity == null || DrawerLayout.this.getDrawerLockMode(findDrawerWithGravity) != 0) {
                return;
            }
            this.f2093b.a(findDrawerWithGravity, i3);
        }

        @Override // a.k.a.c.AbstractC0012c
        public int a(View view) {
            if (DrawerLayout.this.isDrawerView(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // a.k.a.c.AbstractC0012c
        public int a(View view, int i2, int i3) {
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i2, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i2, width));
        }
    }

    static {
        CAN_HIDE_DESCENDANTS = Build.VERSION.SDK_INT >= 19;
        P = Build.VERSION.SDK_INT >= 21;
    }

    public DrawerLayout(@NonNull Context context) {
        this(context, null);
    }

    private boolean a(float f2, float f3, View view) {
        if (this.M == null) {
            this.M = new Rect();
        }
        view.getHitRect(this.M);
        return this.M.contains((int) f2, (int) f3);
    }

    private MotionEvent b(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.N == null) {
                this.N = new Matrix();
            }
            matrix.invert(this.N);
            obtain.transform(this.N);
        }
        return obtain;
    }

    private Drawable c() {
        int n = ViewCompat.n(this);
        if (n == 0) {
            Drawable drawable = this.H;
            if (drawable != null) {
                a(drawable, n);
                return this.H;
            }
        } else {
            Drawable drawable2 = this.I;
            if (drawable2 != null) {
                a(drawable2, n);
                return this.I;
            }
        }
        return this.J;
    }

    private Drawable d() {
        int n = ViewCompat.n(this);
        if (n == 0) {
            Drawable drawable = this.I;
            if (drawable != null) {
                a(drawable, n);
                return this.I;
            }
        } else {
            Drawable drawable2 = this.H;
            if (drawable2 != null) {
                a(drawable2, n);
                return this.H;
            }
        }
        return this.K;
    }

    private void e() {
        if (P) {
            return;
        }
        this.B = c();
        this.C = d();
    }

    static String gravityToString(int i2) {
        return (i2 & 3) == 3 ? "LEFT" : (i2 & 5) == 5 ? "RIGHT" : Integer.toHexString(i2);
    }

    static boolean includeChildForAccessibility(View view) {
        return (ViewCompat.l(view) == 4 || ViewCompat.l(view) == 2) ? false : true;
    }

    public void addDrawerListener(@NonNull d dVar) {
        if (dVar == null) {
            return;
        }
        if (this.x == null) {
            this.x = new ArrayList();
        }
        this.x.add(dVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (isDrawerView(childAt)) {
                if (isDrawerOpen(childAt)) {
                    childAt.addFocusables(arrayList, i2, i3);
                    z = true;
                }
            } else {
                this.L.add(childAt);
            }
        }
        if (!z) {
            int size = this.L.size();
            for (int i5 = 0; i5 < size; i5++) {
                View view = this.L.get(i5);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i2, i3);
                }
            }
        }
        this.L.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (findOpenDrawer() == null && !isDrawerView(view)) {
            ViewCompat.g(view, 1);
        } else {
            ViewCompat.g(view, 4);
        }
        if (CAN_HIDE_DESCENDANTS) {
            return;
        }
        ViewCompat.a(view, this.f2073e);
    }

    void cancelChildViewTouch() {
        if (this.v) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).dispatchTouchEvent(obtain);
        }
        obtain.recycle();
        this.v = true;
    }

    boolean checkDrawerViewAbsoluteGravity(View view, int i2) {
        return (getDrawerViewAbsoluteGravity(view) & i2) == i2;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void closeDrawer(@NonNull View view) {
        closeDrawer(view, true);
    }

    public void closeDrawers() {
        closeDrawers(false);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f2 = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            f2 = Math.max(f2, ((LayoutParams) getChildAt(i2).getLayoutParams()).f2082b);
        }
        this.f2077i = f2;
        boolean a2 = this.f2079k.a(true);
        boolean a3 = this.f2080l.a(true);
        if (a2 || a3) {
            ViewCompat.H(this);
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() != 10 && this.f2077i > 0.0f) {
            int childCount = getChildCount();
            if (childCount == 0) {
                return false;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                if (a(x, y, childAt) && !isContentView(childAt) && a(motionEvent, childAt)) {
                    return true;
                }
            }
            return false;
        }
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    void dispatchOnDrawerClosed(View view) {
        View rootView;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f2084d & 1) == 1) {
            layoutParams.f2084d = 0;
            List<d> list = this.x;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.x.get(size).b(view);
                }
            }
            a(view, false);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    void dispatchOnDrawerOpened(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f2084d & 1) == 0) {
            layoutParams.f2084d = 1;
            List<d> list = this.x;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.x.get(size).a(view);
                }
            }
            a(view, true);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    void dispatchOnDrawerSlide(View view, float f2) {
        List<d> list = this.x;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.x.get(size).a(view, f2);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j2) {
        int i2;
        int height = getHeight();
        boolean isContentView = isContentView(view);
        int width = getWidth();
        int save = canvas.save();
        int i3 = 0;
        if (isContentView) {
            int childCount = getChildCount();
            i2 = width;
            int i4 = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt != view && childAt.getVisibility() == 0 && a(childAt) && isDrawerView(childAt) && childAt.getHeight() >= height) {
                    if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i4) {
                            i4 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < i2) {
                            i2 = left;
                        }
                    }
                }
            }
            canvas.clipRect(i4, 0, i2, getHeight());
            i3 = i4;
        } else {
            i2 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j2);
        canvas.restoreToCount(save);
        float f2 = this.f2077i;
        if (f2 > 0.0f && isContentView) {
            this.f2078j.setColor((this.f2076h & 16777215) | (((int) ((((-16777216) & r2) >>> 24) * f2)) << 24));
            canvas.drawRect(i3, 0.0f, i2, getHeight(), this.f2078j);
        } else if (this.B != null && checkDrawerViewAbsoluteGravity(view, 3)) {
            int intrinsicWidth = this.B.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(0.0f, Math.min(right2 / this.f2079k.d(), 1.0f));
            this.B.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.B.setAlpha((int) (max * 255.0f));
            this.B.draw(canvas);
        } else if (this.C != null && checkDrawerViewAbsoluteGravity(view, 5)) {
            int intrinsicWidth2 = this.C.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f2080l.d(), 1.0f));
            this.C.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.C.setAlpha((int) (max2 * 255.0f));
            this.C.draw(canvas);
        }
        return drawChild;
    }

    View findDrawerWithGravity(int i2) {
        int a2 = androidx.core.view.e.a(i2, ViewCompat.n(this)) & 7;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if ((getDrawerViewAbsoluteGravity(childAt) & 7) == a2) {
                return childAt;
            }
        }
        return null;
    }

    View findOpenDrawer() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((((LayoutParams) childAt.getLayoutParams()).f2084d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    View findVisibleDrawer() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (isDrawerView(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public float getDrawerElevation() {
        if (P) {
            return this.f2074f;
        }
        return 0.0f;
    }

    public int getDrawerLockMode(int i2) {
        int n = ViewCompat.n(this);
        if (i2 == 3) {
            int i3 = this.r;
            if (i3 != 3) {
                return i3;
            }
            int i4 = n == 0 ? this.t : this.u;
            if (i4 != 3) {
                return i4;
            }
            return 0;
        }
        if (i2 == 5) {
            int i5 = this.s;
            if (i5 != 3) {
                return i5;
            }
            int i6 = n == 0 ? this.u : this.t;
            if (i6 != 3) {
                return i6;
            }
            return 0;
        }
        if (i2 == 8388611) {
            int i7 = this.t;
            if (i7 != 3) {
                return i7;
            }
            int i8 = n == 0 ? this.r : this.s;
            if (i8 != 3) {
                return i8;
            }
            return 0;
        }
        if (i2 != 8388613) {
            return 0;
        }
        int i9 = this.u;
        if (i9 != 3) {
            return i9;
        }
        int i10 = n == 0 ? this.s : this.r;
        if (i10 != 3) {
            return i10;
        }
        return 0;
    }

    @Nullable
    public CharSequence getDrawerTitle(int i2) {
        int a2 = androidx.core.view.e.a(i2, ViewCompat.n(this));
        if (a2 == 3) {
            return this.D;
        }
        if (a2 == 5) {
            return this.E;
        }
        return null;
    }

    int getDrawerViewAbsoluteGravity(View view) {
        return androidx.core.view.e.a(((LayoutParams) view.getLayoutParams()).f2081a, ViewCompat.n(this));
    }

    float getDrawerViewOffset(View view) {
        return ((LayoutParams) view.getLayoutParams()).f2082b;
    }

    @Nullable
    public Drawable getStatusBarBackgroundDrawable() {
        return this.A;
    }

    boolean isContentView(View view) {
        return ((LayoutParams) view.getLayoutParams()).f2081a == 0;
    }

    public boolean isDrawerOpen(@NonNull View view) {
        if (isDrawerView(view)) {
            return (((LayoutParams) view.getLayoutParams()).f2084d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    boolean isDrawerView(View view) {
        int a2 = androidx.core.view.e.a(((LayoutParams) view.getLayoutParams()).f2081a, ViewCompat.n(view));
        return ((a2 & 3) == 0 && (a2 & 5) == 0) ? false : true;
    }

    public boolean isDrawerVisible(@NonNull View view) {
        if (isDrawerView(view)) {
            return ((LayoutParams) view.getLayoutParams()).f2082b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    void moveDrawerToOffset(View view, float f2) {
        float drawerViewOffset = getDrawerViewOffset(view);
        float width = view.getWidth();
        int i2 = ((int) (width * f2)) - ((int) (drawerViewOffset * width));
        if (!checkDrawerViewAbsoluteGravity(view, 3)) {
            i2 = -i2;
        }
        view.offsetLeftAndRight(i2);
        setDrawerViewOffset(view, f2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.q = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (!this.G || this.A == null) {
            return;
        }
        int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.F) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
        if (systemWindowInsetTop > 0) {
            this.A.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.A.draw(canvas);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if (r0 != 3) goto L13;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getActionMasked()
            a.k.a.c r1 = r6.f2079k
            boolean r1 = r1.b(r7)
            a.k.a.c r2 = r6.f2080l
            boolean r2 = r2.b(r7)
            r1 = r1 | r2
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L38
            if (r0 == r2) goto L31
            r7 = 2
            r4 = 3
            if (r0 == r7) goto L1e
            if (r0 == r4) goto L31
            goto L36
        L1e:
            a.k.a.c r7 = r6.f2079k
            boolean r7 = r7.a(r4)
            if (r7 == 0) goto L36
            androidx.drawerlayout.widget.DrawerLayout$e r7 = r6.m
            r7.b()
            androidx.drawerlayout.widget.DrawerLayout$e r7 = r6.n
            r7.b()
            goto L36
        L31:
            r6.closeDrawers(r2)
            r6.v = r3
        L36:
            r7 = 0
            goto L60
        L38:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.y = r0
            r6.z = r7
            float r4 = r6.f2077i
            r5 = 0
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L5d
            a.k.a.c r4 = r6.f2079k
            int r0 = (int) r0
            int r7 = (int) r7
            android.view.View r7 = r4.b(r0, r7)
            if (r7 == 0) goto L5d
            boolean r7 = r6.isContentView(r7)
            if (r7 == 0) goto L5d
            r7 = 1
            goto L5e
        L5d:
            r7 = 0
        L5e:
            r6.v = r3
        L60:
            if (r1 != 0) goto L70
            if (r7 != 0) goto L70
            boolean r7 = r6.a()
            if (r7 != 0) goto L70
            boolean r7 = r6.v
            if (r7 == 0) goto L6f
            goto L70
        L6f:
            r2 = 0
        L70:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && b()) {
            keyEvent.startTracking();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            View findVisibleDrawer = findVisibleDrawer();
            if (findVisibleDrawer != null && getDrawerLockMode(findVisibleDrawer) == 0) {
                closeDrawers();
            }
            return findVisibleDrawer != null;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        float f2;
        int i6;
        this.p = true;
        int i7 = i4 - i2;
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (isContentView(childAt)) {
                    int i9 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i9, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i9, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                        float f3 = measuredWidth;
                        i6 = (-measuredWidth) + ((int) (layoutParams.f2082b * f3));
                        f2 = (measuredWidth + i6) / f3;
                    } else {
                        float f4 = measuredWidth;
                        f2 = (i7 - r11) / f4;
                        i6 = i7 - ((int) (layoutParams.f2082b * f4));
                    }
                    boolean z2 = f2 != layoutParams.f2082b;
                    int i10 = layoutParams.f2081a & 112;
                    if (i10 == 16) {
                        int i11 = i5 - i3;
                        int i12 = (i11 - measuredHeight) / 2;
                        int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i12 < i13) {
                            i12 = i13;
                        } else {
                            int i14 = i12 + measuredHeight;
                            int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (i14 > i11 - i15) {
                                i12 = (i11 - i15) - measuredHeight;
                            }
                        }
                        childAt.layout(i6, i12, measuredWidth + i6, measuredHeight + i12);
                    } else if (i10 != 80) {
                        int i16 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i6, i16, measuredWidth + i6, measuredHeight + i16);
                    } else {
                        int i17 = i5 - i3;
                        childAt.layout(i6, (i17 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i6, i17 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z2) {
                        setDrawerViewOffset(childAt, f2);
                    }
                    int i18 = layoutParams.f2082b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i18) {
                        childAt.setVisibility(i18);
                    }
                }
            }
        }
        this.p = false;
        this.q = false;
    }

    @Override // android.view.View
    @SuppressLint({"WrongConstant"})
    protected void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
            if (mode2 != Integer.MIN_VALUE && mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        int i4 = 0;
        boolean z = this.F != null && ViewCompat.k(this);
        int n = ViewCompat.n(this);
        int childCount = getChildCount();
        int i5 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (z) {
                    int a2 = androidx.core.view.e.a(layoutParams.f2081a, n);
                    if (ViewCompat.k(childAt)) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            WindowInsets windowInsets = (WindowInsets) this.F;
                            if (a2 == 3) {
                                windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), i4, windowInsets.getSystemWindowInsetBottom());
                            } else if (a2 == 5) {
                                windowInsets = windowInsets.replaceSystemWindowInsets(i4, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
                            }
                            childAt.dispatchApplyWindowInsets(windowInsets);
                        }
                    } else if (Build.VERSION.SDK_INT >= 21) {
                        WindowInsets windowInsets2 = (WindowInsets) this.F;
                        if (a2 == 3) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(windowInsets2.getSystemWindowInsetLeft(), windowInsets2.getSystemWindowInsetTop(), i4, windowInsets2.getSystemWindowInsetBottom());
                        } else if (a2 == 5) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(i4, windowInsets2.getSystemWindowInsetTop(), windowInsets2.getSystemWindowInsetRight(), windowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = windowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = windowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = windowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = windowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (isContentView(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, 1073741824));
                } else if (isDrawerView(childAt)) {
                    if (P) {
                        float j2 = ViewCompat.j(childAt);
                        float f2 = this.f2074f;
                        if (j2 != f2) {
                            ViewCompat.a(childAt, f2);
                        }
                    }
                    int drawerViewAbsoluteGravity = getDrawerViewAbsoluteGravity(childAt) & 7;
                    boolean z4 = drawerViewAbsoluteGravity == 3;
                    if ((z4 && z2) || (!z4 && z3)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + gravityToString(drawerViewAbsoluteGravity) + " but this DrawerLayout already has a drawer view along that edge");
                    }
                    if (z4) {
                        z2 = true;
                    } else {
                        z3 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i2, this.f2075g + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams).width), ViewGroup.getChildMeasureSpec(i3, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, ((ViewGroup.MarginLayoutParams) layoutParams).height));
                    i5++;
                    i4 = 0;
                } else {
                    throw new IllegalStateException("Child " + childAt + " at index " + i5 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                }
            }
            i5++;
            i4 = 0;
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View findDrawerWithGravity;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        int i2 = savedState.f2085g;
        if (i2 != 0 && (findDrawerWithGravity = findDrawerWithGravity(i2)) != null) {
            openDrawer(findDrawerWithGravity);
        }
        int i3 = savedState.f2086h;
        if (i3 != 3) {
            setDrawerLockMode(i3, 3);
        }
        int i4 = savedState.f2087i;
        if (i4 != 3) {
            setDrawerLockMode(i4, 5);
        }
        int i5 = savedState.f2088j;
        if (i5 != 3) {
            setDrawerLockMode(i5, 8388611);
        }
        int i6 = savedState.f2089k;
        if (i6 != 3) {
            setDrawerLockMode(i6, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        e();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i2).getLayoutParams();
            boolean z = layoutParams.f2084d == 1;
            boolean z2 = layoutParams.f2084d == 2;
            if (z || z2) {
                savedState.f2085g = layoutParams.f2081a;
                break;
            }
        }
        savedState.f2086h = this.r;
        savedState.f2087i = this.s;
        savedState.f2088j = this.t;
        savedState.f2089k = this.u;
        return savedState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
    
        if (getDrawerLockMode(r7) != 2) goto L20;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            a.k.a.c r0 = r6.f2079k
            r0.a(r7)
            a.k.a.c r0 = r6.f2080l
            r0.a(r7)
            int r0 = r7.getAction()
            r0 = r0 & 255(0xff, float:3.57E-43)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L62
            if (r0 == r2) goto L20
            r7 = 3
            if (r0 == r7) goto L1a
            goto L70
        L1a:
            r6.closeDrawers(r2)
            r6.v = r1
            goto L70
        L20:
            float r0 = r7.getX()
            float r7 = r7.getY()
            a.k.a.c r3 = r6.f2079k
            int r4 = (int) r0
            int r5 = (int) r7
            android.view.View r3 = r3.b(r4, r5)
            if (r3 == 0) goto L5d
            boolean r3 = r6.isContentView(r3)
            if (r3 == 0) goto L5d
            float r3 = r6.y
            float r0 = r0 - r3
            float r3 = r6.z
            float r7 = r7 - r3
            a.k.a.c r3 = r6.f2079k
            int r3 = r3.e()
            float r0 = r0 * r0
            float r7 = r7 * r7
            float r0 = r0 + r7
            int r3 = r3 * r3
            float r7 = (float) r3
            int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r7 >= 0) goto L5d
            android.view.View r7 = r6.findOpenDrawer()
            if (r7 == 0) goto L5d
            int r7 = r6.getDrawerLockMode(r7)
            r0 = 2
            if (r7 != r0) goto L5e
        L5d:
            r1 = 1
        L5e:
            r6.closeDrawers(r1)
            goto L70
        L62:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.y = r0
            r6.z = r7
            r6.v = r1
        L70:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void openDrawer(@NonNull View view) {
        openDrawer(view, true);
    }

    public void removeDrawerListener(@NonNull d dVar) {
        List<d> list;
        if (dVar == null || (list = this.x) == null) {
            return;
        }
        list.remove(dVar);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            closeDrawers(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.p) {
            return;
        }
        super.requestLayout();
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    public void setChildInsets(Object obj, boolean z) {
        this.F = obj;
        this.G = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f2) {
        this.f2074f = f2;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (isDrawerView(childAt)) {
                ViewCompat.a(childAt, this.f2074f);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(d dVar) {
        d dVar2 = this.w;
        if (dVar2 != null) {
            removeDrawerListener(dVar2);
        }
        if (dVar != null) {
            addDrawerListener(dVar);
        }
        this.w = dVar;
    }

    public void setDrawerLockMode(int i2) {
        setDrawerLockMode(i2, 3);
        setDrawerLockMode(i2, 5);
    }

    public void setDrawerShadow(Drawable drawable, int i2) {
        if (P) {
            return;
        }
        if ((i2 & 8388611) == 8388611) {
            this.H = drawable;
        } else if ((i2 & 8388613) == 8388613) {
            this.I = drawable;
        } else if ((i2 & 3) == 3) {
            this.J = drawable;
        } else if ((i2 & 5) != 5) {
            return;
        } else {
            this.K = drawable;
        }
        e();
        invalidate();
    }

    public void setDrawerTitle(int i2, @Nullable CharSequence charSequence) {
        int a2 = androidx.core.view.e.a(i2, ViewCompat.n(this));
        if (a2 == 3) {
            this.D = charSequence;
        } else if (a2 == 5) {
            this.E = charSequence;
        }
    }

    void setDrawerViewOffset(View view, float f2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f2 == layoutParams.f2082b) {
            return;
        }
        layoutParams.f2082b = f2;
        dispatchOnDrawerSlide(view, f2);
    }

    public void setScrimColor(@ColorInt int i2) {
        this.f2076h = i2;
        invalidate();
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        this.A = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(@ColorInt int i2) {
        this.A = new ColorDrawable(i2);
        invalidate();
    }

    void updateDrawerState(int i2, int i3, View view) {
        int f2 = this.f2079k.f();
        int f3 = this.f2080l.f();
        int i4 = 2;
        if (f2 == 1 || f3 == 1) {
            i4 = 1;
        } else if (f2 != 2 && f3 != 2) {
            i4 = 0;
        }
        if (view != null && i3 == 0) {
            float f4 = ((LayoutParams) view.getLayoutParams()).f2082b;
            if (f4 == 0.0f) {
                dispatchOnDrawerClosed(view);
            } else if (f4 == 1.0f) {
                dispatchOnDrawerOpened(view);
            }
        }
        if (i4 != this.o) {
            this.o = i4;
            List<d> list = this.x;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.x.get(size).a(i4);
                }
            }
        }
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void closeDrawer(@NonNull View view, boolean z) {
        if (isDrawerView(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.q) {
                layoutParams.f2082b = 0.0f;
                layoutParams.f2084d = 0;
            } else if (z) {
                layoutParams.f2084d |= 4;
                if (checkDrawerViewAbsoluteGravity(view, 3)) {
                    this.f2079k.b(view, -view.getWidth(), view.getTop());
                } else {
                    this.f2080l.b(view, getWidth(), view.getTop());
                }
            } else {
                moveDrawerToOffset(view, 0.0f);
                updateDrawerState(layoutParams.f2081a, 0, view);
                view.setVisibility(4);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    void closeDrawers(boolean z) {
        boolean b2;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (isDrawerView(childAt) && (!z || layoutParams.f2083c)) {
                int width = childAt.getWidth();
                if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                    b2 = this.f2079k.b(childAt, -width, childAt.getTop());
                } else {
                    b2 = this.f2080l.b(childAt, getWidth(), childAt.getTop());
                }
                z2 |= b2;
                layoutParams.f2083c = false;
            }
        }
        this.m.b();
        this.n.b();
        if (z2) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void openDrawer(@NonNull View view, boolean z) {
        if (isDrawerView(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.q) {
                layoutParams.f2082b = 1.0f;
                layoutParams.f2084d = 1;
                a(view, true);
            } else if (z) {
                layoutParams.f2084d |= 2;
                if (checkDrawerViewAbsoluteGravity(view, 3)) {
                    this.f2079k.b(view, 0, view.getTop());
                } else {
                    this.f2080l.b(view, getWidth() - view.getWidth(), view.getTop());
                }
            } else {
                moveDrawerToOffset(view, 1.0f);
                updateDrawerState(layoutParams.f2081a, 0, view);
                view.setVisibility(0);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f2073e = new c();
        this.f2076h = -1728053248;
        this.f2078j = new Paint();
        this.q = true;
        this.r = 3;
        this.s = 3;
        this.t = 3;
        this.u = 3;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        setDescendantFocusability(262144);
        float f2 = getResources().getDisplayMetrics().density;
        this.f2075g = (int) ((64.0f * f2) + 0.5f);
        float f3 = 400.0f * f2;
        this.m = new e(3);
        this.n = new e(5);
        this.f2079k = a.k.a.c.a(this, 1.0f, this.m);
        this.f2079k.d(1);
        this.f2079k.a(f3);
        this.m.a(this.f2079k);
        this.f2080l = a.k.a.c.a(this, 1.0f, this.n);
        this.f2080l.d(2);
        this.f2080l.a(f3);
        this.n.a(this.f2080l);
        setFocusableInTouchMode(true);
        ViewCompat.g(this, 1);
        ViewCompat.a(this, new b());
        setMotionEventSplittingEnabled(false);
        if (ViewCompat.k(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new a(this));
                setSystemUiVisibility(1280);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(O);
                try {
                    this.A = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.A = null;
            }
        }
        this.f2074f = f2 * 10.0f;
        this.L = new ArrayList<>();
    }

    public void setDrawerLockMode(int i2, int i3) {
        View findDrawerWithGravity;
        int a2 = androidx.core.view.e.a(i3, ViewCompat.n(this));
        if (i3 == 3) {
            this.r = i2;
        } else if (i3 == 5) {
            this.s = i2;
        } else if (i3 == 8388611) {
            this.t = i2;
        } else if (i3 == 8388613) {
            this.u = i2;
        }
        if (i2 != 0) {
            (a2 == 3 ? this.f2079k : this.f2080l).b();
        }
        if (i2 != 1) {
            if (i2 == 2 && (findDrawerWithGravity = findDrawerWithGravity(a2)) != null) {
                openDrawer(findDrawerWithGravity);
                return;
            }
            return;
        }
        View findDrawerWithGravity2 = findDrawerWithGravity(a2);
        if (findDrawerWithGravity2 != null) {
            closeDrawer(findDrawerWithGravity2);
        }
    }

    public void setStatusBarBackground(int i2) {
        this.A = i2 != 0 ? androidx.core.content.a.c(getContext(), i2) : null;
        invalidate();
    }

    public boolean isDrawerVisible(int i2) {
        View findDrawerWithGravity = findDrawerWithGravity(i2);
        if (findDrawerWithGravity != null) {
            return isDrawerVisible(findDrawerWithGravity);
        }
        return false;
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f2081a;

        /* renamed from: b, reason: collision with root package name */
        float f2082b;

        /* renamed from: c, reason: collision with root package name */
        boolean f2083c;

        /* renamed from: d, reason: collision with root package name */
        int f2084d;

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2081a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.LAYOUT_ATTRS);
            this.f2081a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f2081a = 0;
        }

        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f2081a = 0;
            this.f2081a = layoutParams.f2081a;
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2081a = 0;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2081a = 0;
        }
    }

    private boolean a(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent b2 = b(motionEvent, view);
            boolean dispatchGenericMotionEvent = view.dispatchGenericMotionEvent(b2);
            b2.recycle();
            return dispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean dispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return dispatchGenericMotionEvent2;
    }

    public boolean isDrawerOpen(int i2) {
        View findDrawerWithGravity = findDrawerWithGravity(i2);
        if (findDrawerWithGravity != null) {
            return isDrawerOpen(findDrawerWithGravity);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        int f2085g;

        /* renamed from: h, reason: collision with root package name */
        int f2086h;

        /* renamed from: i, reason: collision with root package name */
        int f2087i;

        /* renamed from: j, reason: collision with root package name */
        int f2088j;

        /* renamed from: k, reason: collision with root package name */
        int f2089k;

        /* loaded from: classes.dex */
        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2085g = 0;
            this.f2085g = parcel.readInt();
            this.f2086h = parcel.readInt();
            this.f2087i = parcel.readInt();
            this.f2088j = parcel.readInt();
            this.f2089k = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f2085g);
            parcel.writeInt(this.f2086h);
            parcel.writeInt(this.f2087i);
            parcel.writeInt(this.f2088j);
            parcel.writeInt(this.f2089k);
        }

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
            this.f2085g = 0;
        }
    }

    public void setDrawerShadow(@DrawableRes int i2, int i3) {
        setDrawerShadow(androidx.core.content.a.c(getContext(), i2), i3);
    }

    public int getDrawerLockMode(@NonNull View view) {
        if (isDrawerView(view)) {
            return getDrawerLockMode(((LayoutParams) view.getLayoutParams()).f2081a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    private boolean b() {
        return findVisibleDrawer() != null;
    }

    private void a(View view, boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((!z && !isDrawerView(childAt)) || (z && childAt == view)) {
                ViewCompat.g(childAt, 1);
            } else {
                ViewCompat.g(childAt, 4);
            }
        }
    }

    public void setDrawerLockMode(int i2, @NonNull View view) {
        if (isDrawerView(view)) {
            setDrawerLockMode(i2, ((LayoutParams) view.getLayoutParams()).f2081a);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    /* loaded from: classes.dex */
    class b extends androidx.core.view.a {

        /* renamed from: d, reason: collision with root package name */
        private final Rect f2090d = new Rect();

        b() {
        }

        @Override // androidx.core.view.a
        public void a(View view, androidx.core.view.f0.d dVar) {
            if (DrawerLayout.CAN_HIDE_DESCENDANTS) {
                super.a(view, dVar);
            } else {
                androidx.core.view.f0.d a2 = androidx.core.view.f0.d.a(dVar);
                super.a(view, a2);
                dVar.c(view);
                Object s = ViewCompat.s(view);
                if (s instanceof View) {
                    dVar.b((View) s);
                }
                a(dVar, a2);
                a2.w();
                a(dVar, (ViewGroup) view);
            }
            dVar.a((CharSequence) DrawerLayout.class.getName());
            dVar.h(false);
            dVar.i(false);
            dVar.b(d.a.f1964d);
            dVar.b(d.a.f1965e);
        }

        @Override // androidx.core.view.a
        public void b(View view, AccessibilityEvent accessibilityEvent) {
            super.b(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        @Override // androidx.core.view.a
        public boolean a(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() == 32) {
                List<CharSequence> text = accessibilityEvent.getText();
                View findVisibleDrawer = DrawerLayout.this.findVisibleDrawer();
                if (findVisibleDrawer == null) {
                    return true;
                }
                CharSequence drawerTitle = DrawerLayout.this.getDrawerTitle(DrawerLayout.this.getDrawerViewAbsoluteGravity(findVisibleDrawer));
                if (drawerTitle == null) {
                    return true;
                }
                text.add(drawerTitle);
                return true;
            }
            return super.a(view, accessibilityEvent);
        }

        @Override // androidx.core.view.a
        public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.CAN_HIDE_DESCENDANTS || DrawerLayout.includeChildForAccessibility(view)) {
                return super.a(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        private void a(androidx.core.view.f0.d dVar, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (DrawerLayout.includeChildForAccessibility(childAt)) {
                    dVar.a(childAt);
                }
            }
        }

        private void a(androidx.core.view.f0.d dVar, androidx.core.view.f0.d dVar2) {
            Rect rect = this.f2090d;
            dVar2.a(rect);
            dVar.c(rect);
            dVar2.b(rect);
            dVar.d(rect);
            dVar.p(dVar2.v());
            dVar.e(dVar2.h());
            dVar.a(dVar2.d());
            dVar.b(dVar2.e());
            dVar.g(dVar2.o());
            dVar.e(dVar2.n());
            dVar.h(dVar2.p());
            dVar.i(dVar2.q());
            dVar.a(dVar2.k());
            dVar.n(dVar2.u());
            dVar.k(dVar2.r());
            dVar.a(dVar2.b());
        }
    }

    public void closeDrawer(int i2) {
        closeDrawer(i2, true);
    }

    public void closeDrawer(int i2, boolean z) {
        View findDrawerWithGravity = findDrawerWithGravity(i2);
        if (findDrawerWithGravity != null) {
            closeDrawer(findDrawerWithGravity, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(i2));
    }

    public void openDrawer(int i2) {
        openDrawer(i2, true);
    }

    private boolean a(Drawable drawable, int i2) {
        if (drawable == null || !androidx.core.graphics.drawable.a.f(drawable)) {
            return false;
        }
        androidx.core.graphics.drawable.a.a(drawable, i2);
        return true;
    }

    public void openDrawer(int i2, boolean z) {
        View findDrawerWithGravity = findDrawerWithGravity(i2);
        if (findDrawerWithGravity != null) {
            openDrawer(findDrawerWithGravity, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(i2));
    }

    private static boolean a(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    private boolean a() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (((LayoutParams) getChildAt(i2).getLayoutParams()).f2083c) {
                return true;
            }
        }
        return false;
    }
}
