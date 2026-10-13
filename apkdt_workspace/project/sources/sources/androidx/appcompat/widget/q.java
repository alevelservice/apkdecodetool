package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DropDownListView.java */
/* loaded from: classes.dex */
public class q extends ListView {
    public static final int INVALID_POSITION = -1;
    public static final int NO_POSITION = -1;

    /* renamed from: e, reason: collision with root package name */
    private final Rect f1414e;

    /* renamed from: f, reason: collision with root package name */
    private int f1415f;

    /* renamed from: g, reason: collision with root package name */
    private int f1416g;

    /* renamed from: h, reason: collision with root package name */
    private int f1417h;

    /* renamed from: i, reason: collision with root package name */
    private int f1418i;

    /* renamed from: j, reason: collision with root package name */
    private int f1419j;

    /* renamed from: k, reason: collision with root package name */
    private Field f1420k;

    /* renamed from: l, reason: collision with root package name */
    private a f1421l;
    private boolean m;
    b mResolveHoverRunnable;
    private boolean n;
    private boolean o;
    private androidx.core.view.a0 p;
    private androidx.core.widget.f q;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DropDownListView.java */
    /* loaded from: classes.dex */
    public static class a extends androidx.appcompat.graphics.drawable.c {

        /* renamed from: f, reason: collision with root package name */
        private boolean f1422f;

        a(Drawable drawable) {
            super(drawable);
            this.f1422f = true;
        }

        void a(boolean z) {
            this.f1422f = z;
        }

        @Override // androidx.appcompat.graphics.drawable.c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f1422f) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.c, android.graphics.drawable.Drawable
        public void setHotspot(float f2, float f3) {
            if (this.f1422f) {
                super.setHotspot(f2, f3);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i2, int i3, int i4, int i5) {
            if (this.f1422f) {
                super.setHotspotBounds(i2, i3, i4, i5);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f1422f) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // androidx.appcompat.graphics.drawable.c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f1422f) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DropDownListView.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        b() {
        }

        public void a() {
            q qVar = q.this;
            qVar.mResolveHoverRunnable = null;
            qVar.removeCallbacks(this);
        }

        public void b() {
            q.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            q qVar = q.this;
            qVar.mResolveHoverRunnable = null;
            qVar.drawableStateChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(@NonNull Context context, boolean z) {
        super(context, null, a.a.a.dropDownListViewStyle);
        this.f1414e = new Rect();
        this.f1415f = 0;
        this.f1416g = 0;
        this.f1417h = 0;
        this.f1418i = 0;
        this.n = z;
        setCacheColorHint(0);
        try {
            this.f1420k = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1420k.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    private void a(View view, int i2) {
        performItemClick(view, i2, getItemIdAtPosition(i2));
    }

    private void b(int i2, View view) {
        Drawable selector = getSelector();
        boolean z = (selector == null || i2 == -1) ? false : true;
        if (z) {
            selector.setVisible(false, false);
        }
        a(i2, view);
        if (z) {
            Rect rect = this.f1414e;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            selector.setVisible(getVisibility() == 0, false);
            androidx.core.graphics.drawable.a.a(selector, exactCenterX, exactCenterY);
        }
    }

    private void c() {
        Drawable selector = getSelector();
        if (selector != null && b() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    private void setSelectorEnabled(boolean z) {
        a aVar = this.f1421l;
        if (aVar != null) {
            aVar.a(z);
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        a(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.mResolveHoverRunnable != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.n || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.n || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.n || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.n && this.m) || super.isInTouchMode();
    }

    public int lookForSelectablePosition(int i2, boolean z) {
        int min;
        ListAdapter adapter = getAdapter();
        if (adapter != null && !isInTouchMode()) {
            int count = adapter.getCount();
            if (!getAdapter().areAllItemsEnabled()) {
                if (z) {
                    min = Math.max(0, i2);
                    while (min < count && !adapter.isEnabled(min)) {
                        min++;
                    }
                } else {
                    min = Math.min(i2, count - 1);
                    while (min >= 0 && !adapter.isEnabled(min)) {
                        min--;
                    }
                }
                if (min < 0 || min >= count) {
                    return -1;
                }
                return min;
            }
            if (i2 >= 0 && i2 < count) {
                return i2;
            }
        }
        return -1;
    }

    public int measureHeightOfChildrenCompat(int i2, int i3, int i4, int i5, int i6) {
        int makeMeasureSpec;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i7 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i8 = i7;
        View view = null;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i9 < count) {
            int itemViewType = adapter.getItemViewType(i9);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = adapter.getView(i9, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i12 = layoutParams.height;
            if (i12 > 0) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i2, makeMeasureSpec);
            view.forceLayout();
            if (i9 > 0) {
                i8 += dividerHeight;
            }
            i8 += view.getMeasuredHeight();
            if (i8 >= i5) {
                return (i6 < 0 || i9 <= i6 || i11 <= 0 || i8 == i5) ? i5 : i11;
            }
            if (i6 >= 0 && i9 >= i6) {
                i11 = i8;
            }
            i9++;
        }
        return i8;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.mResolveHoverRunnable = null;
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000c, code lost:
    
        if (r0 != 3) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0048 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onForwardedEvent(android.view.MotionEvent r8, int r9) {
        /*
            r7 = this;
            int r0 = r8.getActionMasked()
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L14
            r9 = 3
            if (r0 == r9) goto L11
        Le:
            r9 = 0
            r3 = 1
            goto L46
        L11:
            r9 = 0
            r3 = 0
            goto L46
        L14:
            r3 = 1
            goto L17
        L16:
            r3 = 0
        L17:
            int r9 = r8.findPointerIndex(r9)
            if (r9 >= 0) goto L1e
            goto L11
        L1e:
            float r4 = r8.getX(r9)
            int r4 = (int) r4
            float r9 = r8.getY(r9)
            int r9 = (int) r9
            int r5 = r7.pointToPosition(r4, r9)
            r6 = -1
            if (r5 != r6) goto L31
            r9 = 1
            goto L46
        L31:
            int r3 = r7.getFirstVisiblePosition()
            int r3 = r5 - r3
            android.view.View r3 = r7.getChildAt(r3)
            float r4 = (float) r4
            float r9 = (float) r9
            r7.a(r3, r5, r4, r9)
            if (r0 != r2) goto Le
            r7.a(r3, r5)
            goto Le
        L46:
            if (r3 == 0) goto L4a
            if (r9 == 0) goto L4d
        L4a:
            r7.a()
        L4d:
            if (r3 == 0) goto L65
            androidx.core.widget.f r9 = r7.q
            if (r9 != 0) goto L5a
            androidx.core.widget.f r9 = new androidx.core.widget.f
            r9.<init>(r7)
            r7.q = r9
        L5a:
            androidx.core.widget.f r9 = r7.q
            r9.a(r2)
            androidx.core.widget.f r9 = r7.q
            r9.onTouch(r7, r8)
            goto L6c
        L65:
            androidx.core.widget.f r8 = r7.q
            if (r8 == 0) goto L6c
            r8.a(r1)
        L6c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.q.onForwardedEvent(android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.mResolveHoverRunnable == null) {
            this.mResolveHoverRunnable = new b();
            this.mResolveHoverRunnable.b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
        } else {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                c();
            }
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1419j = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        b bVar = this.mResolveHoverRunnable;
        if (bVar != null) {
            bVar.a();
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setListSelectionHidden(boolean z) {
        this.m = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        this.f1421l = drawable != null ? new a(drawable) : null;
        super.setSelector(this.f1421l);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1415f = rect.left;
        this.f1416g = rect.top;
        this.f1417h = rect.right;
        this.f1418i = rect.bottom;
    }

    private void a(Canvas canvas) {
        Drawable selector;
        if (this.f1414e.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f1414e);
        selector.draw(canvas);
    }

    private void a(int i2, View view, float f2, float f3) {
        b(i2, view);
        Drawable selector = getSelector();
        if (selector == null || i2 == -1) {
            return;
        }
        androidx.core.graphics.drawable.a.a(selector, f2, f3);
    }

    private boolean b() {
        return this.o;
    }

    private void a(int i2, View view) {
        Rect rect = this.f1414e;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1415f;
        rect.top -= this.f1416g;
        rect.right += this.f1417h;
        rect.bottom += this.f1418i;
        try {
            boolean z = this.f1420k.getBoolean(this);
            if (view.isEnabled() != z) {
                this.f1420k.set(this, Boolean.valueOf(!z));
                if (i2 != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        }
    }

    private void a() {
        this.o = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f1419j - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        androidx.core.view.a0 a0Var = this.p;
        if (a0Var != null) {
            a0Var.a();
            this.p = null;
        }
    }

    private void a(View view, int i2, float f2, float f3) {
        View childAt;
        this.o = true;
        if (Build.VERSION.SDK_INT >= 21) {
            drawableHotspotChanged(f2, f3);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i3 = this.f1419j;
        if (i3 != -1 && (childAt = getChildAt(i3 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f1419j = i2;
        float left = f2 - view.getLeft();
        float top = f3 - view.getTop();
        if (Build.VERSION.SDK_INT >= 21) {
            view.drawableHotspotChanged(left, top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        a(i2, view, f2, f3);
        setSelectorEnabled(false);
        refreshDrawableState();
    }
}
