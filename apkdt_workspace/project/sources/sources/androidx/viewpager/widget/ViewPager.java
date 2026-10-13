package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import androidx.core.view.e0;
import androidx.core.view.s;
import androidx.customview.view.AbsSavedState;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.zoloz.hardware.camera.CameraConstants;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public class ViewPager extends ViewGroup {
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private boolean A;
    private int B;
    private int C;
    private int D;
    private float E;
    private float F;
    private float G;
    private float H;
    private int I;
    private VelocityTracker J;
    private int K;
    private int L;
    private int M;
    private int N;
    private boolean O;
    private long P;
    private EdgeEffect Q;
    private EdgeEffect R;
    private boolean S;
    private boolean T;
    private int U;
    private List<h> V;
    private h W;
    private h a0;
    private List<g> b0;
    private i c0;
    private int d0;

    /* renamed from: e, reason: collision with root package name */
    private int f3040e;
    private int e0;

    /* renamed from: f, reason: collision with root package name */
    private final ArrayList<e> f3041f;
    private ArrayList<View> f0;

    /* renamed from: g, reason: collision with root package name */
    private final e f3042g;
    private final Runnable g0;

    /* renamed from: h, reason: collision with root package name */
    private final Rect f3043h;
    private int h0;

    /* renamed from: i, reason: collision with root package name */
    private int f3044i;

    /* renamed from: j, reason: collision with root package name */
    private Parcelable f3045j;

    /* renamed from: k, reason: collision with root package name */
    private ClassLoader f3046k;

    /* renamed from: l, reason: collision with root package name */
    private Scroller f3047l;
    private boolean m;
    androidx.viewpager.widget.a mAdapter;
    int mCurItem;
    private j n;
    private int o;
    private Drawable p;
    private int q;
    private int r;
    private float s;
    private float t;
    private int u;
    private boolean v;
    private boolean w;
    private boolean x;
    private int y;
    private boolean z;
    static final int[] LAYOUT_ATTRS = {R.attr.layout_gravity};
    private static final Comparator<e> i0 = new a();
    private static final Interpolator j0 = new b();
    private static final k k0 = new k();

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface DecorView {
    }

    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        int f3054g;

        /* renamed from: h, reason: collision with root package name */
        Parcelable f3055h;

        /* renamed from: i, reason: collision with root package name */
        ClassLoader f3056i;

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

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f3054g + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f3054g);
            parcel.writeParcelable(this.f3055h, i2);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? SavedState.class.getClassLoader() : classLoader;
            this.f3054g = parcel.readInt();
            this.f3055h = parcel.readParcelable(classLoader);
            this.f3056i = classLoader;
        }
    }

    /* loaded from: classes.dex */
    static class a implements Comparator<e> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(e eVar, e eVar2) {
            return eVar.f3061b - eVar2.f3061b;
        }
    }

    /* loaded from: classes.dex */
    static class b implements Interpolator {
        b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.populate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements s {

        /* renamed from: a, reason: collision with root package name */
        private final Rect f3058a = new Rect();

        d() {
        }

        @Override // androidx.core.view.s
        public e0 a(View view, e0 e0Var) {
            e0 b2 = ViewCompat.b(view, e0Var);
            if (b2.j()) {
                return b2;
            }
            Rect rect = this.f3058a;
            rect.left = b2.e();
            rect.top = b2.g();
            rect.right = b2.f();
            rect.bottom = b2.d();
            int childCount = ViewPager.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                e0 a2 = ViewCompat.a(ViewPager.this.getChildAt(i2), b2);
                rect.left = Math.min(a2.e(), rect.left);
                rect.top = Math.min(a2.g(), rect.top);
                rect.right = Math.min(a2.f(), rect.right);
                rect.bottom = Math.min(a2.d(), rect.bottom);
            }
            return b2.b(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        Object f3060a;

        /* renamed from: b, reason: collision with root package name */
        int f3061b;

        /* renamed from: c, reason: collision with root package name */
        boolean f3062c;

        /* renamed from: d, reason: collision with root package name */
        float f3063d;

        /* renamed from: e, reason: collision with root package name */
        float f3064e;

        e() {
        }
    }

    /* loaded from: classes.dex */
    public interface g {
        void a(@NonNull ViewPager viewPager, @Nullable androidx.viewpager.widget.a aVar, @Nullable androidx.viewpager.widget.a aVar2);
    }

    /* loaded from: classes.dex */
    public interface h {
        void a(int i2);

        void a(int i2, float f2, @Px int i3);

        void b(int i2);
    }

    /* loaded from: classes.dex */
    public interface i {
        void a(@NonNull View view, float f2);
    }

    /* loaded from: classes.dex */
    private class j extends DataSetObserver {
        j() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.dataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.dataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class k implements Comparator<View> {
        k() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            boolean z = layoutParams.f3048a;
            if (z != layoutParams2.f3048a) {
                return z ? 1 : -1;
            }
            return layoutParams.f3052e - layoutParams2.f3052e;
        }
    }

    public ViewPager(@NonNull Context context) {
        super(context);
        this.f3041f = new ArrayList<>();
        this.f3042g = new e();
        this.f3043h = new Rect();
        this.f3044i = -1;
        this.f3045j = null;
        this.f3046k = null;
        this.s = -3.4028235E38f;
        this.t = Float.MAX_VALUE;
        this.y = 1;
        this.I = -1;
        this.S = true;
        this.g0 = new c();
        this.h0 = 0;
        initViewPager();
    }

    private void a(int i2, boolean z, int i3, boolean z2) {
        e infoForPosition = infoForPosition(i2);
        int clientWidth = infoForPosition != null ? (int) (getClientWidth() * Math.max(this.s, Math.min(infoForPosition.f3064e, this.t))) : 0;
        if (z) {
            smoothScrollTo(clientWidth, 0, i3);
            if (z2) {
                a(i2);
                return;
            }
            return;
        }
        if (z2) {
            a(i2);
        }
        a(false);
        scrollTo(clientWidth, 0);
        c(clientWidth);
    }

    private void b(int i2) {
        h hVar = this.W;
        if (hVar != null) {
            hVar.a(i2);
        }
        List<h> list = this.V;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                h hVar2 = this.V.get(i3);
                if (hVar2 != null) {
                    hVar2.a(i2);
                }
            }
        }
        h hVar3 = this.a0;
        if (hVar3 != null) {
            hVar3.a(i2);
        }
    }

    private void c() {
        int i2 = 0;
        while (i2 < getChildCount()) {
            if (!((LayoutParams) getChildAt(i2).getLayoutParams()).f3048a) {
                removeViewAt(i2);
                i2--;
            }
            i2++;
        }
    }

    private boolean d() {
        this.I = -1;
        a();
        this.Q.onRelease();
        this.R.onRelease();
        return this.Q.isFinished() || this.R.isFinished();
    }

    private void e() {
        if (this.e0 != 0) {
            ArrayList<View> arrayList = this.f0;
            if (arrayList == null) {
                this.f0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.f0.add(getChildAt(i2));
            }
            Collections.sort(this.f0, k0);
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.w != z) {
            this.w = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        e infoForChild;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f3061b == this.mCurItem) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i3 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    e addNewItem(int i2, int i3) {
        e eVar = new e();
        eVar.f3061b = i2;
        eVar.f3060a = this.mAdapter.a((ViewGroup) this, i2);
        eVar.f3063d = this.mAdapter.b(i2);
        if (i3 >= 0 && i3 < this.f3041f.size()) {
            this.f3041f.add(i3, eVar);
        } else {
            this.f3041f.add(eVar);
        }
        return eVar;
    }

    public void addOnAdapterChangeListener(@NonNull g gVar) {
        if (this.b0 == null) {
            this.b0 = new ArrayList();
        }
        this.b0.add(gVar);
    }

    public void addOnPageChangeListener(@NonNull h hVar) {
        if (this.V == null) {
            this.V = new ArrayList();
        }
        this.V.add(hVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        e infoForChild;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f3061b == this.mCurItem) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        layoutParams2.f3048a |= a(view);
        if (this.v) {
            if (layoutParams2 != null && layoutParams2.f3048a) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            layoutParams2.f3051d = true;
            addViewInLayout(view, i2, layoutParams);
            return;
        }
        super.addView(view, i2, layoutParams);
    }

    public boolean arrowScroll(int i2) {
        boolean requestFocus;
        boolean z;
        View findFocus = findFocus();
        boolean z2 = false;
        View view = null;
        if (findFocus != this) {
            if (findFocus != null) {
                ViewParent parent = findFocus.getParent();
                while (true) {
                    if (!(parent instanceof ViewGroup)) {
                        z = false;
                        break;
                    }
                    if (parent == this) {
                        z = true;
                        break;
                    }
                    parent = parent.getParent();
                }
                if (!z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(findFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = findFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb.append(" => ");
                        sb.append(parent2.getClass().getSimpleName());
                    }
                    String str = "arrowScroll tried to find focus based on non-child current focused view " + sb.toString();
                }
            }
            view = findFocus;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i2);
        if (findNextFocus != null && findNextFocus != view) {
            if (i2 == 17) {
                int i3 = a(this.f3043h, findNextFocus).left;
                int i4 = a(this.f3043h, view).left;
                if (view != null && i3 >= i4) {
                    requestFocus = pageLeft();
                } else {
                    requestFocus = findNextFocus.requestFocus();
                }
            } else if (i2 == 66) {
                int i5 = a(this.f3043h, findNextFocus).left;
                int i6 = a(this.f3043h, view).left;
                if (view != null && i5 <= i6) {
                    requestFocus = pageRight();
                } else {
                    requestFocus = findNextFocus.requestFocus();
                }
            }
            z2 = requestFocus;
        } else if (i2 == 17 || i2 == 1) {
            z2 = pageLeft();
        } else if (i2 == 66 || i2 == 2) {
            z2 = pageRight();
        }
        if (z2) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
        }
        return z2;
    }

    public boolean beginFakeDrag() {
        if (this.z) {
            return false;
        }
        this.O = true;
        setScrollState(1);
        this.E = 0.0f;
        this.G = 0.0f;
        VelocityTracker velocityTracker = this.J;
        if (velocityTracker == null) {
            this.J = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
        this.J.addMovement(obtain);
        obtain.recycle();
        this.P = uptimeMillis;
        return true;
    }

    protected boolean canScroll(View view, boolean z, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && canScroll(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i2);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        if (this.mAdapter == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i2 < 0 ? scrollX > ((int) (((float) clientWidth) * this.s)) : i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.t));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void clearOnPageChangeListeners() {
        List<h> list = this.V;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        this.m = true;
        if (!this.f3047l.isFinished() && this.f3047l.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.f3047l.getCurrX();
            int currY = this.f3047l.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!c(currX)) {
                    this.f3047l.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            ViewCompat.H(this);
            return;
        }
        a(true);
    }

    void dataSetChanged() {
        int a2 = this.mAdapter.a();
        this.f3040e = a2;
        boolean z = this.f3041f.size() < (this.y * 2) + 1 && this.f3041f.size() < a2;
        int i2 = this.mCurItem;
        int i3 = 0;
        boolean z2 = false;
        while (i3 < this.f3041f.size()) {
            e eVar = this.f3041f.get(i3);
            int a3 = this.mAdapter.a(eVar.f3060a);
            if (a3 != -1) {
                if (a3 == -2) {
                    this.f3041f.remove(i3);
                    i3--;
                    if (!z2) {
                        this.mAdapter.b((ViewGroup) this);
                        z2 = true;
                    }
                    this.mAdapter.a((ViewGroup) this, eVar.f3061b, eVar.f3060a);
                    int i4 = this.mCurItem;
                    if (i4 == eVar.f3061b) {
                        i2 = Math.max(0, Math.min(i4, a2 - 1));
                    }
                } else {
                    int i5 = eVar.f3061b;
                    if (i5 != a3) {
                        if (i5 == this.mCurItem) {
                            i2 = a3;
                        }
                        eVar.f3061b = a3;
                    }
                }
                z = true;
            }
            i3++;
        }
        if (z2) {
            this.mAdapter.a((ViewGroup) this);
        }
        Collections.sort(this.f3041f, i0);
        if (z) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i6).getLayoutParams();
                if (!layoutParams.f3048a) {
                    layoutParams.f3050c = 0.0f;
                }
            }
            setCurrentItemInternal(i2, false, true);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        e infoForChild;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f3061b == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    float distanceInfluenceForSnapDuration(float f2) {
        return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        androidx.viewpager.widget.a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        if (overScrollMode != 0 && (overScrollMode != 1 || (aVar = this.mAdapter) == null || aVar.a() <= 1)) {
            this.Q.finish();
            this.R.finish();
        } else {
            if (!this.Q.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.s * width);
                this.Q.setSize(height, width);
                z = false | this.Q.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.R.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.t + 1.0f)) * width2);
                this.R.setSize(height2, width2);
                z |= this.R.draw(canvas);
                canvas.restoreToCount(save2);
            }
        }
        if (z) {
            ViewCompat.H(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.p;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public void endFakeDrag() {
        if (this.O) {
            if (this.mAdapter != null) {
                VelocityTracker velocityTracker = this.J;
                velocityTracker.computeCurrentVelocity(1000, this.L);
                int xVelocity = (int) velocityTracker.getXVelocity(this.I);
                this.x = true;
                int clientWidth = getClientWidth();
                int scrollX = getScrollX();
                e b2 = b();
                setCurrentItemInternal(a(b2.f3061b, ((scrollX / clientWidth) - b2.f3064e) / b2.f3063d, xVelocity, (int) (this.E - this.G)), true, true, xVelocity);
            }
            a();
            this.O = false;
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    public boolean executeKeyEvent(@NonNull KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                if (keyEvent.hasModifiers(2)) {
                    return pageLeft();
                }
                return arrowScroll(17);
            }
            if (keyCode == 22) {
                if (keyEvent.hasModifiers(2)) {
                    return pageRight();
                }
                return arrowScroll(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return arrowScroll(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return arrowScroll(1);
                }
            }
        }
        return false;
    }

    public void fakeDragBy(float f2) {
        if (this.O) {
            if (this.mAdapter == null) {
                return;
            }
            this.E += f2;
            float scrollX = getScrollX() - f2;
            float clientWidth = getClientWidth();
            float f3 = this.s * clientWidth;
            float f4 = this.t * clientWidth;
            e eVar = this.f3041f.get(0);
            e eVar2 = this.f3041f.get(r4.size() - 1);
            if (eVar.f3061b != 0) {
                f3 = eVar.f3064e * clientWidth;
            }
            if (eVar2.f3061b != this.mAdapter.a() - 1) {
                f4 = eVar2.f3064e * clientWidth;
            }
            if (scrollX < f3) {
                scrollX = f3;
            } else if (scrollX > f4) {
                scrollX = f4;
            }
            int i2 = (int) scrollX;
            this.E += scrollX - i2;
            scrollTo(i2, getScrollY());
            c(i2);
            MotionEvent obtain = MotionEvent.obtain(this.P, SystemClock.uptimeMillis(), 2, this.E, 0.0f, 0);
            this.J.addMovement(obtain);
            obtain.recycle();
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Nullable
    public androidx.viewpager.widget.a getAdapter() {
        return this.mAdapter;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        if (this.e0 == 2) {
            i3 = (i2 - 1) - i3;
        }
        return ((LayoutParams) this.f0.get(i3).getLayoutParams()).f3053f;
    }

    public int getCurrentItem() {
        return this.mCurItem;
    }

    public int getOffscreenPageLimit() {
        return this.y;
    }

    public int getPageMargin() {
        return this.o;
    }

    e infoForAnyChild(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return infoForChild(view);
            }
        }
    }

    e infoForChild(View view) {
        for (int i2 = 0; i2 < this.f3041f.size(); i2++) {
            e eVar = this.f3041f.get(i2);
            if (this.mAdapter.a(view, eVar.f3060a)) {
                return eVar;
            }
        }
        return null;
    }

    e infoForPosition(int i2) {
        for (int i3 = 0; i3 < this.f3041f.size(); i3++) {
            e eVar = this.f3041f.get(i3);
            if (eVar.f3061b == i2) {
                return eVar;
            }
        }
        return null;
    }

    void initViewPager() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f3047l = new Scroller(context, j0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.D = viewConfiguration.getScaledPagingTouchSlop();
        this.K = (int) (400.0f * f2);
        this.L = viewConfiguration.getScaledMaximumFlingVelocity();
        this.Q = new EdgeEffect(context);
        this.R = new EdgeEffect(context);
        this.M = (int) (25.0f * f2);
        this.N = (int) (2.0f * f2);
        this.B = (int) (f2 * 16.0f);
        ViewCompat.a(this, new f());
        if (ViewCompat.l(this) == 0) {
            ViewCompat.g(this, 1);
        }
        ViewCompat.a(this, new d());
    }

    public boolean isFakeDragging() {
        return this.O;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.S = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.g0);
        Scroller scroller = this.f3047l;
        if (scroller != null && !scroller.isFinished()) {
            this.f3047l.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f2;
        float f3;
        super.onDraw(canvas);
        if (this.o <= 0 || this.p == null || this.f3041f.size() <= 0 || this.mAdapter == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f4 = this.o / width;
        int i2 = 0;
        e eVar = this.f3041f.get(0);
        float f5 = eVar.f3064e;
        int size = this.f3041f.size();
        int i3 = eVar.f3061b;
        int i4 = this.f3041f.get(size - 1).f3061b;
        while (i3 < i4) {
            while (i3 > eVar.f3061b && i2 < size) {
                i2++;
                eVar = this.f3041f.get(i2);
            }
            if (i3 == eVar.f3061b) {
                float f6 = eVar.f3064e;
                float f7 = eVar.f3063d;
                f2 = (f6 + f7) * width;
                f5 = f6 + f7 + f4;
            } else {
                float b2 = this.mAdapter.b(i3);
                f2 = (f5 + b2) * width;
                f5 += b2 + f4;
            }
            if (this.o + f2 > scrollX) {
                f3 = f4;
                this.p.setBounds(Math.round(f2), this.q, Math.round(this.o + f2), this.r);
                this.p.draw(canvas);
            } else {
                f3 = f4;
            }
            if (f2 > scrollX + r2) {
                return;
            }
            i3++;
            f4 = f3;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action != 3 && action != 1) {
            if (action != 0) {
                if (this.z) {
                    return true;
                }
                if (this.A) {
                    return false;
                }
            }
            if (action == 0) {
                float x = motionEvent.getX();
                this.G = x;
                this.E = x;
                float y = motionEvent.getY();
                this.H = y;
                this.F = y;
                this.I = motionEvent.getPointerId(0);
                this.A = false;
                this.m = true;
                this.f3047l.computeScrollOffset();
                if (this.h0 == 2 && Math.abs(this.f3047l.getFinalX() - this.f3047l.getCurrX()) > this.N) {
                    this.f3047l.abortAnimation();
                    this.x = false;
                    populate();
                    this.z = true;
                    c(true);
                    setScrollState(1);
                } else {
                    a(false);
                    this.z = false;
                }
            } else if (action == 2) {
                int i2 = this.I;
                if (i2 != -1) {
                    int findPointerIndex = motionEvent.findPointerIndex(i2);
                    float x2 = motionEvent.getX(findPointerIndex);
                    float f2 = x2 - this.E;
                    float abs = Math.abs(f2);
                    float y2 = motionEvent.getY(findPointerIndex);
                    float abs2 = Math.abs(y2 - this.H);
                    if (f2 != 0.0f && !a(this.E, f2) && canScroll(this, false, (int) f2, (int) x2, (int) y2)) {
                        this.E = x2;
                        this.F = y2;
                        this.A = true;
                        return false;
                    }
                    if (abs > this.D && abs * 0.5f > abs2) {
                        this.z = true;
                        c(true);
                        setScrollState(1);
                        this.E = f2 > 0.0f ? this.G + this.D : this.G - this.D;
                        this.F = y2;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > this.D) {
                        this.A = true;
                    }
                    if (this.z && a(x2)) {
                        ViewCompat.H(this);
                    }
                }
            } else if (action == 6) {
                a(motionEvent);
            }
            if (this.J == null) {
                this.J = VelocityTracker.obtain();
            }
            this.J.addMovement(motionEvent);
            return this.z;
        }
        d();
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        boolean z2;
        e infoForChild;
        int max;
        int max2;
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i8 = paddingBottom;
        int i9 = 0;
        int i10 = paddingTop;
        int i11 = paddingLeft;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f3048a) {
                    int i13 = layoutParams.f3049b;
                    int i14 = i13 & 7;
                    int i15 = i13 & 112;
                    if (i14 == 1) {
                        max = Math.max((i6 - childAt.getMeasuredWidth()) / 2, i11);
                    } else if (i14 == 3) {
                        max = i11;
                        i11 = childAt.getMeasuredWidth() + i11;
                    } else if (i14 != 5) {
                        max = i11;
                    } else {
                        max = (i6 - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    if (i15 == 16) {
                        max2 = Math.max((i7 - childAt.getMeasuredHeight()) / 2, i10);
                    } else if (i15 == 48) {
                        max2 = i10;
                        i10 = childAt.getMeasuredHeight() + i10;
                    } else if (i15 != 80) {
                        max2 = i10;
                    } else {
                        max2 = (i7 - i8) - childAt.getMeasuredHeight();
                        i8 += childAt.getMeasuredHeight();
                    }
                    int i16 = max + scrollX;
                    childAt.layout(i16, max2, childAt.getMeasuredWidth() + i16, max2 + childAt.getMeasuredHeight());
                    i9++;
                }
            }
        }
        int i17 = (i6 - i11) - paddingRight;
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt2 = getChildAt(i18);
            if (childAt2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.f3048a && (infoForChild = infoForChild(childAt2)) != null) {
                    float f2 = i17;
                    int i19 = ((int) (infoForChild.f3064e * f2)) + i11;
                    if (layoutParams2.f3051d) {
                        layoutParams2.f3051d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f2 * layoutParams2.f3050c), 1073741824), View.MeasureSpec.makeMeasureSpec((i7 - i10) - i8, 1073741824));
                    }
                    childAt2.layout(i19, i10, childAt2.getMeasuredWidth() + i19, childAt2.getMeasuredHeight() + i10);
                }
            }
        }
        this.q = i10;
        this.r = i7 - i8;
        this.U = i9;
        if (this.S) {
            z2 = false;
            a(this.mCurItem, false, 0, false);
        } else {
            z2 = false;
        }
        this.S = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0066  */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onPageScrolled(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.U
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L6d
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = r4
            r4 = r3
            r3 = 0
        L1d:
            if (r3 >= r6) goto L6d
            android.view.View r8 = r12.getChildAt(r3)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            androidx.viewpager.widget.ViewPager$LayoutParams r9 = (androidx.viewpager.widget.ViewPager.LayoutParams) r9
            boolean r10 = r9.f3048a
            if (r10 != 0) goto L2e
            goto L6a
        L2e:
            int r9 = r9.f3049b
            r9 = r9 & 7
            if (r9 == r2) goto L4f
            r10 = 3
            if (r9 == r10) goto L49
            r10 = 5
            if (r9 == r10) goto L3c
            r9 = r4
            goto L5e
        L3c:
            int r9 = r5 - r7
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r7 = r7 + r10
            goto L5b
        L49:
            int r9 = r8.getWidth()
            int r9 = r9 + r4
            goto L5e
        L4f:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r4)
        L5b:
            r11 = r9
            r9 = r4
            r4 = r11
        L5e:
            int r4 = r4 + r0
            int r10 = r8.getLeft()
            int r4 = r4 - r10
            if (r4 == 0) goto L69
            r8.offsetLeftAndRight(r4)
        L69:
            r4 = r9
        L6a:
            int r3 = r3 + 1
            goto L1d
        L6d:
            r12.a(r13, r14, r15)
            androidx.viewpager.widget.ViewPager$i r13 = r12.c0
            if (r13 == 0) goto La1
            int r13 = r12.getScrollX()
            int r14 = r12.getChildCount()
        L7c:
            if (r1 >= r14) goto La1
            android.view.View r15 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r15.getLayoutParams()
            androidx.viewpager.widget.ViewPager$LayoutParams r0 = (androidx.viewpager.widget.ViewPager.LayoutParams) r0
            boolean r0 = r0.f3048a
            if (r0 == 0) goto L8d
            goto L9e
        L8d:
            int r0 = r15.getLeft()
            int r0 = r0 - r13
            float r0 = (float) r0
            int r3 = r12.getClientWidth()
            float r3 = (float) r3
            float r0 = r0 / r3
            androidx.viewpager.widget.ViewPager$i r3 = r12.c0
            r3.a(r15, r0)
        L9e:
            int r1 = r1 + 1
            goto L7c
        La1:
            r12.T = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onPageScrolled(int, float, int):void");
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        e infoForChild;
        int childCount = getChildCount();
        int i5 = -1;
        if ((i2 & 2) != 0) {
            i5 = childCount;
            i3 = 0;
            i4 = 1;
        } else {
            i3 = childCount - 1;
            i4 = -1;
        }
        while (i3 != i5) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (infoForChild = infoForChild(childAt)) != null && infoForChild.f3061b == this.mCurItem && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        androidx.viewpager.widget.a aVar = this.mAdapter;
        if (aVar != null) {
            aVar.a(savedState.f3055h, savedState.f3056i);
            setCurrentItemInternal(savedState.f3054g, false, true);
        } else {
            this.f3044i = savedState.f3054g;
            this.f3045j = savedState.f3055h;
            this.f3046k = savedState.f3056i;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3054g = this.mCurItem;
        androidx.viewpager.widget.a aVar = this.mAdapter;
        if (aVar != null) {
            savedState.f3055h = aVar.b();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.o;
            a(i2, i4, i6, i6);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        androidx.viewpager.widget.a aVar;
        if (this.O) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (aVar = this.mAdapter) == null || aVar.a() == 0) {
            return false;
        }
        if (this.J == null) {
            this.J = VelocityTracker.obtain();
        }
        this.J.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f3047l.abortAnimation();
            this.x = false;
            populate();
            float x = motionEvent.getX();
            this.G = x;
            this.E = x;
            float y = motionEvent.getY();
            this.H = y;
            this.F = y;
            this.I = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.z) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.I);
                    if (findPointerIndex == -1) {
                        z = d();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.E);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.F);
                        if (abs > this.D && abs > abs2) {
                            this.z = true;
                            c(true);
                            float f2 = this.G;
                            this.E = x2 - f2 > 0.0f ? f2 + this.D : f2 - this.D;
                            this.F = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.z) {
                    z = false | a(motionEvent.getX(motionEvent.findPointerIndex(this.I)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.E = motionEvent.getX(actionIndex);
                    this.I = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    a(motionEvent);
                    this.E = motionEvent.getX(motionEvent.findPointerIndex(this.I));
                }
            } else if (this.z) {
                a(this.mCurItem, true, 0, false);
                z = d();
            }
        } else if (this.z) {
            VelocityTracker velocityTracker = this.J;
            velocityTracker.computeCurrentVelocity(1000, this.L);
            int xVelocity = (int) velocityTracker.getXVelocity(this.I);
            this.x = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            e b2 = b();
            float f3 = clientWidth;
            setCurrentItemInternal(a(b2.f3061b, ((scrollX / f3) - b2.f3064e) / (b2.f3063d + (this.o / f3)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.I)) - this.G)), true, true, xVelocity);
            z = d();
        }
        if (z) {
            ViewCompat.H(this);
        }
        return true;
    }

    boolean pageLeft() {
        int i2 = this.mCurItem;
        if (i2 <= 0) {
            return false;
        }
        setCurrentItem(i2 - 1, true);
        return true;
    }

    boolean pageRight() {
        androidx.viewpager.widget.a aVar = this.mAdapter;
        if (aVar == null || this.mCurItem >= aVar.a() - 1) {
            return false;
        }
        setCurrentItem(this.mCurItem + 1, true);
        return true;
    }

    void populate() {
        populate(this.mCurItem);
    }

    public void removeOnAdapterChangeListener(@NonNull g gVar) {
        List<g> list = this.b0;
        if (list != null) {
            list.remove(gVar);
        }
    }

    public void removeOnPageChangeListener(@NonNull h hVar) {
        List<h> list = this.V;
        if (list != null) {
            list.remove(hVar);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.v) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(@Nullable androidx.viewpager.widget.a aVar) {
        androidx.viewpager.widget.a aVar2 = this.mAdapter;
        if (aVar2 != null) {
            aVar2.b((DataSetObserver) null);
            this.mAdapter.b((ViewGroup) this);
            for (int i2 = 0; i2 < this.f3041f.size(); i2++) {
                e eVar = this.f3041f.get(i2);
                this.mAdapter.a((ViewGroup) this, eVar.f3061b, eVar.f3060a);
            }
            this.mAdapter.a((ViewGroup) this);
            this.f3041f.clear();
            c();
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        androidx.viewpager.widget.a aVar3 = this.mAdapter;
        this.mAdapter = aVar;
        this.f3040e = 0;
        if (this.mAdapter != null) {
            if (this.n == null) {
                this.n = new j();
            }
            this.mAdapter.b(this.n);
            this.x = false;
            boolean z = this.S;
            this.S = true;
            this.f3040e = this.mAdapter.a();
            if (this.f3044i >= 0) {
                this.mAdapter.a(this.f3045j, this.f3046k);
                setCurrentItemInternal(this.f3044i, false, true);
                this.f3044i = -1;
                this.f3045j = null;
                this.f3046k = null;
            } else if (!z) {
                populate();
            } else {
                requestLayout();
            }
        }
        List<g> list = this.b0;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.b0.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.b0.get(i3).a(this, aVar3, aVar);
        }
    }

    public void setCurrentItem(int i2) {
        this.x = false;
        setCurrentItemInternal(i2, !this.S, false);
    }

    void setCurrentItemInternal(int i2, boolean z, boolean z2) {
        setCurrentItemInternal(i2, z, z2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h setInternalPageChangeListener(h hVar) {
        h hVar2 = this.a0;
        this.a0 = hVar;
        return hVar2;
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1) {
            String str = "Requested offscreen page limit " + i2 + " too small; defaulting to 1";
            i2 = 1;
        }
        if (i2 != this.y) {
            this.y = i2;
            populate();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(h hVar) {
        this.W = hVar;
    }

    public void setPageMargin(int i2) {
        int i3 = this.o;
        this.o = i2;
        int width = getWidth();
        a(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(@Nullable Drawable drawable) {
        this.p = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z, @Nullable i iVar) {
        setPageTransformer(z, iVar, 2);
    }

    void setScrollState(int i2) {
        if (this.h0 == i2) {
            return;
        }
        this.h0 = i2;
        if (this.c0 != null) {
            b(i2 != 0);
        }
        b(i2);
    }

    void smoothScrollTo(int i2, int i3) {
        smoothScrollTo(i2, i3, 0);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.p;
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public boolean f3048a;

        /* renamed from: b, reason: collision with root package name */
        public int f3049b;

        /* renamed from: c, reason: collision with root package name */
        float f3050c;

        /* renamed from: d, reason: collision with root package name */
        boolean f3051d;

        /* renamed from: e, reason: collision with root package name */
        int f3052e;

        /* renamed from: f, reason: collision with root package name */
        int f3053f;

        public LayoutParams() {
            super(-1, -1);
            this.f3050c = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3050c = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.LAYOUT_ATTRS);
            this.f3049b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0060, code lost:
    
        if (r9 == r10) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
    
        r8 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void populate(int r18) {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.populate(int):void");
    }

    void setCurrentItemInternal(int i2, boolean z, boolean z2, int i3) {
        androidx.viewpager.widget.a aVar = this.mAdapter;
        if (aVar != null && aVar.a() > 0) {
            if (!z2 && this.mCurItem == i2 && this.f3041f.size() != 0) {
                setScrollingCacheEnabled(false);
                return;
            }
            if (i2 < 0) {
                i2 = 0;
            } else if (i2 >= this.mAdapter.a()) {
                i2 = this.mAdapter.a() - 1;
            }
            int i4 = this.y;
            int i5 = this.mCurItem;
            if (i2 > i5 + i4 || i2 < i5 - i4) {
                for (int i6 = 0; i6 < this.f3041f.size(); i6++) {
                    this.f3041f.get(i6).f3062c = true;
                }
            }
            boolean z3 = this.mCurItem != i2;
            if (this.S) {
                this.mCurItem = i2;
                if (z3) {
                    a(i2);
                }
                requestLayout();
                return;
            }
            populate(i2);
            a(i2, z, i3, z3);
            return;
        }
        setScrollingCacheEnabled(false);
    }

    public void setPageTransformer(boolean z, @Nullable i iVar, int i2) {
        boolean z2 = iVar != null;
        boolean z3 = z2 != (this.c0 != null);
        this.c0 = iVar;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            this.e0 = z ? 2 : 1;
            this.d0 = i2;
        } else {
            this.e0 = 0;
        }
        if (z3) {
            populate();
        }
    }

    void smoothScrollTo(int i2, int i3, int i4) {
        int scrollX;
        int abs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f3047l;
        if ((scroller == null || scroller.isFinished()) ? false : true) {
            scrollX = this.m ? this.f3047l.getCurrX() : this.f3047l.getStartX();
            this.f3047l.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i5 = scrollX;
        int scrollY = getScrollY();
        int i6 = i2 - i5;
        int i7 = i3 - scrollY;
        if (i6 == 0 && i7 == 0) {
            a(false);
            populate();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i8 = clientWidth / 2;
        float f2 = clientWidth;
        float f3 = i8;
        float distanceInfluenceForSnapDuration = f3 + (distanceInfluenceForSnapDuration(Math.min(1.0f, (Math.abs(i6) * 1.0f) / f2)) * f3);
        int abs2 = Math.abs(i4);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(distanceInfluenceForSnapDuration / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i6) / ((f2 * this.mAdapter.b(this.mCurItem)) + this.o)) + 1.0f) * 100.0f);
        }
        int min = Math.min(abs, CameraConstants.CAMERA_MAX_WIDTH);
        this.m = false;
        this.f3047l.startScroll(i5, scrollY, i6, i7, min);
        ViewCompat.H(this);
    }

    public void setCurrentItem(int i2, boolean z) {
        this.x = false;
        setCurrentItemInternal(i2, z, false);
    }

    public void setPageMarginDrawable(@DrawableRes int i2) {
        setPageMarginDrawable(androidx.core.content.a.c(getContext(), i2));
    }

    private boolean c(int i2) {
        if (this.f3041f.size() == 0) {
            if (this.S) {
                return false;
            }
            this.T = false;
            onPageScrolled(0, 0.0f, 0);
            if (this.T) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        e b2 = b();
        int clientWidth = getClientWidth();
        int i3 = this.o;
        int i4 = clientWidth + i3;
        float f2 = clientWidth;
        int i5 = b2.f3061b;
        float f3 = ((i2 / f2) - b2.f3064e) / (b2.f3063d + (i3 / f2));
        this.T = false;
        onPageScrolled(i5, f3, (int) (i4 * f3));
        if (this.T) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f extends androidx.core.view.a {
        f() {
        }

        @Override // androidx.core.view.a
        public void a(View view, androidx.core.view.f0.d dVar) {
            super.a(view, dVar);
            dVar.a((CharSequence) ViewPager.class.getName());
            dVar.m(b());
            if (ViewPager.this.canScrollHorizontally(1)) {
                dVar.a(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                dVar.a(FileUtil.STREAM_BUFFER_SIZE);
            }
        }

        @Override // androidx.core.view.a
        public void b(View view, AccessibilityEvent accessibilityEvent) {
            androidx.viewpager.widget.a aVar;
            super.b(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(b());
            if (accessibilityEvent.getEventType() != 4096 || (aVar = ViewPager.this.mAdapter) == null) {
                return;
            }
            accessibilityEvent.setItemCount(aVar.a());
            accessibilityEvent.setFromIndex(ViewPager.this.mCurItem);
            accessibilityEvent.setToIndex(ViewPager.this.mCurItem);
        }

        private boolean b() {
            androidx.viewpager.widget.a aVar = ViewPager.this.mAdapter;
            return aVar != null && aVar.a() > 1;
        }

        @Override // androidx.core.view.a
        public boolean a(View view, int i2, Bundle bundle) {
            if (super.a(view, i2, bundle)) {
                return true;
            }
            if (i2 != 4096) {
                if (i2 != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.mCurItem - 1);
                return true;
            }
            if (!ViewPager.this.canScrollHorizontally(1)) {
                return false;
            }
            ViewPager viewPager2 = ViewPager.this;
            viewPager2.setCurrentItem(viewPager2.mCurItem + 1);
            return true;
        }
    }

    private void b(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).setLayerType(z ? this.d0 : 0, null);
        }
    }

    private void a(e eVar, int i2, e eVar2) {
        int i3;
        int i4;
        e eVar3;
        e eVar4;
        int a2 = this.mAdapter.a();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? this.o / clientWidth : 0.0f;
        if (eVar2 != null) {
            int i5 = eVar2.f3061b;
            int i6 = eVar.f3061b;
            if (i5 < i6) {
                int i7 = 0;
                float f3 = eVar2.f3064e + eVar2.f3063d + f2;
                while (true) {
                    i5++;
                    if (i5 > eVar.f3061b || i7 >= this.f3041f.size()) {
                        break;
                    }
                    e eVar5 = this.f3041f.get(i7);
                    while (true) {
                        eVar4 = eVar5;
                        if (i5 <= eVar4.f3061b || i7 >= this.f3041f.size() - 1) {
                            break;
                        }
                        i7++;
                        eVar5 = this.f3041f.get(i7);
                    }
                    while (i5 < eVar4.f3061b) {
                        f3 += this.mAdapter.b(i5) + f2;
                        i5++;
                    }
                    eVar4.f3064e = f3;
                    f3 += eVar4.f3063d + f2;
                }
            } else if (i5 > i6) {
                int size = this.f3041f.size() - 1;
                float f4 = eVar2.f3064e;
                while (true) {
                    i5--;
                    if (i5 < eVar.f3061b || size < 0) {
                        break;
                    }
                    e eVar6 = this.f3041f.get(size);
                    while (true) {
                        eVar3 = eVar6;
                        if (i5 >= eVar3.f3061b || size <= 0) {
                            break;
                        }
                        size--;
                        eVar6 = this.f3041f.get(size);
                    }
                    while (i5 > eVar3.f3061b) {
                        f4 -= this.mAdapter.b(i5) + f2;
                        i5--;
                    }
                    f4 -= eVar3.f3063d + f2;
                    eVar3.f3064e = f4;
                }
            }
        }
        int size2 = this.f3041f.size();
        float f5 = eVar.f3064e;
        int i8 = eVar.f3061b;
        int i9 = i8 - 1;
        this.s = i8 == 0 ? f5 : -3.4028235E38f;
        int i10 = a2 - 1;
        this.t = eVar.f3061b == i10 ? (eVar.f3064e + eVar.f3063d) - 1.0f : Float.MAX_VALUE;
        int i11 = i2 - 1;
        while (i11 >= 0) {
            e eVar7 = this.f3041f.get(i11);
            while (true) {
                i4 = eVar7.f3061b;
                if (i9 <= i4) {
                    break;
                }
                f5 -= this.mAdapter.b(i9) + f2;
                i9--;
            }
            f5 -= eVar7.f3063d + f2;
            eVar7.f3064e = f5;
            if (i4 == 0) {
                this.s = f5;
            }
            i11--;
            i9--;
        }
        float f6 = eVar.f3064e + eVar.f3063d + f2;
        int i12 = eVar.f3061b + 1;
        int i13 = i2 + 1;
        while (i13 < size2) {
            e eVar8 = this.f3041f.get(i13);
            while (true) {
                i3 = eVar8.f3061b;
                if (i12 >= i3) {
                    break;
                }
                f6 += this.mAdapter.b(i12) + f2;
                i12++;
            }
            if (i3 == i10) {
                this.t = (eVar8.f3063d + f6) - 1.0f;
            }
            eVar8.f3064e = f6;
            f6 += eVar8.f3063d + f2;
            i13++;
            i12++;
        }
    }

    private e b() {
        int i2;
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.o / clientWidth : 0.0f;
        e eVar = null;
        int i3 = 0;
        boolean z = true;
        int i4 = -1;
        float f3 = 0.0f;
        float f4 = 0.0f;
        while (i3 < this.f3041f.size()) {
            e eVar2 = this.f3041f.get(i3);
            if (!z && eVar2.f3061b != (i2 = i4 + 1)) {
                eVar2 = this.f3042g;
                eVar2.f3064e = f3 + f4 + f2;
                eVar2.f3061b = i2;
                eVar2.f3063d = this.mAdapter.b(eVar2.f3061b);
                i3--;
            }
            f3 = eVar2.f3064e;
            float f5 = eVar2.f3063d + f3 + f2;
            if (!z && scrollX < f3) {
                return eVar;
            }
            if (scrollX < f5 || i3 == this.f3041f.size() - 1) {
                return eVar2;
            }
            i4 = eVar2.f3061b;
            f4 = eVar2.f3063d;
            i3++;
            eVar = eVar2;
            z = false;
        }
        return eVar;
    }

    public ViewPager(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3041f = new ArrayList<>();
        this.f3042g = new e();
        this.f3043h = new Rect();
        this.f3044i = -1;
        this.f3045j = null;
        this.f3046k = null;
        this.s = -3.4028235E38f;
        this.t = Float.MAX_VALUE;
        this.y = 1;
        this.I = -1;
        this.S = true;
        this.g0 = new c();
        this.h0 = 0;
        initViewPager();
    }

    private void c(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private static boolean a(@NonNull View view) {
        return view.getClass().getAnnotation(DecorView.class) != null;
    }

    private void a(int i2, int i3, int i4, int i5) {
        if (i3 > 0 && !this.f3041f.isEmpty()) {
            if (!this.f3047l.isFinished()) {
                this.f3047l.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)), getScrollY());
                return;
            }
        }
        e infoForPosition = infoForPosition(this.mCurItem);
        int min = (int) ((infoForPosition != null ? Math.min(infoForPosition.f3064e, this.t) : 0.0f) * ((i2 - getPaddingLeft()) - getPaddingRight()));
        if (min != getScrollX()) {
            a(false);
            scrollTo(min, getScrollY());
        }
    }

    private void a(int i2, float f2, int i3) {
        h hVar = this.W;
        if (hVar != null) {
            hVar.a(i2, f2, i3);
        }
        List<h> list = this.V;
        if (list != null) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                h hVar2 = this.V.get(i4);
                if (hVar2 != null) {
                    hVar2.a(i2, f2, i3);
                }
            }
        }
        h hVar3 = this.a0;
        if (hVar3 != null) {
            hVar3.a(i2, f2, i3);
        }
    }

    private void a(int i2) {
        h hVar = this.W;
        if (hVar != null) {
            hVar.b(i2);
        }
        List<h> list = this.V;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                h hVar2 = this.V.get(i3);
                if (hVar2 != null) {
                    hVar2.b(i2);
                }
            }
        }
        h hVar3 = this.a0;
        if (hVar3 != null) {
            hVar3.b(i2);
        }
    }

    private void a(boolean z) {
        boolean z2 = this.h0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f3047l.isFinished()) {
                this.f3047l.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f3047l.getCurrX();
                int currY = this.f3047l.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        c(currX);
                    }
                }
            }
        }
        this.x = false;
        boolean z3 = z2;
        for (int i2 = 0; i2 < this.f3041f.size(); i2++) {
            e eVar = this.f3041f.get(i2);
            if (eVar.f3062c) {
                eVar.f3062c = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z) {
                ViewCompat.a(this, this.g0);
            } else {
                this.g0.run();
            }
        }
    }

    private boolean a(float f2, float f3) {
        return (f2 < ((float) this.C) && f3 > 0.0f) || (f2 > ((float) (getWidth() - this.C)) && f3 < 0.0f);
    }

    private boolean a(float f2) {
        boolean z;
        boolean z2;
        float f3 = this.E - f2;
        this.E = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.s * clientWidth;
        float f5 = this.t * clientWidth;
        boolean z3 = false;
        e eVar = this.f3041f.get(0);
        ArrayList<e> arrayList = this.f3041f;
        e eVar2 = arrayList.get(arrayList.size() - 1);
        if (eVar.f3061b != 0) {
            f4 = eVar.f3064e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (eVar2.f3061b != this.mAdapter.a() - 1) {
            f5 = eVar2.f3064e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f4) {
            if (z) {
                this.Q.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z2) {
                this.R.onPull(Math.abs(scrollX - f5) / clientWidth);
                z3 = true;
            }
            scrollX = f5;
        }
        int i2 = (int) scrollX;
        this.E += scrollX - i2;
        scrollTo(i2, getScrollY());
        c(i2);
        return z3;
    }

    private int a(int i2, float f2, int i3, int i4) {
        if (Math.abs(i4) <= this.M || Math.abs(i3) <= this.K) {
            i2 += (int) (f2 + (i2 >= this.mCurItem ? 0.4f : 0.6f));
        } else if (i3 <= 0) {
            i2++;
        }
        if (this.f3041f.size() <= 0) {
            return i2;
        }
        return Math.max(this.f3041f.get(0).f3061b, Math.min(i2, this.f3041f.get(r4.size() - 1).f3061b));
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.I) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.E = motionEvent.getX(i2);
            this.I = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.J;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void a() {
        this.z = false;
        this.A = false;
        VelocityTracker velocityTracker = this.J;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.J = null;
        }
    }

    private Rect a(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }
}
