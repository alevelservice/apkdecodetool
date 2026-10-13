package androidx.recyclerview.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.core.view.f0.d;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.widget.ViewBoundsCheck;
import androidx.recyclerview.widget.a;
import androidx.recyclerview.widget.b;
import androidx.recyclerview.widget.e;
import androidx.recyclerview.widget.n;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements androidx.core.view.v, androidx.core.view.k {
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    static final boolean ALLOW_THREAD_GAP_WORK;
    static final boolean DEBUG = false;
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_TYPE = -1;
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    static final boolean POST_UPDATES_ON_ANIMATION;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    private static final boolean V;
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    private static final boolean W;
    private static final Class<?>[] a0;
    static final Interpolator sQuinticInterpolator;
    private int A;
    private int B;
    private int C;
    private o D;
    private final int E;
    private final int F;
    private float G;
    private float H;
    private boolean I;
    private q J;
    private List<q> K;
    private ItemAnimator.b L;
    private j M;
    private final int[] N;
    private androidx.core.view.n O;
    private final int[] P;
    private final int[] Q;
    private Runnable R;
    private final n.b S;

    /* renamed from: e, reason: collision with root package name */
    private final u f2543e;

    /* renamed from: f, reason: collision with root package name */
    private SavedState f2544f;

    /* renamed from: g, reason: collision with root package name */
    private final Rect f2545g;

    /* renamed from: h, reason: collision with root package name */
    private final ArrayList<p> f2546h;

    /* renamed from: i, reason: collision with root package name */
    private p f2547i;

    /* renamed from: j, reason: collision with root package name */
    private int f2548j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f2549k;

    /* renamed from: l, reason: collision with root package name */
    private int f2550l;
    private final AccessibilityManager m;
    androidx.recyclerview.widget.k mAccessibilityDelegate;
    g mAdapter;
    androidx.recyclerview.widget.a mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    androidx.recyclerview.widget.b mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    boolean mDispatchItemsChangedEvent;
    boolean mEnableFastScroller;

    @VisibleForTesting
    boolean mFirstLayoutComplete;
    androidx.recyclerview.widget.e mGapWorker;
    boolean mHasFixedSize;
    boolean mIsAttached;
    ItemAnimator mItemAnimator;
    final ArrayList<l> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;

    @VisibleForTesting
    m mLayout;
    boolean mLayoutFrozen;
    boolean mLayoutWasDefered;

    @VisibleForTesting
    final List<z> mPendingAccessibilityImportanceChange;
    boolean mPostedAnimatorRunner;
    e.b mPrefetchRegistry;
    final s mRecycler;
    t mRecyclerListener;
    final int[] mScrollConsumed;
    final int[] mScrollStepConsumed;
    final w mState;
    final Rect mTempRect;
    final RectF mTempRectF;
    final Runnable mUpdateChildViewsRunnable;
    final y mViewFlinger;
    final androidx.recyclerview.widget.n mViewInfoStore;
    private List<n> n;
    private int o;
    private int p;

    @NonNull
    private EdgeEffectFactory q;
    private EdgeEffect r;
    private EdgeEffect s;
    private EdgeEffect t;
    private EdgeEffect u;
    private int v;
    private int w;
    private VelocityTracker x;
    private int y;
    private int z;
    private static final int[] T = {R.attr.nestedScrollingEnabled};
    private static final int[] U = {R.attr.clipToPadding};

    /* loaded from: classes.dex */
    public static class EdgeEffectFactory {

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface EdgeDirection {
        }

        @NonNull
        protected EdgeEffect a(@NonNull RecyclerView recyclerView, int i2) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ItemAnimator {

        /* renamed from: a, reason: collision with root package name */
        private b f2551a = null;

        /* renamed from: b, reason: collision with root package name */
        private ArrayList<a> f2552b = new ArrayList<>();

        /* renamed from: c, reason: collision with root package name */
        private long f2553c = 120;

        /* renamed from: d, reason: collision with root package name */
        private long f2554d = 120;

        /* renamed from: e, reason: collision with root package name */
        private long f2555e = 250;

        /* renamed from: f, reason: collision with root package name */
        private long f2556f = 250;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface AdapterChanges {
        }

        /* loaded from: classes.dex */
        public interface a {
            void a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public interface b {
            void a(@NonNull z zVar);
        }

        /* loaded from: classes.dex */
        public static class c {

            /* renamed from: a, reason: collision with root package name */
            public int f2557a;

            /* renamed from: b, reason: collision with root package name */
            public int f2558b;

            @NonNull
            public c a(@NonNull z zVar) {
                a(zVar, 0);
                return this;
            }

            @NonNull
            public c a(@NonNull z zVar, int i2) {
                View view = zVar.f2640a;
                this.f2557a = view.getLeft();
                this.f2558b = view.getTop();
                view.getRight();
                view.getBottom();
                return this;
            }
        }

        void a(b bVar) {
            this.f2551a = bVar;
        }

        public abstract boolean a(@NonNull z zVar);

        public abstract boolean a(@NonNull z zVar, @Nullable c cVar, @NonNull c cVar2);

        public abstract boolean a(@NonNull z zVar, @NonNull z zVar2, @NonNull c cVar, @NonNull c cVar2);

        public abstract void b();

        public final void b(@NonNull z zVar) {
            d(zVar);
            b bVar = this.f2551a;
            if (bVar != null) {
                bVar.a(zVar);
            }
        }

        public abstract boolean b(@NonNull z zVar, @NonNull c cVar, @Nullable c cVar2);

        public long c() {
            return this.f2553c;
        }

        public abstract void c(@NonNull z zVar);

        public abstract boolean c(@NonNull z zVar, @NonNull c cVar, @NonNull c cVar2);

        public long d() {
            return this.f2556f;
        }

        public void d(@NonNull z zVar) {
        }

        public long e() {
            return this.f2555e;
        }

        public long f() {
            return this.f2554d;
        }

        public abstract boolean g();

        @NonNull
        public c h() {
            return new c();
        }

        public abstract void i();

        static int e(z zVar) {
            int i2 = zVar.f2649j & 14;
            if (zVar.n()) {
                return 4;
            }
            if ((i2 & 4) != 0) {
                return i2;
            }
            int j2 = zVar.j();
            int f2 = zVar.f();
            return (j2 == -1 || f2 == -1 || j2 == f2) ? i2 : i2 | 2048;
        }

        @NonNull
        public c a(@NonNull w wVar, @NonNull z zVar, int i2, @NonNull List<Object> list) {
            c h2 = h();
            h2.a(zVar);
            return h2;
        }

        @NonNull
        public c a(@NonNull w wVar, @NonNull z zVar) {
            c h2 = h();
            h2.a(zVar);
            return h2;
        }

        public boolean a(@NonNull z zVar, @NonNull List<Object> list) {
            return a(zVar);
        }

        public final void a() {
            int size = this.f2552b.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f2552b.get(i2).a();
            }
            this.f2552b.clear();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface Orientation {
    }

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.mFirstLayoutComplete || recyclerView.isLayoutRequested()) {
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            if (!recyclerView2.mIsAttached) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.mLayoutFrozen) {
                recyclerView2.mLayoutWasDefered = true;
            } else {
                recyclerView2.consumePendingUpdateOperations();
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ItemAnimator itemAnimator = RecyclerView.this.mItemAnimator;
            if (itemAnimator != null) {
                itemAnimator.i();
            }
            RecyclerView.this.mPostedAnimatorRunner = false;
        }
    }

    /* loaded from: classes.dex */
    static class c implements Interpolator {
        c() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    /* loaded from: classes.dex */
    class d implements n.b {
        d() {
        }

        @Override // androidx.recyclerview.widget.n.b
        public void a(z zVar, ItemAnimator.c cVar, ItemAnimator.c cVar2) {
            RecyclerView.this.animateAppearance(zVar, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.n.b
        public void b(z zVar, @NonNull ItemAnimator.c cVar, @Nullable ItemAnimator.c cVar2) {
            RecyclerView.this.mRecycler.c(zVar);
            RecyclerView.this.animateDisappearance(zVar, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.n.b
        public void c(z zVar, @NonNull ItemAnimator.c cVar, @NonNull ItemAnimator.c cVar2) {
            zVar.a(false);
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mDataSetHasChangedAfterLayout) {
                if (recyclerView.mItemAnimator.a(zVar, zVar, cVar, cVar2)) {
                    RecyclerView.this.postAnimationRunner();
                }
            } else if (recyclerView.mItemAnimator.c(zVar, cVar, cVar2)) {
                RecyclerView.this.postAnimationRunner();
            }
        }

        @Override // androidx.recyclerview.widget.n.b
        public void a(z zVar) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mLayout.a(zVar.f2640a, recyclerView.mRecycler);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements b.InterfaceC0047b {
        e() {
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0047b
        public int a() {
            return RecyclerView.this.getChildCount();
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0047b
        public int b(View view) {
            return RecyclerView.this.indexOfChild(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0047b
        public void c(int i2) {
            View childAt = RecyclerView.this.getChildAt(i2);
            if (childAt != null) {
                RecyclerView.this.dispatchChildDetached(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i2);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0047b
        public void d(View view) {
            z childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.b(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0047b
        public void a(View view, int i2) {
            RecyclerView.this.addView(view, i2);
            RecyclerView.this.dispatchChildAttached(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0047b
        public void b() {
            int a2 = a();
            for (int i2 = 0; i2 < a2; i2++) {
                View a3 = a(i2);
                RecyclerView.this.dispatchChildDetached(a3);
                a3.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0047b
        public View a(int i2) {
            return RecyclerView.this.getChildAt(i2);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0047b
        public void a(View view, int i2, ViewGroup.LayoutParams layoutParams) {
            z childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                if (!childViewHolderInt.r() && !childViewHolderInt.x()) {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                }
                childViewHolderInt.d();
            }
            RecyclerView.this.attachViewToParent(view, i2, layoutParams);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0047b
        public z c(View view) {
            return RecyclerView.getChildViewHolderInt(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0047b
        public void b(int i2) {
            z childViewHolderInt;
            View a2 = a(i2);
            if (a2 != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(a2)) != null) {
                if (childViewHolderInt.r() && !childViewHolderInt.x()) {
                    throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                }
                childViewHolderInt.a(256);
            }
            RecyclerView.this.detachViewFromParent(i2);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0047b
        public void a(View view) {
            z childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.a(RecyclerView.this);
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class g<VH extends z> {

        /* renamed from: a, reason: collision with root package name */
        private final h f2569a = new h();

        /* renamed from: b, reason: collision with root package name */
        private boolean f2570b = false;

        public abstract int a();

        public abstract long a(int i2);

        public void a(@NonNull VH vh, int i2, @NonNull List<Object> list) {
            b((g<VH>) vh, i2);
        }

        public void a(@NonNull RecyclerView recyclerView) {
        }

        public boolean a(@NonNull VH vh) {
            return false;
        }

        public abstract int b(int i2);

        @NonNull
        public abstract VH b(@NonNull ViewGroup viewGroup, int i2);

        public void b(@NonNull VH vh) {
        }

        public abstract void b(@NonNull VH vh, int i2);

        public void b(@NonNull RecyclerView recyclerView) {
        }

        public final boolean b() {
            return this.f2570b;
        }

        public final void c() {
            this.f2569a.a();
        }

        public void c(@NonNull VH vh) {
        }

        public abstract void d(@NonNull VH vh);

        @NonNull
        public final VH a(@NonNull ViewGroup viewGroup, int i2) {
            try {
                a.i.k.b.a(RecyclerView.TRACE_CREATE_VIEW_TAG);
                VH b2 = b(viewGroup, i2);
                if (b2.f2640a.getParent() == null) {
                    b2.f2645f = i2;
                    return b2;
                }
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            } finally {
                a.i.k.b.a();
            }
        }

        public void b(@NonNull i iVar) {
            this.f2569a.unregisterObserver(iVar);
        }

        public final void a(@NonNull VH vh, int i2) {
            vh.f2642c = i2;
            if (b()) {
                vh.f2644e = a(i2);
            }
            vh.a(1, 519);
            a.i.k.b.a(RecyclerView.TRACE_BIND_VIEW_TAG);
            a(vh, i2, vh.k());
            vh.b();
            ViewGroup.LayoutParams layoutParams = vh.f2640a.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                ((LayoutParams) layoutParams).f2561c = true;
            }
            a.i.k.b.a();
        }

        public void a(@NonNull i iVar) {
            this.f2569a.registerObserver(iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class h extends Observable<i> {
        h() {
        }

        public void a() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((i) ((Observable) this).mObservers.get(size)).a();
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class i {
        public void a() {
        }
    }

    /* loaded from: classes.dex */
    public interface j {
        int a(int i2, int i3);
    }

    /* loaded from: classes.dex */
    private class k implements ItemAnimator.b {
        k() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.b
        public void a(z zVar) {
            zVar.a(true);
            if (zVar.f2647h != null && zVar.f2648i == null) {
                zVar.f2647h = null;
            }
            zVar.f2648i = null;
            if (zVar.w() || RecyclerView.this.removeAnimatingView(zVar.f2640a) || !zVar.r()) {
                return;
            }
            RecyclerView.this.removeDetachedView(zVar.f2640a, false);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class l {
        @Deprecated
        public void a(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        public void a(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull w wVar) {
            a(canvas, recyclerView);
        }

        @Deprecated
        public void b(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        public void b(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull w wVar) {
            b(canvas, recyclerView);
        }

        @Deprecated
        public void a(@NonNull Rect rect, int i2, @NonNull RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void a(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull w wVar) {
            a(rect, ((LayoutParams) view.getLayoutParams()).a(), recyclerView);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class m {

        /* renamed from: a, reason: collision with root package name */
        androidx.recyclerview.widget.b f2572a;

        /* renamed from: b, reason: collision with root package name */
        RecyclerView f2573b;

        /* renamed from: g, reason: collision with root package name */
        @Nullable
        v f2578g;
        int m;
        boolean n;
        private int o;
        private int p;
        private int q;
        private int r;

        /* renamed from: c, reason: collision with root package name */
        private final ViewBoundsCheck.b f2574c = new a();

        /* renamed from: d, reason: collision with root package name */
        private final ViewBoundsCheck.b f2575d = new b();

        /* renamed from: e, reason: collision with root package name */
        ViewBoundsCheck f2576e = new ViewBoundsCheck(this.f2574c);

        /* renamed from: f, reason: collision with root package name */
        ViewBoundsCheck f2577f = new ViewBoundsCheck(this.f2575d);

        /* renamed from: h, reason: collision with root package name */
        boolean f2579h = false;

        /* renamed from: i, reason: collision with root package name */
        boolean f2580i = false;

        /* renamed from: j, reason: collision with root package name */
        boolean f2581j = false;

        /* renamed from: k, reason: collision with root package name */
        private boolean f2582k = true;

        /* renamed from: l, reason: collision with root package name */
        private boolean f2583l = true;

        /* loaded from: classes.dex */
        class a implements ViewBoundsCheck.b {
            a() {
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.b
            public View a(int i2) {
                return m.this.d(i2);
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.b
            public int b() {
                return m.this.q() - m.this.o();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.b
            public int a() {
                return m.this.n();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.b
            public int b(View view) {
                return m.this.i(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).rightMargin;
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.b
            public int a(View view) {
                return m.this.f(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).leftMargin;
            }
        }

        /* loaded from: classes.dex */
        class b implements ViewBoundsCheck.b {
            b() {
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.b
            public View a(int i2) {
                return m.this.d(i2);
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.b
            public int b() {
                return m.this.h() - m.this.m();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.b
            public int a() {
                return m.this.p();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.b
            public int a(View view) {
                return m.this.j(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.b
            public int b(View view) {
                return m.this.e(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
            }
        }

        /* loaded from: classes.dex */
        public interface c {
            void a(int i2, int i3);
        }

        /* loaded from: classes.dex */
        public static class d {

            /* renamed from: a, reason: collision with root package name */
            public int f2586a;

            /* renamed from: b, reason: collision with root package name */
            public int f2587b;

            /* renamed from: c, reason: collision with root package name */
            public boolean f2588c;

            /* renamed from: d, reason: collision with root package name */
            public boolean f2589d;
        }

        boolean A() {
            return false;
        }

        void B() {
            v vVar = this.f2578g;
            if (vVar != null) {
                vVar.h();
            }
        }

        public boolean C() {
            return false;
        }

        public int a(int i2, s sVar, w wVar) {
            return 0;
        }

        public int a(@NonNull w wVar) {
            return 0;
        }

        @Nullable
        public View a(@NonNull View view, int i2, @NonNull s sVar, @NonNull w wVar) {
            return null;
        }

        public void a(int i2, int i3, w wVar, c cVar) {
        }

        public void a(int i2, c cVar) {
        }

        public void a(Rect rect, int i2, int i3) {
            c(a(i2, rect.width() + n() + o(), l()), a(i3, rect.height() + p() + m(), k()));
        }

        public void a(Parcelable parcelable) {
        }

        public void a(@Nullable g gVar, @Nullable g gVar2) {
        }

        public void a(@NonNull RecyclerView recyclerView, int i2, int i3) {
        }

        public void a(@NonNull RecyclerView recyclerView, int i2, int i3, int i4) {
        }

        public void a(RecyclerView recyclerView, w wVar, int i2) {
        }

        public boolean a() {
            return false;
        }

        public boolean a(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        public boolean a(@NonNull s sVar, @NonNull w wVar, @NonNull View view, int i2, @Nullable Bundle bundle) {
            return false;
        }

        public boolean a(@NonNull RecyclerView recyclerView, @NonNull ArrayList<View> arrayList, int i2, int i3) {
            return false;
        }

        public int b(int i2, s sVar, w wVar) {
            return 0;
        }

        public int b(@NonNull w wVar) {
            return 0;
        }

        void b(int i2, int i3) {
            this.q = View.MeasureSpec.getSize(i2);
            this.o = View.MeasureSpec.getMode(i2);
            if (this.o == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.q = 0;
            }
            this.r = View.MeasureSpec.getSize(i3);
            this.p = View.MeasureSpec.getMode(i3);
            if (this.p != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                return;
            }
            this.r = 0;
        }

        @CallSuper
        public void b(RecyclerView recyclerView) {
        }

        public void b(@NonNull RecyclerView recyclerView, int i2, int i3) {
        }

        public boolean b() {
            return false;
        }

        public int c(@NonNull s sVar, @NonNull w wVar) {
            return 0;
        }

        public int c(@NonNull w wVar) {
            return 0;
        }

        @Nullable
        public View c(@NonNull View view) {
            View findContainingItemView;
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || this.f2572a.c(findContainingItemView)) {
                return null;
            }
            return findContainingItemView;
        }

        public abstract LayoutParams c();

        @Deprecated
        public void c(RecyclerView recyclerView) {
        }

        public void c(@NonNull RecyclerView recyclerView, int i2, int i3) {
        }

        public int d() {
            return -1;
        }

        public int d(@NonNull w wVar) {
            return 0;
        }

        @Nullable
        public View d(@NonNull View view, int i2) {
            return null;
        }

        void d(int i2, int i3) {
            int e2 = e();
            if (e2 == 0) {
                this.f2573b.defaultOnMeasure(i2, i3);
                return;
            }
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = e.b.b.a.a.a.c.ALL_INT;
            int i7 = e.b.b.a.a.a.c.ALL_INT;
            for (int i8 = 0; i8 < e2; i8++) {
                View d2 = d(i8);
                Rect rect = this.f2573b.mTempRect;
                b(d2, rect);
                int i9 = rect.left;
                if (i9 < i4) {
                    i4 = i9;
                }
                int i10 = rect.right;
                if (i10 > i6) {
                    i6 = i10;
                }
                int i11 = rect.top;
                if (i11 < i5) {
                    i5 = i11;
                }
                int i12 = rect.bottom;
                if (i12 > i7) {
                    i7 = i12;
                }
            }
            this.f2573b.mTempRect.set(i4, i5, i6, i7);
            a(this.f2573b.mTempRect, i2, i3);
        }

        public void d(@NonNull RecyclerView recyclerView) {
        }

        public boolean d(@NonNull s sVar, @NonNull w wVar) {
            return false;
        }

        public int e() {
            androidx.recyclerview.widget.b bVar = this.f2572a;
            if (bVar != null) {
                return bVar.a();
            }
            return 0;
        }

        public int e(@NonNull w wVar) {
            return 0;
        }

        public void e(s sVar, w wVar) {
        }

        public int f(@NonNull w wVar) {
            return 0;
        }

        void f(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f2573b = null;
                this.f2572a = null;
                this.q = 0;
                this.r = 0;
            } else {
                this.f2573b = recyclerView;
                this.f2572a = recyclerView.mChildHelper;
                this.q = recyclerView.getWidth();
                this.r = recyclerView.getHeight();
            }
            this.o = 1073741824;
            this.p = 1073741824;
        }

        @Nullable
        public View g() {
            View focusedChild;
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f2572a.c(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public void g(int i2) {
        }

        public void g(w wVar) {
        }

        public void h(int i2) {
            if (d(i2) != null) {
                this.f2572a.e(i2);
            }
        }

        public int i() {
            return this.p;
        }

        public void i(int i2) {
        }

        public int j() {
            return ViewCompat.n(this.f2573b);
        }

        public int k(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f2560b.left;
        }

        public int l(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).a();
        }

        @Px
        public int m() {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        @Px
        public int n() {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public void o(View view) {
            this.f2572a.d(view);
        }

        @Px
        public int p() {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        @Px
        public int q() {
            return this.q;
        }

        public int r() {
            return this.o;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean s() {
            int e2 = e();
            for (int i2 = 0; i2 < e2; i2++) {
                ViewGroup.LayoutParams layoutParams = d(i2).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean t() {
            return this.f2580i;
        }

        public boolean u() {
            return this.f2581j;
        }

        public final boolean v() {
            return this.f2583l;
        }

        public boolean w() {
            v vVar = this.f2578g;
            return vVar != null && vVar.e();
        }

        @Nullable
        public Parcelable x() {
            return null;
        }

        public void y() {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public void z() {
            this.f2579h = true;
        }

        public void e(@Px int i2) {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i2);
            }
        }

        public int i(@NonNull View view) {
            return view.getRight() + m(view);
        }

        public int j(@NonNull View view) {
            return view.getTop() - n(view);
        }

        @Px
        public int k() {
            return ViewCompat.o(this.f2573b);
        }

        @Px
        public int l() {
            return ViewCompat.p(this.f2573b);
        }

        public int m(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f2560b.right;
        }

        public int n(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f2560b.top;
        }

        @Px
        public int o() {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        @Px
        public int h() {
            return this.r;
        }

        @Nullable
        public View c(int i2) {
            int e2 = e();
            for (int i3 = 0; i3 < e2; i3++) {
                View d2 = d(i3);
                z childViewHolderInt = RecyclerView.getChildViewHolderInt(d2);
                if (childViewHolderInt != null && childViewHolderInt.i() == i2 && !childViewHolderInt.x() && (this.f2573b.mState.d() || !childViewHolderInt.p())) {
                    return d2;
                }
            }
            return null;
        }

        public int e(@NonNull View view) {
            return view.getBottom() + d(view);
        }

        public int g(@NonNull View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f2560b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int h(@NonNull View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f2560b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        void e(RecyclerView recyclerView) {
            b(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public static int a(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i3, i4) : size;
            }
            return Math.min(size, Math.max(i3, i4));
        }

        @CallSuper
        public void b(RecyclerView recyclerView, s sVar) {
            c(recyclerView);
        }

        public void c(@NonNull View view, int i2) {
            a(view, i2, (LayoutParams) view.getLayoutParams());
        }

        public void a(String str) {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public void b(v vVar) {
            v vVar2 = this.f2578g;
            if (vVar2 != null && vVar != vVar2 && vVar2.e()) {
                this.f2578g.h();
            }
            this.f2578g = vVar;
            this.f2578g.a(this.f2573b, this);
        }

        void c(s sVar) {
            int e2 = sVar.e();
            for (int i2 = e2 - 1; i2 >= 0; i2--) {
                View c2 = sVar.c(i2);
                z childViewHolderInt = RecyclerView.getChildViewHolderInt(c2);
                if (!childViewHolderInt.x()) {
                    childViewHolderInt.a(false);
                    if (childViewHolderInt.r()) {
                        this.f2573b.removeDetachedView(c2, false);
                    }
                    ItemAnimator itemAnimator = this.f2573b.mItemAnimator;
                    if (itemAnimator != null) {
                        itemAnimator.c(childViewHolderInt);
                    }
                    childViewHolderInt.a(true);
                    sVar.a(c2);
                }
            }
            sVar.c();
            if (e2 > 0) {
                this.f2573b.invalidate();
            }
        }

        public boolean f() {
            RecyclerView recyclerView = this.f2573b;
            return recyclerView != null && recyclerView.mClipToPadding;
        }

        void a(RecyclerView recyclerView) {
            this.f2580i = true;
            b(recyclerView);
        }

        @Nullable
        public View d(int i2) {
            androidx.recyclerview.widget.b bVar = this.f2572a;
            if (bVar != null) {
                return bVar.c(i2);
            }
            return null;
        }

        public void f(@Px int i2) {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i2);
            }
        }

        public int d(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f2560b.bottom;
        }

        private boolean d(RecyclerView recyclerView, int i2, int i3) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int n = n();
            int p = p();
            int q = q() - o();
            int h2 = h() - m();
            Rect rect = this.f2573b.mTempRect;
            b(focusedChild, rect);
            return rect.left - i2 < q && rect.right - i2 > n && rect.top - i3 < h2 && rect.bottom - i3 > p;
        }

        void a(RecyclerView recyclerView, s sVar) {
            this.f2580i = false;
            b(recyclerView, sVar);
        }

        public int f(@NonNull View view) {
            return view.getLeft() - k(view);
        }

        public void b(View view) {
            b(view, -1);
        }

        public boolean a(Runnable runnable) {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void b(View view, int i2) {
            a(view, i2, false);
        }

        public void b(int i2) {
            a(i2, d(i2));
        }

        public LayoutParams a(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new LayoutParams(layoutParams);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean b(View view, int i2, int i3, LayoutParams layoutParams) {
            return (this.f2582k && b(view.getMeasuredWidth(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).width) && b(view.getMeasuredHeight(), i3, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        private static boolean b(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i3);
            int size = View.MeasureSpec.getSize(i3);
            if (i4 > 0 && i2 != i4) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i2;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i2;
            }
            return true;
        }

        public LayoutParams a(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public void b(@NonNull View view, @NonNull Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        public void c(int i2, int i3) {
            this.f2573b.setMeasuredDimension(i2, i3);
        }

        private int[] b(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            int[] iArr = new int[2];
            int n = n();
            int p = p();
            int q = q() - o();
            int h2 = h() - m();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = rect.width() + left;
            int height = rect.height() + top;
            int i2 = left - n;
            int min = Math.min(0, i2);
            int i3 = top - p;
            int min2 = Math.min(0, i3);
            int i4 = width - q;
            int max = Math.max(0, i4);
            int max2 = Math.max(0, height - h2);
            if (j() != 1) {
                if (min == 0) {
                    min = Math.min(i2, max);
                }
                max = min;
            } else if (max == 0) {
                max = Math.max(min, i4);
            }
            if (min2 == 0) {
                min2 = Math.min(i3, max2);
            }
            iArr[0] = max;
            iArr[1] = min2;
            return iArr;
        }

        public void a(View view) {
            a(view, -1);
        }

        public void a(View view, int i2) {
            a(view, i2, true);
        }

        private void a(View view, int i2, boolean z) {
            z childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!z && !childViewHolderInt.p()) {
                this.f2573b.mViewInfoStore.g(childViewHolderInt);
            } else {
                this.f2573b.mViewInfoStore.a(childViewHolderInt);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (!childViewHolderInt.z() && !childViewHolderInt.q()) {
                if (view.getParent() == this.f2573b) {
                    int b2 = this.f2572a.b(view);
                    if (i2 == -1) {
                        i2 = this.f2572a.a();
                    }
                    if (b2 == -1) {
                        throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f2573b.indexOfChild(view) + this.f2573b.exceptionLabel());
                    }
                    if (b2 != i2) {
                        this.f2573b.mLayout.a(b2, i2);
                    }
                } else {
                    this.f2572a.a(view, i2, false);
                    layoutParams.f2561c = true;
                    v vVar = this.f2578g;
                    if (vVar != null && vVar.e()) {
                        this.f2578g.b(view);
                    }
                }
            } else {
                if (childViewHolderInt.q()) {
                    childViewHolderInt.y();
                } else {
                    childViewHolderInt.c();
                }
                this.f2572a.a(view, i2, view.getLayoutParams(), false);
            }
            if (layoutParams.f2562d) {
                childViewHolderInt.f2640a.invalidate();
                layoutParams.f2562d = false;
            }
        }

        public void b(@NonNull s sVar) {
            for (int e2 = e() - 1; e2 >= 0; e2--) {
                if (!RecyclerView.getChildViewHolderInt(d(e2)).x()) {
                    a(e2, sVar);
                }
            }
        }

        public int b(@NonNull s sVar, @NonNull w wVar) {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView == null || recyclerView.mAdapter == null || !b()) {
                return 1;
            }
            return this.f2573b.mAdapter.a();
        }

        private void a(int i2, @NonNull View view) {
            this.f2572a.a(i2);
        }

        public void a(@NonNull View view, int i2, LayoutParams layoutParams) {
            z childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.p()) {
                this.f2573b.mViewInfoStore.a(childViewHolderInt);
            } else {
                this.f2573b.mViewInfoStore.g(childViewHolderInt);
            }
            this.f2572a.a(view, i2, layoutParams, childViewHolderInt.p());
        }

        public void a(int i2, int i3) {
            View d2 = d(i2);
            if (d2 != null) {
                b(i2);
                c(d2, i3);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i2 + this.f2573b.toString());
            }
        }

        public void a(@NonNull View view, @NonNull s sVar) {
            o(view);
            sVar.b(view);
        }

        public void a(int i2, @NonNull s sVar) {
            View d2 = d(i2);
            h(i2);
            sVar.b(d2);
        }

        public void a(@NonNull s sVar) {
            for (int e2 = e() - 1; e2 >= 0; e2--) {
                a(sVar, e2, d(e2));
            }
        }

        private void a(s sVar, int i2, View view) {
            z childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.x()) {
                return;
            }
            if (childViewHolderInt.n() && !childViewHolderInt.p() && !this.f2573b.mAdapter.b()) {
                h(i2);
                sVar.b(childViewHolderInt);
            } else {
                b(i2);
                sVar.c(view);
                this.f2573b.mViewInfoStore.d(childViewHolderInt);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(View view, int i2, int i3, LayoutParams layoutParams) {
            return (!view.isLayoutRequested() && this.f2582k && b(view.getWidth(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).width) && b(view.getHeight(), i3, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        public void a(@NonNull View view, int i2, int i3) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.f2573b.getItemDecorInsetsForChild(view);
            int i4 = i2 + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
            int i5 = i3 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
            int a2 = a(q(), r(), n() + o() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i4, ((ViewGroup.MarginLayoutParams) layoutParams).width, a());
            int a3 = a(h(), i(), p() + m() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i5, ((ViewGroup.MarginLayoutParams) layoutParams).height, b());
            if (a(view, a2, a3, layoutParams)) {
                view.measure(a2, a3);
            }
        }

        public static int a(int i2, int i3, int i4, int i5, boolean z) {
            int i6;
            int i7 = i2 - i4;
            int i8 = 0;
            int max = Math.max(0, i7);
            if (z) {
                if (i5 < 0) {
                    if (i5 == -1) {
                        if (i3 == Integer.MIN_VALUE || (i3 != 0 && i3 == 1073741824)) {
                            i6 = max;
                        } else {
                            i3 = 0;
                            i6 = 0;
                        }
                        i8 = i3;
                        max = i6;
                    }
                    max = 0;
                }
                max = i5;
                i8 = 1073741824;
            } else {
                if (i5 < 0) {
                    if (i5 == -1) {
                        i8 = i3;
                    } else {
                        if (i5 == -2) {
                            if (i3 == Integer.MIN_VALUE || i3 == 1073741824) {
                                i8 = e.b.b.a.a.a.c.ALL_INT;
                            }
                        }
                        max = 0;
                    }
                }
                max = i5;
                i8 = 1073741824;
            }
            return View.MeasureSpec.makeMeasureSpec(max, i8);
        }

        public void a(@NonNull View view, int i2, int i3, int i4, int i5) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.f2560b;
            view.layout(i2 + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i3 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i4 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i5 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public void a(@NonNull View view, boolean z, @NonNull Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((LayoutParams) view.getLayoutParams()).f2560b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f2573b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f2573b.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void a(@NonNull View view, @NonNull Rect rect) {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.getItemDecorInsetsForChild(view));
            }
        }

        public boolean a(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z) {
            return a(recyclerView, view, rect, z, false);
        }

        public boolean a(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z, boolean z2) {
            int[] b2 = b(recyclerView, view, rect, z);
            int i2 = b2[0];
            int i3 = b2[1];
            if ((z2 && !d(recyclerView, i2, i3)) || (i2 == 0 && i3 == 0)) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i2, i3);
            } else {
                recyclerView.smoothScrollBy(i2, i3);
            }
            return true;
        }

        public boolean a(@NonNull View view, boolean z, boolean z2) {
            boolean z3 = this.f2576e.a(view, 24579) && this.f2577f.a(view, 24579);
            return z ? z3 : !z3;
        }

        @Deprecated
        public boolean a(@NonNull RecyclerView recyclerView, @NonNull View view, @Nullable View view2) {
            return w() || recyclerView.isComputingLayout();
        }

        public boolean a(@NonNull RecyclerView recyclerView, @NonNull w wVar, @NonNull View view, @Nullable View view2) {
            return a(recyclerView, view, view2);
        }

        public void a(@NonNull RecyclerView recyclerView, int i2, int i3, @Nullable Object obj) {
            c(recyclerView, i2, i3);
        }

        public void a(@NonNull s sVar, @NonNull w wVar, int i2, int i3) {
            this.f2573b.defaultOnMeasure(i2, i3);
        }

        void a(v vVar) {
            if (this.f2578g == vVar) {
                this.f2578g = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(androidx.core.view.f0.d dVar) {
            RecyclerView recyclerView = this.f2573b;
            a(recyclerView.mRecycler, recyclerView.mState, dVar);
        }

        public void a(@NonNull s sVar, @NonNull w wVar, @NonNull androidx.core.view.f0.d dVar) {
            if (this.f2573b.canScrollVertically(-1) || this.f2573b.canScrollHorizontally(-1)) {
                dVar.a(FileUtil.STREAM_BUFFER_SIZE);
                dVar.m(true);
            }
            if (this.f2573b.canScrollVertically(1) || this.f2573b.canScrollHorizontally(1)) {
                dVar.a(4096);
                dVar.m(true);
            }
            dVar.a(d.b.a(b(sVar, wVar), a(sVar, wVar), d(sVar, wVar), c(sVar, wVar)));
        }

        public void a(@NonNull AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f2573b;
            a(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
        }

        public void a(@NonNull s sVar, @NonNull w wVar, @NonNull AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.f2573b.canScrollVertically(-1) && !this.f2573b.canScrollHorizontally(-1) && !this.f2573b.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            g gVar = this.f2573b.mAdapter;
            if (gVar != null) {
                accessibilityEvent.setItemCount(gVar.a());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(View view, androidx.core.view.f0.d dVar) {
            z childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null || childViewHolderInt.p() || this.f2572a.c(childViewHolderInt.f2640a)) {
                return;
            }
            RecyclerView recyclerView = this.f2573b;
            a(recyclerView.mRecycler, recyclerView.mState, view, dVar);
        }

        public void a(@NonNull s sVar, @NonNull w wVar, @NonNull View view, @NonNull androidx.core.view.f0.d dVar) {
            dVar.b(d.c.a(b() ? l(view) : 0, 1, a() ? l(view) : 0, 1, false, false));
        }

        public int a(@NonNull s sVar, @NonNull w wVar) {
            RecyclerView recyclerView = this.f2573b;
            if (recyclerView == null || recyclerView.mAdapter == null || !a()) {
                return 1;
            }
            return this.f2573b.mAdapter.a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(int i2, @Nullable Bundle bundle) {
            RecyclerView recyclerView = this.f2573b;
            return a(recyclerView.mRecycler, recyclerView.mState, i2, bundle);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0070 A[ADDED_TO_REGION] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(@androidx.annotation.NonNull androidx.recyclerview.widget.RecyclerView.s r2, @androidx.annotation.NonNull androidx.recyclerview.widget.RecyclerView.w r3, int r4, @androidx.annotation.Nullable android.os.Bundle r5) {
            /*
                r1 = this;
                androidx.recyclerview.widget.RecyclerView r2 = r1.f2573b
                r3 = 0
                if (r2 != 0) goto L6
                return r3
            L6:
                r5 = 4096(0x1000, float:5.74E-42)
                r0 = 1
                if (r4 == r5) goto L42
                r5 = 8192(0x2000, float:1.148E-41)
                if (r4 == r5) goto L12
                r2 = 0
            L10:
                r4 = 0
                goto L6e
            L12:
                r4 = -1
                boolean r2 = r2.canScrollVertically(r4)
                if (r2 == 0) goto L29
                int r2 = r1.h()
                int r5 = r1.p()
                int r2 = r2 - r5
                int r5 = r1.m()
                int r2 = r2 - r5
                int r2 = -r2
                goto L2a
            L29:
                r2 = 0
            L2a:
                androidx.recyclerview.widget.RecyclerView r5 = r1.f2573b
                boolean r4 = r5.canScrollHorizontally(r4)
                if (r4 == 0) goto L10
                int r4 = r1.q()
                int r5 = r1.n()
                int r4 = r4 - r5
                int r5 = r1.o()
                int r4 = r4 - r5
                int r4 = -r4
                goto L6e
            L42:
                boolean r2 = r2.canScrollVertically(r0)
                if (r2 == 0) goto L57
                int r2 = r1.h()
                int r4 = r1.p()
                int r2 = r2 - r4
                int r4 = r1.m()
                int r2 = r2 - r4
                goto L58
            L57:
                r2 = 0
            L58:
                androidx.recyclerview.widget.RecyclerView r4 = r1.f2573b
                boolean r4 = r4.canScrollHorizontally(r0)
                if (r4 == 0) goto L10
                int r4 = r1.q()
                int r5 = r1.n()
                int r4 = r4 - r5
                int r5 = r1.o()
                int r4 = r4 - r5
            L6e:
                if (r2 != 0) goto L73
                if (r4 != 0) goto L73
                return r3
            L73:
                androidx.recyclerview.widget.RecyclerView r3 = r1.f2573b
                r3.smoothScrollBy(r4, r2)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m.a(androidx.recyclerview.widget.RecyclerView$s, androidx.recyclerview.widget.RecyclerView$w, int, android.os.Bundle):boolean");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(@NonNull View view, int i2, @Nullable Bundle bundle) {
            RecyclerView recyclerView = this.f2573b;
            return a(recyclerView.mRecycler, recyclerView.mState, view, i2, bundle);
        }

        public static d a(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
            d dVar = new d();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.o.b.RecyclerView, i2, i3);
            dVar.f2586a = obtainStyledAttributes.getInt(a.o.b.RecyclerView_android_orientation, 1);
            dVar.f2587b = obtainStyledAttributes.getInt(a.o.b.RecyclerView_spanCount, 1);
            dVar.f2588c = obtainStyledAttributes.getBoolean(a.o.b.RecyclerView_reverseLayout, false);
            dVar.f2589d = obtainStyledAttributes.getBoolean(a.o.b.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return dVar;
        }
    }

    /* loaded from: classes.dex */
    public interface n {
        void a(@NonNull View view);

        void b(@NonNull View view);
    }

    /* loaded from: classes.dex */
    public static abstract class o {
        public abstract boolean a(int i2, int i3);
    }

    /* loaded from: classes.dex */
    public interface p {
        void a(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);

        void a(boolean z);

        boolean b(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);
    }

    /* loaded from: classes.dex */
    public static abstract class q {
        public void a(@NonNull RecyclerView recyclerView, int i2) {
        }

        public void a(@NonNull RecyclerView recyclerView, int i2, int i3) {
        }
    }

    /* loaded from: classes.dex */
    public final class s {

        /* renamed from: a, reason: collision with root package name */
        final ArrayList<z> f2596a = new ArrayList<>();

        /* renamed from: b, reason: collision with root package name */
        ArrayList<z> f2597b = null;

        /* renamed from: c, reason: collision with root package name */
        final ArrayList<z> f2598c = new ArrayList<>();

        /* renamed from: d, reason: collision with root package name */
        private final List<z> f2599d = Collections.unmodifiableList(this.f2596a);

        /* renamed from: e, reason: collision with root package name */
        private int f2600e = 2;

        /* renamed from: f, reason: collision with root package name */
        int f2601f = 2;

        /* renamed from: g, reason: collision with root package name */
        r f2602g;

        /* renamed from: h, reason: collision with root package name */
        private x f2603h;

        public s() {
        }

        private void e(z zVar) {
            if (RecyclerView.this.isAccessibilityEnabled()) {
                View view = zVar.f2640a;
                if (ViewCompat.l(view) == 0) {
                    ViewCompat.g(view, 1);
                }
                if (ViewCompat.x(view)) {
                    return;
                }
                zVar.a(16384);
                ViewCompat.a(view, RecyclerView.this.mAccessibilityDelegate.b());
            }
        }

        public void a() {
            this.f2596a.clear();
            i();
        }

        View b(int i2, boolean z) {
            return a(i2, z, RecyclerView.FOREVER_NS).f2640a;
        }

        void c(View view) {
            z childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.b(12) && childViewHolderInt.s() && !RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.f2597b == null) {
                    this.f2597b = new ArrayList<>();
                }
                childViewHolderInt.a(this, true);
                this.f2597b.add(childViewHolderInt);
                return;
            }
            if (childViewHolderInt.n() && !childViewHolderInt.p() && !RecyclerView.this.mAdapter.b()) {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.exceptionLabel());
            }
            childViewHolderInt.a(this, false);
            this.f2596a.add(childViewHolderInt);
        }

        boolean d(z zVar) {
            if (zVar.p()) {
                return RecyclerView.this.mState.d();
            }
            int i2 = zVar.f2642c;
            if (i2 >= 0 && i2 < RecyclerView.this.mAdapter.a()) {
                if (RecyclerView.this.mState.d() || RecyclerView.this.mAdapter.b(zVar.f2642c) == zVar.h()) {
                    return !RecyclerView.this.mAdapter.b() || zVar.g() == RecyclerView.this.mAdapter.a(zVar.f2642c);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + zVar + RecyclerView.this.exceptionLabel());
        }

        public void f(int i2) {
            this.f2600e = i2;
            j();
        }

        void g() {
            int size = this.f2598c.size();
            for (int i2 = 0; i2 < size; i2++) {
                LayoutParams layoutParams = (LayoutParams) this.f2598c.get(i2).f2640a.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.f2561c = true;
                }
            }
        }

        void h() {
            int size = this.f2598c.size();
            for (int i2 = 0; i2 < size; i2++) {
                z zVar = this.f2598c.get(i2);
                if (zVar != null) {
                    zVar.a(6);
                    zVar.a((Object) null);
                }
            }
            g gVar = RecyclerView.this.mAdapter;
            if (gVar == null || !gVar.b()) {
                i();
            }
        }

        void i() {
            for (int size = this.f2598c.size() - 1; size >= 0; size--) {
                e(size);
            }
            this.f2598c.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                RecyclerView.this.mPrefetchRegistry.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void j() {
            m mVar = RecyclerView.this.mLayout;
            this.f2601f = this.f2600e + (mVar != null ? mVar.m : 0);
            for (int size = this.f2598c.size() - 1; size >= 0 && this.f2598c.size() > this.f2601f; size--) {
                e(size);
            }
        }

        public void b(@NonNull View view) {
            z childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.r()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.q()) {
                childViewHolderInt.y();
            } else if (childViewHolderInt.z()) {
                childViewHolderInt.c();
            }
            b(childViewHolderInt);
        }

        private boolean a(@NonNull z zVar, int i2, int i3, long j2) {
            zVar.r = RecyclerView.this;
            int h2 = zVar.h();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j2 != RecyclerView.FOREVER_NS && !this.f2602g.a(h2, nanoTime, j2)) {
                return false;
            }
            RecyclerView.this.mAdapter.a((g) zVar, i2);
            this.f2602g.a(zVar.h(), RecyclerView.this.getNanoTime() - nanoTime);
            e(zVar);
            if (!RecyclerView.this.mState.d()) {
                return true;
            }
            zVar.f2646g = i3;
            return true;
        }

        @NonNull
        public List<z> f() {
            return this.f2599d;
        }

        private void f(z zVar) {
            View view = zVar.f2640a;
            if (view instanceof ViewGroup) {
                a((ViewGroup) view, false);
            }
        }

        void b(z zVar) {
            boolean z;
            if (!zVar.q() && zVar.f2640a.getParent() == null) {
                if (!zVar.r()) {
                    if (!zVar.x()) {
                        boolean e2 = zVar.e();
                        g gVar = RecyclerView.this.mAdapter;
                        if ((gVar != null && e2 && gVar.a((g) zVar)) || zVar.o()) {
                            if (this.f2601f <= 0 || zVar.b(526)) {
                                z = false;
                            } else {
                                int size = this.f2598c.size();
                                if (size >= this.f2601f && size > 0) {
                                    e(0);
                                    size--;
                                }
                                if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !RecyclerView.this.mPrefetchRegistry.a(zVar.f2642c)) {
                                    int i2 = size - 1;
                                    while (i2 >= 0) {
                                        if (!RecyclerView.this.mPrefetchRegistry.a(this.f2598c.get(i2).f2642c)) {
                                            break;
                                        } else {
                                            i2--;
                                        }
                                    }
                                    size = i2 + 1;
                                }
                                this.f2598c.add(size, zVar);
                                z = true;
                            }
                            if (!z) {
                                a(zVar, true);
                                r1 = true;
                            }
                        } else {
                            z = false;
                        }
                        RecyclerView.this.mViewInfoStore.h(zVar);
                        if (z || r1 || !e2) {
                            return;
                        }
                        zVar.r = null;
                        return;
                    }
                    throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.exceptionLabel());
                }
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + zVar + RecyclerView.this.exceptionLabel());
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(zVar.q());
            sb.append(" isAttached:");
            sb.append(zVar.f2640a.getParent() != null);
            sb.append(RecyclerView.this.exceptionLabel());
            throw new IllegalArgumentException(sb.toString());
        }

        void e(int i2) {
            a(this.f2598c.get(i2), true);
            this.f2598c.remove(i2);
        }

        @NonNull
        public View d(int i2) {
            return b(i2, false);
        }

        r d() {
            if (this.f2602g == null) {
                this.f2602g = new r();
            }
            return this.f2602g;
        }

        void c(z zVar) {
            if (zVar.o) {
                this.f2597b.remove(zVar);
            } else {
                this.f2596a.remove(zVar);
            }
            zVar.n = null;
            zVar.o = false;
            zVar.c();
        }

        int e() {
            return this.f2596a.size();
        }

        public int a(int i2) {
            if (i2 >= 0 && i2 < RecyclerView.this.mState.a()) {
                return !RecyclerView.this.mState.d() ? i2 : RecyclerView.this.mAdapterHelper.b(i2);
            }
            throw new IndexOutOfBoundsException("invalid position " + i2 + ". State item count is " + RecyclerView.this.mState.a() + RecyclerView.this.exceptionLabel());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0189  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x01a6  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x01c9  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x0202  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x022c A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0210  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x01d8  */
        @androidx.annotation.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.z a(int r17, boolean r18, long r19) {
            /*
                Method dump skipped, instructions count: 619
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.s.a(int, boolean, long):androidx.recyclerview.widget.RecyclerView$z");
        }

        View c(int i2) {
            return this.f2596a.get(i2).f2640a;
        }

        void c() {
            this.f2596a.clear();
            ArrayList<z> arrayList = this.f2597b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        void c(int i2, int i3) {
            int i4;
            int i5 = i3 + i2;
            for (int size = this.f2598c.size() - 1; size >= 0; size--) {
                z zVar = this.f2598c.get(size);
                if (zVar != null && (i4 = zVar.f2642c) >= i2 && i4 < i5) {
                    zVar.a(2);
                    e(size);
                }
            }
        }

        z b(int i2) {
            int size;
            int b2;
            ArrayList<z> arrayList = this.f2597b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i3 = 0; i3 < size; i3++) {
                    z zVar = this.f2597b.get(i3);
                    if (!zVar.z() && zVar.i() == i2) {
                        zVar.a(32);
                        return zVar;
                    }
                }
                if (RecyclerView.this.mAdapter.b() && (b2 = RecyclerView.this.mAdapterHelper.b(i2)) > 0 && b2 < RecyclerView.this.mAdapter.a()) {
                    long a2 = RecyclerView.this.mAdapter.a(b2);
                    for (int i4 = 0; i4 < size; i4++) {
                        z zVar2 = this.f2597b.get(i4);
                        if (!zVar2.z() && zVar2.g() == a2) {
                            zVar2.a(32);
                            return zVar2;
                        }
                    }
                }
            }
            return null;
        }

        void b(int i2, int i3) {
            int i4;
            int i5;
            int i6;
            int i7;
            if (i2 < i3) {
                i5 = i2;
                i4 = i3;
                i6 = -1;
            } else {
                i4 = i2;
                i5 = i3;
                i6 = 1;
            }
            int size = this.f2598c.size();
            for (int i8 = 0; i8 < size; i8++) {
                z zVar = this.f2598c.get(i8);
                if (zVar != null && (i7 = zVar.f2642c) >= i5 && i7 <= i4) {
                    if (i7 == i2) {
                        zVar.a(i3 - i2, false);
                    } else {
                        zVar.a(i6, false);
                    }
                }
            }
        }

        void b() {
            int size = this.f2598c.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f2598c.get(i2).a();
            }
            int size2 = this.f2596a.size();
            for (int i3 = 0; i3 < size2; i3++) {
                this.f2596a.get(i3).a();
            }
            ArrayList<z> arrayList = this.f2597b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    this.f2597b.get(i4).a();
                }
            }
        }

        private void a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(@NonNull z zVar, boolean z) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(zVar);
            if (zVar.b(16384)) {
                zVar.a(0, 16384);
                ViewCompat.a(zVar.f2640a, (androidx.core.view.a) null);
            }
            if (z) {
                a(zVar);
            }
            zVar.r = null;
            d().a(zVar);
        }

        void a(View view) {
            z childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.n = null;
            childViewHolderInt.o = false;
            childViewHolderInt.c();
            b(childViewHolderInt);
        }

        z a(int i2, boolean z) {
            View b2;
            int size = this.f2596a.size();
            for (int i3 = 0; i3 < size; i3++) {
                z zVar = this.f2596a.get(i3);
                if (!zVar.z() && zVar.i() == i2 && !zVar.n() && (RecyclerView.this.mState.f2628h || !zVar.p())) {
                    zVar.a(32);
                    return zVar;
                }
            }
            if (!z && (b2 = RecyclerView.this.mChildHelper.b(i2)) != null) {
                z childViewHolderInt = RecyclerView.getChildViewHolderInt(b2);
                RecyclerView.this.mChildHelper.f(b2);
                int b3 = RecyclerView.this.mChildHelper.b(b2);
                if (b3 != -1) {
                    RecyclerView.this.mChildHelper.a(b3);
                    c(b2);
                    childViewHolderInt.a(8224);
                    return childViewHolderInt;
                }
                throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt + RecyclerView.this.exceptionLabel());
            }
            int size2 = this.f2598c.size();
            for (int i4 = 0; i4 < size2; i4++) {
                z zVar2 = this.f2598c.get(i4);
                if (!zVar2.n() && zVar2.i() == i2) {
                    if (!z) {
                        this.f2598c.remove(i4);
                    }
                    return zVar2;
                }
            }
            return null;
        }

        z a(long j2, int i2, boolean z) {
            for (int size = this.f2596a.size() - 1; size >= 0; size--) {
                z zVar = this.f2596a.get(size);
                if (zVar.g() == j2 && !zVar.z()) {
                    if (i2 == zVar.h()) {
                        zVar.a(32);
                        if (zVar.p() && !RecyclerView.this.mState.d()) {
                            zVar.a(2, 14);
                        }
                        return zVar;
                    }
                    if (!z) {
                        this.f2596a.remove(size);
                        RecyclerView.this.removeDetachedView(zVar.f2640a, false);
                        a(zVar.f2640a);
                    }
                }
            }
            int size2 = this.f2598c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                z zVar2 = this.f2598c.get(size2);
                if (zVar2.g() == j2) {
                    if (i2 == zVar2.h()) {
                        if (!z) {
                            this.f2598c.remove(size2);
                        }
                        return zVar2;
                    }
                    if (!z) {
                        e(size2);
                        return null;
                    }
                }
            }
        }

        void a(@NonNull z zVar) {
            t tVar = RecyclerView.this.mRecyclerListener;
            if (tVar != null) {
                tVar.a(zVar);
            }
            g gVar = RecyclerView.this.mAdapter;
            if (gVar != null) {
                gVar.d(zVar);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.h(zVar);
            }
        }

        void a(g gVar, g gVar2, boolean z) {
            a();
            d().a(gVar, gVar2, z);
        }

        void a(int i2, int i3) {
            int size = this.f2598c.size();
            for (int i4 = 0; i4 < size; i4++) {
                z zVar = this.f2598c.get(i4);
                if (zVar != null && zVar.f2642c >= i2) {
                    zVar.a(i3, true);
                }
            }
        }

        void a(int i2, int i3, boolean z) {
            int i4 = i2 + i3;
            for (int size = this.f2598c.size() - 1; size >= 0; size--) {
                z zVar = this.f2598c.get(size);
                if (zVar != null) {
                    int i5 = zVar.f2642c;
                    if (i5 >= i4) {
                        zVar.a(-i3, z);
                    } else if (i5 >= i2) {
                        zVar.a(8);
                        e(size);
                    }
                }
            }
        }

        void a(x xVar) {
            this.f2603h = xVar;
        }

        void a(r rVar) {
            r rVar2 = this.f2602g;
            if (rVar2 != null) {
                rVar2.c();
            }
            this.f2602g = rVar;
            if (this.f2602g == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f2602g.a();
        }
    }

    /* loaded from: classes.dex */
    public interface t {
        void a(@NonNull z zVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class u extends i {
        u() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void a() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mState.f2627g = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (RecyclerView.this.mAdapterHelper.c()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class v {

        /* renamed from: b, reason: collision with root package name */
        private RecyclerView f2607b;

        /* renamed from: c, reason: collision with root package name */
        private m f2608c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f2609d;

        /* renamed from: e, reason: collision with root package name */
        private boolean f2610e;

        /* renamed from: f, reason: collision with root package name */
        private View f2611f;

        /* renamed from: h, reason: collision with root package name */
        private boolean f2613h;

        /* renamed from: a, reason: collision with root package name */
        private int f2606a = -1;

        /* renamed from: g, reason: collision with root package name */
        private final a f2612g = new a(0, 0);

        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            private int f2614a;

            /* renamed from: b, reason: collision with root package name */
            private int f2615b;

            /* renamed from: c, reason: collision with root package name */
            private int f2616c;

            /* renamed from: d, reason: collision with root package name */
            private int f2617d;

            /* renamed from: e, reason: collision with root package name */
            private Interpolator f2618e;

            /* renamed from: f, reason: collision with root package name */
            private boolean f2619f;

            /* renamed from: g, reason: collision with root package name */
            private int f2620g;

            public a(@Px int i2, @Px int i3) {
                this(i2, i3, e.b.b.a.a.a.c.ALL_INT, null);
            }

            private void b() {
                if (this.f2618e != null && this.f2616c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f2616c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public void a(int i2) {
                this.f2617d = i2;
            }

            public a(@Px int i2, @Px int i3, int i4, @Nullable Interpolator interpolator) {
                this.f2617d = -1;
                this.f2619f = false;
                this.f2620g = 0;
                this.f2614a = i2;
                this.f2615b = i3;
                this.f2616c = i4;
                this.f2618e = interpolator;
            }

            boolean a() {
                return this.f2617d >= 0;
            }

            void a(RecyclerView recyclerView) {
                int i2 = this.f2617d;
                if (i2 >= 0) {
                    this.f2617d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i2);
                    this.f2619f = false;
                } else {
                    if (this.f2619f) {
                        b();
                        Interpolator interpolator = this.f2618e;
                        if (interpolator == null) {
                            int i3 = this.f2616c;
                            if (i3 == Integer.MIN_VALUE) {
                                recyclerView.mViewFlinger.b(this.f2614a, this.f2615b);
                            } else {
                                recyclerView.mViewFlinger.a(this.f2614a, this.f2615b, i3);
                            }
                        } else {
                            recyclerView.mViewFlinger.a(this.f2614a, this.f2615b, this.f2616c, interpolator);
                        }
                        this.f2620g++;
                        int i4 = this.f2620g;
                        this.f2619f = false;
                        return;
                    }
                    this.f2620g = 0;
                }
            }

            public void a(@Px int i2, @Px int i3, int i4, @Nullable Interpolator interpolator) {
                this.f2614a = i2;
                this.f2615b = i3;
                this.f2616c = i4;
                this.f2618e = interpolator;
                this.f2619f = true;
            }
        }

        /* loaded from: classes.dex */
        public interface b {
            @Nullable
            PointF a(int i2);
        }

        protected abstract void a(@Px int i2, @Px int i3, @NonNull w wVar, @NonNull a aVar);

        protected abstract void a(@NonNull View view, @NonNull w wVar, @NonNull a aVar);

        void a(RecyclerView recyclerView, m mVar) {
            if (this.f2613h) {
                String str = "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + HanziToPinyin.Token.SEPARATOR + "is intended to only be used once. You should create a new instance for each use.";
            }
            this.f2607b = recyclerView;
            this.f2608c = mVar;
            int i2 = this.f2606a;
            if (i2 != -1) {
                this.f2607b.mState.f2621a = i2;
                this.f2610e = true;
                this.f2609d = true;
                this.f2611f = b(c());
                f();
                this.f2607b.mViewFlinger.a();
                this.f2613h = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        @Nullable
        public m b() {
            return this.f2608c;
        }

        public void c(int i2) {
            this.f2606a = i2;
        }

        public boolean d() {
            return this.f2609d;
        }

        public boolean e() {
            return this.f2610e;
        }

        protected abstract void f();

        protected abstract void g();

        /* JADX INFO: Access modifiers changed from: protected */
        public final void h() {
            if (this.f2610e) {
                this.f2610e = false;
                g();
                this.f2607b.mState.f2621a = -1;
                this.f2611f = null;
                this.f2606a = -1;
                this.f2609d = false;
                this.f2608c.a(this);
                this.f2608c = null;
                this.f2607b = null;
            }
        }

        public View b(int i2) {
            return this.f2607b.mLayout.c(i2);
        }

        public int c() {
            return this.f2606a;
        }

        protected void b(View view) {
            if (a(view) == c()) {
                this.f2611f = view;
            }
        }

        @Nullable
        public PointF a(int i2) {
            Object b2 = b();
            if (b2 instanceof b) {
                return ((b) b2).a(i2);
            }
            String str = "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName();
            return null;
        }

        void a(int i2, int i3) {
            PointF a2;
            RecyclerView recyclerView = this.f2607b;
            if (!this.f2610e || this.f2606a == -1 || recyclerView == null) {
                h();
            }
            if (this.f2609d && this.f2611f == null && this.f2608c != null && (a2 = a(this.f2606a)) != null && (a2.x != 0.0f || a2.y != 0.0f)) {
                recyclerView.scrollStep((int) Math.signum(a2.x), (int) Math.signum(a2.y), null);
            }
            this.f2609d = false;
            View view = this.f2611f;
            if (view != null) {
                if (a(view) == this.f2606a) {
                    a(this.f2611f, recyclerView.mState, this.f2612g);
                    this.f2612g.a(recyclerView);
                    h();
                } else {
                    this.f2611f = null;
                }
            }
            if (this.f2610e) {
                a(i2, i3, recyclerView.mState, this.f2612g);
                boolean a3 = this.f2612g.a();
                this.f2612g.a(recyclerView);
                if (a3) {
                    if (this.f2610e) {
                        this.f2609d = true;
                        recyclerView.mViewFlinger.a();
                    } else {
                        h();
                    }
                }
            }
        }

        public int a(View view) {
            return this.f2607b.getChildLayoutPosition(view);
        }

        public int a() {
            return this.f2607b.mLayout.e();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(@NonNull PointF pointF) {
            float f2 = pointF.x;
            float f3 = pointF.y;
            float sqrt = (float) Math.sqrt((f2 * f2) + (f3 * f3));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class x {
        @Nullable
        public abstract View a(@NonNull s sVar, int i2, int i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class y implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private int f2633e;

        /* renamed from: f, reason: collision with root package name */
        private int f2634f;

        /* renamed from: g, reason: collision with root package name */
        OverScroller f2635g;

        /* renamed from: h, reason: collision with root package name */
        Interpolator f2636h = RecyclerView.sQuinticInterpolator;

        /* renamed from: i, reason: collision with root package name */
        private boolean f2637i = false;

        /* renamed from: j, reason: collision with root package name */
        private boolean f2638j = false;

        y() {
            this.f2635g = new OverScroller(RecyclerView.this.getContext(), RecyclerView.sQuinticInterpolator);
        }

        private void c() {
            this.f2638j = false;
            this.f2637i = true;
        }

        private void d() {
            this.f2637i = false;
            if (this.f2638j) {
                a();
            }
        }

        void a() {
            if (this.f2637i) {
                this.f2638j = true;
            } else {
                RecyclerView.this.removeCallbacks(this);
                ViewCompat.a(RecyclerView.this, this);
            }
        }

        public void b(int i2, int i3) {
            a(i2, i3, 0, 0);
        }

        /* JADX WARN: Code restructure failed: missing block: B:55:0x00eb, code lost:
        
            if (r8 > 0) goto L50;
         */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00f7  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00fe A[ADDED_TO_REGION] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 418
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.y.run():void");
        }

        private int b(int i2, int i3, int i4, int i5) {
            int i6;
            int abs = Math.abs(i2);
            int abs2 = Math.abs(i3);
            boolean z = abs > abs2;
            int sqrt = (int) Math.sqrt((i4 * i4) + (i5 * i5));
            int sqrt2 = (int) Math.sqrt((i2 * i2) + (i3 * i3));
            RecyclerView recyclerView = RecyclerView.this;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            int i7 = width / 2;
            float f2 = width;
            float f3 = i7;
            float a2 = f3 + (a(Math.min(1.0f, (sqrt2 * 1.0f) / f2)) * f3);
            if (sqrt > 0) {
                i6 = Math.round(Math.abs(a2 / sqrt) * 1000.0f) * 4;
            } else {
                if (!z) {
                    abs = abs2;
                }
                i6 = (int) (((abs / f2) + 1.0f) * 300.0f);
            }
            return Math.min(i6, 2000);
        }

        public void a(int i2, int i3) {
            RecyclerView.this.setScrollState(2);
            this.f2634f = 0;
            this.f2633e = 0;
            this.f2635g.fling(0, 0, i2, i3, e.b.b.a.a.a.c.ALL_INT, Integer.MAX_VALUE, e.b.b.a.a.a.c.ALL_INT, Integer.MAX_VALUE);
            a();
        }

        public void a(int i2, int i3, int i4, int i5) {
            a(i2, i3, b(i2, i3, i4, i5));
        }

        private float a(float f2) {
            return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
        }

        public void a(int i2, int i3, int i4) {
            a(i2, i3, i4, RecyclerView.sQuinticInterpolator);
        }

        public void a(int i2, int i3, Interpolator interpolator) {
            int b2 = b(i2, i3, 0, 0);
            if (interpolator == null) {
                interpolator = RecyclerView.sQuinticInterpolator;
            }
            a(i2, i3, b2, interpolator);
        }

        public void b() {
            RecyclerView.this.removeCallbacks(this);
            this.f2635g.abortAnimation();
        }

        public void a(int i2, int i3, int i4, Interpolator interpolator) {
            if (this.f2636h != interpolator) {
                this.f2636h = interpolator;
                this.f2635g = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.f2634f = 0;
            this.f2633e = 0;
            this.f2635g.startScroll(0, 0, i2, i3, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f2635g.computeScrollOffset();
            }
            a();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class z {
        private static final List<Object> s = Collections.emptyList();

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        public final View f2640a;

        /* renamed from: b, reason: collision with root package name */
        WeakReference<RecyclerView> f2641b;

        /* renamed from: j, reason: collision with root package name */
        int f2649j;
        RecyclerView r;

        /* renamed from: c, reason: collision with root package name */
        int f2642c = -1;

        /* renamed from: d, reason: collision with root package name */
        int f2643d = -1;

        /* renamed from: e, reason: collision with root package name */
        long f2644e = -1;

        /* renamed from: f, reason: collision with root package name */
        int f2645f = -1;

        /* renamed from: g, reason: collision with root package name */
        int f2646g = -1;

        /* renamed from: h, reason: collision with root package name */
        z f2647h = null;

        /* renamed from: i, reason: collision with root package name */
        z f2648i = null;

        /* renamed from: k, reason: collision with root package name */
        List<Object> f2650k = null;

        /* renamed from: l, reason: collision with root package name */
        List<Object> f2651l = null;
        private int m = 0;
        s n = null;
        boolean o = false;
        private int p = 0;

        @VisibleForTesting
        int q = -1;

        public z(@NonNull View view) {
            if (view != null) {
                this.f2640a = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        private void A() {
            if (this.f2650k == null) {
                this.f2650k = new ArrayList();
                this.f2651l = Collections.unmodifiableList(this.f2650k);
            }
        }

        void a(int i2, int i3, boolean z) {
            a(8);
            a(i3, z);
            this.f2642c = i2;
        }

        boolean b(int i2) {
            return (i2 & this.f2649j) != 0;
        }

        void c() {
            this.f2649j &= -33;
        }

        void d() {
            this.f2649j &= -257;
        }

        boolean e() {
            return (this.f2649j & 16) == 0 && ViewCompat.A(this.f2640a);
        }

        public final int f() {
            RecyclerView recyclerView = this.r;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionFor(this);
        }

        public final long g() {
            return this.f2644e;
        }

        public final int h() {
            return this.f2645f;
        }

        public final int i() {
            int i2 = this.f2646g;
            return i2 == -1 ? this.f2642c : i2;
        }

        public final int j() {
            return this.f2643d;
        }

        List<Object> k() {
            if ((this.f2649j & 1024) == 0) {
                List<Object> list = this.f2650k;
                if (list != null && list.size() != 0) {
                    return this.f2651l;
                }
                return s;
            }
            return s;
        }

        boolean l() {
            return (this.f2649j & 512) != 0 || n();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean m() {
            return (this.f2649j & 1) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean n() {
            return (this.f2649j & 4) != 0;
        }

        public final boolean o() {
            return (this.f2649j & 16) == 0 && !ViewCompat.A(this.f2640a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean p() {
            return (this.f2649j & 8) != 0;
        }

        boolean q() {
            return this.n != null;
        }

        boolean r() {
            return (this.f2649j & 256) != 0;
        }

        boolean s() {
            return (this.f2649j & 2) != 0;
        }

        boolean t() {
            return (this.f2649j & 2) != 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.f2642c + " id=" + this.f2644e + ", oldPos=" + this.f2643d + ", pLpos:" + this.f2646g);
            if (q()) {
                sb.append(" scrap ");
                sb.append(this.o ? "[changeScrap]" : "[attachedScrap]");
            }
            if (n()) {
                sb.append(" invalid");
            }
            if (!m()) {
                sb.append(" unbound");
            }
            if (t()) {
                sb.append(" update");
            }
            if (p()) {
                sb.append(" removed");
            }
            if (x()) {
                sb.append(" ignored");
            }
            if (r()) {
                sb.append(" tmpDetached");
            }
            if (!o()) {
                sb.append(" not recyclable(" + this.m + ")");
            }
            if (l()) {
                sb.append(" undefined adapter position");
            }
            if (this.f2640a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        void u() {
            this.f2649j = 0;
            this.f2642c = -1;
            this.f2643d = -1;
            this.f2644e = -1L;
            this.f2646g = -1;
            this.m = 0;
            this.f2647h = null;
            this.f2648i = null;
            b();
            this.p = 0;
            this.q = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        void v() {
            if (this.f2643d == -1) {
                this.f2643d = this.f2642c;
            }
        }

        boolean w() {
            return (this.f2649j & 16) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean x() {
            return (this.f2649j & 128) != 0;
        }

        void y() {
            this.n.c(this);
        }

        boolean z() {
            return (this.f2649j & 32) != 0;
        }

        void b() {
            List<Object> list = this.f2650k;
            if (list != null) {
                list.clear();
            }
            this.f2649j &= -1025;
        }

        void a(int i2, boolean z) {
            if (this.f2643d == -1) {
                this.f2643d = this.f2642c;
            }
            if (this.f2646g == -1) {
                this.f2646g = this.f2642c;
            }
            if (z) {
                this.f2646g += i2;
            }
            this.f2642c += i2;
            if (this.f2640a.getLayoutParams() != null) {
                ((LayoutParams) this.f2640a.getLayoutParams()).f2561c = true;
            }
        }

        void b(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.p);
            this.p = 0;
        }

        void a() {
            this.f2643d = -1;
            this.f2646g = -1;
        }

        void a(s sVar, boolean z) {
            this.n = sVar;
            this.o = z;
        }

        void a(int i2, int i3) {
            this.f2649j = (i2 & i3) | (this.f2649j & (i3 ^ (-1)));
        }

        void a(int i2) {
            this.f2649j = i2 | this.f2649j;
        }

        void a(Object obj) {
            if (obj == null) {
                a(1024);
            } else if ((1024 & this.f2649j) == 0) {
                A();
                this.f2650k.add(obj);
            }
        }

        void a(RecyclerView recyclerView) {
            int i2 = this.q;
            if (i2 != -1) {
                this.p = i2;
            } else {
                this.p = ViewCompat.l(this.f2640a);
            }
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        public final void a(boolean z) {
            int i2 = this.m;
            this.m = z ? i2 - 1 : i2 + 1;
            int i3 = this.m;
            if (i3 < 0) {
                this.m = 0;
                String str = "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this;
                return;
            }
            if (!z && i3 == 1) {
                this.f2649j |= 16;
            } else if (z && this.m == 0) {
                this.f2649j &= -17;
            }
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        FORCE_INVALIDATE_DISPLAY_LIST = i2 == 18 || i2 == 19 || i2 == 20;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = Build.VERSION.SDK_INT >= 23;
        POST_UPDATES_ON_ANIMATION = Build.VERSION.SDK_INT >= 16;
        ALLOW_THREAD_GAP_WORK = Build.VERSION.SDK_INT >= 21;
        V = Build.VERSION.SDK_INT <= 15;
        W = Build.VERSION.SDK_INT <= 15;
        Class<?> cls = Integer.TYPE;
        a0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new c();
    }

    public RecyclerView(@NonNull Context context) {
        this(context, null);
    }

    private void a(Context context, String str, AttributeSet attributeSet, int i2, int i3) {
        ClassLoader classLoader;
        Constructor constructor;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            String a2 = a(context, trim);
            try {
                if (isInEditMode()) {
                    classLoader = getClass().getClassLoader();
                } else {
                    classLoader = context.getClassLoader();
                }
                Class<? extends U> asSubclass = classLoader.loadClass(a2).asSubclass(m.class);
                Object[] objArr = null;
                try {
                    constructor = asSubclass.getConstructor(a0);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), Integer.valueOf(i3)};
                } catch (NoSuchMethodException e2) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e3) {
                        e3.initCause(e2);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + a2, e3);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((m) constructor.newInstance(objArr));
            } catch (ClassCastException e4) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + a2, e4);
            } catch (ClassNotFoundException e5) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + a2, e5);
            } catch (IllegalAccessException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + a2, e6);
            } catch (InstantiationException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + a2, e7);
            } catch (InvocationTargetException e8) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + a2, e8);
            }
        }
    }

    private boolean b(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.f2547i = null;
        }
        int size = this.f2546h.size();
        for (int i2 = 0; i2 < size; i2++) {
            p pVar = this.f2546h.get(i2);
            if (pVar.b(this, motionEvent) && action != 3) {
                this.f2547i = pVar;
                return true;
            }
        }
        return false;
    }

    private void c(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.w) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.w = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.A = x2;
            this.y = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.B = y2;
            this.z = y2;
        }
    }

    static void clearNestedRecyclerViewIfNotNested(@NonNull z zVar) {
        WeakReference<RecyclerView> weakReference = zVar.f2641b;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == zVar.f2640a) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            zVar.f2641b = null;
        }
    }

    private void d() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.b();
        this.mState.f2626f = this.mAdapter.a();
        w wVar = this.mState;
        wVar.f2624d = 0;
        wVar.f2628h = false;
        this.mLayout.e(this.mRecycler, wVar);
        w wVar2 = this.mState;
        wVar2.f2627g = false;
        this.f2544f = null;
        wVar2.f2631k = wVar2.f2631k && this.mItemAnimator != null;
        this.mState.f2625e = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void e() {
        this.mState.a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        w wVar = this.mState;
        wVar.f2625e = 1;
        if (wVar.f2631k) {
            for (int a2 = this.mChildHelper.a() - 1; a2 >= 0; a2--) {
                z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.c(a2));
                if (!childViewHolderInt.x()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    ItemAnimator.c a3 = this.mItemAnimator.a(this.mState, childViewHolderInt);
                    z a4 = this.mViewInfoStore.a(changedHolderKey);
                    if (a4 != null && !a4.x()) {
                        boolean b2 = this.mViewInfoStore.b(a4);
                        boolean b3 = this.mViewInfoStore.b(childViewHolderInt);
                        if (b2 && a4 == childViewHolderInt) {
                            this.mViewInfoStore.b(childViewHolderInt, a3);
                        } else {
                            ItemAnimator.c f2 = this.mViewInfoStore.f(a4);
                            this.mViewInfoStore.b(childViewHolderInt, a3);
                            ItemAnimator.c e2 = this.mViewInfoStore.e(childViewHolderInt);
                            if (f2 == null) {
                                a(changedHolderKey, childViewHolderInt, a4);
                            } else {
                                a(a4, childViewHolderInt, f2, e2, b2, b3);
                            }
                        }
                    } else {
                        this.mViewInfoStore.b(childViewHolderInt, a3);
                    }
                }
            }
            this.mViewInfoStore.a(this.S);
        }
        this.mLayout.c(this.mRecycler);
        w wVar2 = this.mState;
        wVar2.f2623c = wVar2.f2626f;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        wVar2.f2631k = false;
        wVar2.f2632l = false;
        this.mLayout.f2579h = false;
        ArrayList<z> arrayList = this.mRecycler.f2597b;
        if (arrayList != null) {
            arrayList.clear();
        }
        m mVar = this.mLayout;
        if (mVar.n) {
            mVar.m = 0;
            mVar.n = false;
            this.mRecycler.j();
        }
        this.mLayout.g(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mViewInfoStore.a();
        int[] iArr = this.N;
        if (a(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        l();
        n();
    }

    @Nullable
    private View f() {
        z findViewHolderForAdapterPosition;
        int i2 = this.mState.m;
        if (i2 == -1) {
            i2 = 0;
        }
        int a2 = this.mState.a();
        for (int i3 = i2; i3 < a2; i3++) {
            z findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
            if (findViewHolderForAdapterPosition2 == null) {
                break;
            }
            if (findViewHolderForAdapterPosition2.f2640a.hasFocusable()) {
                return findViewHolderForAdapterPosition2.f2640a;
            }
        }
        int min = Math.min(a2, i2);
        do {
            min--;
            if (min < 0 || (findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(min)) == null) {
                return null;
            }
        } while (!findViewHolderForAdapterPosition.f2640a.hasFocusable());
        return findViewHolderForAdapterPosition.f2640a;
    }

    @Nullable
    static RecyclerView findNestedRecyclerView(@NonNull View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView findNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i2));
            if (findNestedRecyclerView != null) {
                return findNestedRecyclerView;
            }
        }
        return null;
    }

    private boolean g() {
        int a2 = this.mChildHelper.a();
        for (int i2 = 0; i2 < a2; i2++) {
            z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.c(i2));
            if (childViewHolderInt != null && !childViewHolderInt.x() && childViewHolderInt.s()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f2559a;
    }

    static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.f2560b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    private androidx.core.view.n getScrollingChildHelper() {
        if (this.O == null) {
            this.O = new androidx.core.view.n(this);
        }
        return this.O;
    }

    @SuppressLint({"InlinedApi"})
    private void h() {
        if (ViewCompat.m(this) == 0) {
            ViewCompat.h(this, 8);
        }
    }

    private void i() {
        this.mChildHelper = new androidx.recyclerview.widget.b(new e());
    }

    private boolean j() {
        return this.mItemAnimator != null && this.mLayout.C();
    }

    private void k() {
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.f();
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.d(this);
            }
        }
        if (j()) {
            this.mAdapterHelper.e();
        } else {
            this.mAdapterHelper.b();
        }
        boolean z2 = false;
        boolean z3 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f2631k = this.mFirstLayoutComplete && this.mItemAnimator != null && (this.mDataSetHasChangedAfterLayout || z3 || this.mLayout.f2579h) && (!this.mDataSetHasChangedAfterLayout || this.mAdapter.b());
        w wVar = this.mState;
        if (wVar.f2631k && z3 && !this.mDataSetHasChangedAfterLayout && j()) {
            z2 = true;
        }
        wVar.f2632l = z2;
    }

    private void l() {
        View view;
        if (!this.I || this.mAdapter == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (W && (focusedChild.getParent() == null || !focusedChild.hasFocus())) {
                if (this.mChildHelper.a() == 0) {
                    requestFocus();
                    return;
                }
            } else if (!this.mChildHelper.c(focusedChild)) {
                return;
            }
        }
        View view2 = null;
        z findViewHolderForItemId = (this.mState.n == -1 || !this.mAdapter.b()) ? null : findViewHolderForItemId(this.mState.n);
        if (findViewHolderForItemId != null && !this.mChildHelper.c(findViewHolderForItemId.f2640a) && findViewHolderForItemId.f2640a.hasFocusable()) {
            view2 = findViewHolderForItemId.f2640a;
        } else if (this.mChildHelper.a() > 0) {
            view2 = f();
        }
        if (view2 != null) {
            int i2 = this.mState.o;
            if (i2 == -1 || (view = view2.findViewById(i2)) == null || !view.isFocusable()) {
                view = view2;
            }
            view.requestFocus();
        }
    }

    private void m() {
        boolean z2;
        EdgeEffect edgeEffect = this.r;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z2 = this.r.isFinished();
        } else {
            z2 = false;
        }
        EdgeEffect edgeEffect2 = this.s;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 |= this.s.isFinished();
        }
        EdgeEffect edgeEffect3 = this.t;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z2 |= this.t.isFinished();
        }
        EdgeEffect edgeEffect4 = this.u;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z2 |= this.u.isFinished();
        }
        if (z2) {
            ViewCompat.H(this);
        }
    }

    private void n() {
        w wVar = this.mState;
        wVar.n = -1L;
        wVar.m = -1;
        wVar.o = -1;
    }

    private void o() {
        VelocityTracker velocityTracker = this.x;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        m();
    }

    private void p() {
        int f2;
        View focusedChild = (this.I && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        z findContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (findContainingViewHolder == null) {
            n();
            return;
        }
        this.mState.n = this.mAdapter.b() ? findContainingViewHolder.g() : -1L;
        w wVar = this.mState;
        if (this.mDataSetHasChangedAfterLayout) {
            f2 = -1;
        } else {
            f2 = findContainingViewHolder.p() ? findContainingViewHolder.f2643d : findContainingViewHolder.f();
        }
        wVar.m = f2;
        this.mState.o = a(findContainingViewHolder.f2640a);
    }

    private void q() {
        this.mViewFlinger.b();
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.B();
        }
    }

    void absorbGlows(int i2, int i3) {
        if (i2 < 0) {
            ensureLeftGlow();
            this.r.onAbsorb(-i2);
        } else if (i2 > 0) {
            ensureRightGlow();
            this.t.onAbsorb(i2);
        }
        if (i3 < 0) {
            ensureTopGlow();
            this.s.onAbsorb(-i3);
        } else if (i3 > 0) {
            ensureBottomGlow();
            this.u.onAbsorb(i3);
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        ViewCompat.H(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        m mVar = this.mLayout;
        if (mVar == null || !mVar.a(this, arrayList, i2, i3)) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    public void addItemDecoration(@NonNull l lVar, int i2) {
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.mItemDecorations.add(lVar);
        } else {
            this.mItemDecorations.add(i2, lVar);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(@NonNull n nVar) {
        if (this.n == null) {
            this.n = new ArrayList();
        }
        this.n.add(nVar);
    }

    public void addOnItemTouchListener(@NonNull p pVar) {
        this.f2546h.add(pVar);
    }

    public void addOnScrollListener(@NonNull q qVar) {
        if (this.K == null) {
            this.K = new ArrayList();
        }
        this.K.add(qVar);
    }

    void animateAppearance(@NonNull z zVar, @Nullable ItemAnimator.c cVar, @NonNull ItemAnimator.c cVar2) {
        zVar.a(false);
        if (this.mItemAnimator.a(zVar, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    void animateDisappearance(@NonNull z zVar, @NonNull ItemAnimator.c cVar, @Nullable ItemAnimator.c cVar2) {
        a(zVar);
        zVar.a(false);
        if (this.mItemAnimator.b(zVar, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str == null) {
            throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling" + exceptionLabel());
        }
        throw new IllegalStateException(str + exceptionLabel());
    }

    void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + exceptionLabel());
            }
            throw new IllegalStateException(str);
        }
        if (this.p > 0) {
            new IllegalStateException("" + exceptionLabel());
        }
    }

    boolean canReuseUpdatedViewHolder(z zVar) {
        ItemAnimator itemAnimator = this.mItemAnimator;
        return itemAnimator == null || itemAnimator.a(zVar, zVar.k());
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.mLayout.a((LayoutParams) layoutParams);
    }

    void clearOldPositions() {
        int b2 = this.mChildHelper.b();
        for (int i2 = 0; i2 < b2; i2++) {
            z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (!childViewHolderInt.x()) {
                childViewHolderInt.a();
            }
        }
        this.mRecycler.b();
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<n> list = this.n;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<q> list = this.K;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.a()) {
            return this.mLayout.a(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.a()) {
            return this.mLayout.b(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.a()) {
            return this.mLayout.c(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.b()) {
            return this.mLayout.d(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.b()) {
            return this.mLayout.e(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        m mVar = this.mLayout;
        if (mVar != null && mVar.b()) {
            return this.mLayout.f(this.mState);
        }
        return 0;
    }

    void considerReleasingGlowsOnScroll(int i2, int i3) {
        boolean z2;
        EdgeEffect edgeEffect = this.r;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            z2 = false;
        } else {
            this.r.onRelease();
            z2 = this.r.isFinished();
        }
        EdgeEffect edgeEffect2 = this.t;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.t.onRelease();
            z2 |= this.t.isFinished();
        }
        EdgeEffect edgeEffect3 = this.s;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.s.onRelease();
            z2 |= this.s.isFinished();
        }
        EdgeEffect edgeEffect4 = this.u;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.u.onRelease();
            z2 |= this.u.isFinished();
        }
        if (z2) {
            ViewCompat.H(this);
        }
    }

    void consumePendingUpdateOperations() {
        if (this.mFirstLayoutComplete && !this.mDataSetHasChangedAfterLayout) {
            if (this.mAdapterHelper.c()) {
                if (this.mAdapterHelper.c(4) && !this.mAdapterHelper.c(11)) {
                    a.i.k.b.a("RV PartialInvalidate");
                    startInterceptRequestLayout();
                    onEnterLayoutOrScroll();
                    this.mAdapterHelper.e();
                    if (!this.mLayoutWasDefered) {
                        if (g()) {
                            dispatchLayout();
                        } else {
                            this.mAdapterHelper.a();
                        }
                    }
                    stopInterceptRequestLayout(true);
                    onExitLayoutOrScroll();
                    a.i.k.b.a();
                    return;
                }
                if (this.mAdapterHelper.c()) {
                    a.i.k.b.a("RV FullInvalidate");
                    dispatchLayout();
                    a.i.k.b.a();
                    return;
                }
                return;
            }
            return;
        }
        a.i.k.b.a("RV FullInvalidate");
        dispatchLayout();
        a.i.k.b.a();
    }

    void defaultOnMeasure(int i2, int i3) {
        setMeasuredDimension(m.a(i2, getPaddingLeft() + getPaddingRight(), ViewCompat.p(this)), m.a(i3, getPaddingTop() + getPaddingBottom(), ViewCompat.o(this)));
    }

    void dispatchChildAttached(View view) {
        z childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        g gVar = this.mAdapter;
        if (gVar != null && childViewHolderInt != null) {
            gVar.b((g) childViewHolderInt);
        }
        List<n> list = this.n;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.n.get(size).b(view);
            }
        }
    }

    void dispatchChildDetached(View view) {
        z childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        g gVar = this.mAdapter;
        if (gVar != null && childViewHolderInt != null) {
            gVar.c(childViewHolderInt);
        }
        List<n> list = this.n;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.n.get(size).a(view);
            }
        }
    }

    void dispatchLayout() {
        if (this.mAdapter == null || this.mLayout == null) {
            return;
        }
        w wVar = this.mState;
        wVar.f2630j = false;
        if (wVar.f2625e == 1) {
            c();
            this.mLayout.e(this);
            d();
        } else if (!this.mAdapterHelper.d() && this.mLayout.q() == getWidth() && this.mLayout.h() == getHeight()) {
            this.mLayout.e(this);
        } else {
            this.mLayout.e(this);
            d();
        }
        e();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return getScrollingChildHelper().a(f2, f3, z2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().a(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr);
    }

    void dispatchOnScrollStateChanged(int i2) {
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.g(i2);
        }
        onScrollStateChanged(i2);
        q qVar = this.J;
        if (qVar != null) {
            qVar.a(this, i2);
        }
        List<q> list = this.K;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.K.get(size).a(this, i2);
            }
        }
    }

    void dispatchOnScrolled(int i2, int i3) {
        this.p++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        onScrolled(i2, i3);
        q qVar = this.J;
        if (qVar != null) {
            qVar.a(this, i2, i3);
        }
        List<q> list = this.K;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.K.get(size).a(this, i2, i3);
            }
        }
        this.p--;
    }

    void dispatchPendingImportantForAccessibilityChanges() {
        int i2;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            z zVar = this.mPendingAccessibilityImportanceChange.get(size);
            if (zVar.f2640a.getParent() == this && !zVar.x() && (i2 = zVar.q) != -1) {
                ViewCompat.g(zVar.f2640a, i2);
                zVar.q = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z2;
        boolean z3;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z4 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).b(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.r;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.r;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.s;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.s;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.t;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.t;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.u;
        if (edgeEffect7 == null || edgeEffect7.isFinished()) {
            z3 = z2;
        } else {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.u;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z4 = true;
            }
            z3 = z4 | z2;
            canvas.restoreToCount(save4);
        }
        if (!z3 && this.mItemAnimator != null && this.mItemDecorations.size() > 0 && this.mItemAnimator.g()) {
            z3 = true;
        }
        if (z3) {
            ViewCompat.H(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    void ensureBottomGlow() {
        if (this.u != null) {
            return;
        }
        this.u = this.q.a(this, 3);
        if (this.mClipToPadding) {
            this.u.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            this.u.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void ensureLeftGlow() {
        if (this.r != null) {
            return;
        }
        this.r = this.q.a(this, 0);
        if (this.mClipToPadding) {
            this.r.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            this.r.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void ensureRightGlow() {
        if (this.t != null) {
            return;
        }
        this.t = this.q.a(this, 2);
        if (this.mClipToPadding) {
            this.t.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            this.t.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void ensureTopGlow() {
        if (this.s != null) {
            return;
        }
        this.s = this.q.a(this, 1);
        if (this.mClipToPadding) {
            this.s.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            this.s.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    String exceptionLabel() {
        return HanziToPinyin.Token.SEPARATOR + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    final void fillRemainingScrollValues(w wVar) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.mViewFlinger.f2635g;
            wVar.p = overScroller.getFinalX() - overScroller.getCurrX();
            wVar.q = overScroller.getFinalY() - overScroller.getCurrY();
        } else {
            wVar.p = 0;
            wVar.q = 0;
        }
    }

    @Nullable
    public View findChildViewUnder(float f2, float f3) {
        for (int a2 = this.mChildHelper.a() - 1; a2 >= 0; a2--) {
            View c2 = this.mChildHelper.c(a2);
            float translationX = c2.getTranslationX();
            float translationY = c2.getTranslationY();
            if (f2 >= c2.getLeft() + translationX && f2 <= c2.getRight() + translationX && f3 >= c2.getTop() + translationY && f3 <= c2.getBottom() + translationY) {
                return c2;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
    
        return r3;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View findContainingItemView(@androidx.annotation.NonNull android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            goto L18
        L17:
            r3 = 0
        L18:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findContainingItemView(android.view.View):android.view.View");
    }

    @Nullable
    public z findContainingViewHolder(@NonNull View view) {
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(findContainingItemView);
    }

    @Nullable
    public z findViewHolderForAdapterPosition(int i2) {
        z zVar = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int b2 = this.mChildHelper.b();
        for (int i3 = 0; i3 < b2; i3++) {
            z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i3));
            if (childViewHolderInt != null && !childViewHolderInt.p() && getAdapterPositionFor(childViewHolderInt) == i2) {
                if (!this.mChildHelper.c(childViewHolderInt.f2640a)) {
                    return childViewHolderInt;
                }
                zVar = childViewHolderInt;
            }
        }
        return zVar;
    }

    public z findViewHolderForItemId(long j2) {
        g gVar = this.mAdapter;
        z zVar = null;
        if (gVar != null && gVar.b()) {
            int b2 = this.mChildHelper.b();
            for (int i2 = 0; i2 < b2; i2++) {
                z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
                if (childViewHolderInt != null && !childViewHolderInt.p() && childViewHolderInt.g() == j2) {
                    if (!this.mChildHelper.c(childViewHolderInt.f2640a)) {
                        return childViewHolderInt;
                    }
                    zVar = childViewHolderInt;
                }
            }
        }
        return zVar;
    }

    @Nullable
    public z findViewHolderForLayoutPosition(int i2) {
        return findViewHolderForPosition(i2, false);
    }

    @Nullable
    @Deprecated
    public z findViewHolderForPosition(int i2) {
        return findViewHolderForPosition(i2, false);
    }

    public boolean fling(int i2, int i3) {
        m mVar = this.mLayout;
        if (mVar == null || this.mLayoutFrozen) {
            return false;
        }
        boolean a2 = mVar.a();
        boolean b2 = this.mLayout.b();
        if (!a2 || Math.abs(i2) < this.E) {
            i2 = 0;
        }
        if (!b2 || Math.abs(i3) < this.E) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        float f2 = i2;
        float f3 = i3;
        if (!dispatchNestedPreFling(f2, f3)) {
            boolean z2 = a2 || b2;
            dispatchNestedFling(f2, f3, z2);
            o oVar = this.D;
            if (oVar != null && oVar.a(i2, i3)) {
                return true;
            }
            if (z2) {
                int i4 = a2 ? 1 : 0;
                if (b2) {
                    i4 |= 2;
                }
                startNestedScroll(i4, 1);
                int i5 = this.F;
                int max = Math.max(-i5, Math.min(i2, i5));
                int i6 = this.F;
                this.mViewFlinger.a(max, Math.max(-i6, Math.min(i3, i6)));
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        View view2;
        boolean z2;
        View d2 = this.mLayout.d(view, i2);
        if (d2 != null) {
            return d2;
        }
        boolean z3 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutFrozen) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z3 && (i2 == 2 || i2 == 1)) {
            if (this.mLayout.b()) {
                int i3 = i2 == 2 ? 130 : 33;
                z2 = focusFinder.findNextFocus(this, view, i3) == null;
                if (V) {
                    i2 = i3;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.mLayout.a()) {
                int i4 = (this.mLayout.j() == 1) ^ (i2 == 2) ? 66 : 17;
                z2 = focusFinder.findNextFocus(this, view, i4) == null;
                if (V) {
                    i2 = i4;
                }
            }
            if (z2) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.a(view, i2, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i2);
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i2);
            if (findNextFocus == null && z3) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                view2 = this.mLayout.a(view, i2, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            } else {
                view2 = findNextFocus;
            }
        }
        if (view2 == null || view2.hasFocusable()) {
            return a(view, view2, i2) ? view2 : super.focusSearch(view, i2);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i2);
        }
        a(view2, (View) null);
        return view;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        m mVar = this.mLayout;
        if (mVar != null) {
            return mVar.c();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        m mVar = this.mLayout;
        if (mVar != null) {
            return mVar.a(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Nullable
    public g getAdapter() {
        return this.mAdapter;
    }

    int getAdapterPositionFor(z zVar) {
        if (zVar.b(524) || !zVar.m()) {
            return -1;
        }
        return this.mAdapterHelper.a(zVar.f2642c);
    }

    @Override // android.view.View
    public int getBaseline() {
        m mVar = this.mLayout;
        if (mVar != null) {
            return mVar.d();
        }
        return super.getBaseline();
    }

    long getChangedHolderKey(z zVar) {
        return this.mAdapter.b() ? zVar.g() : zVar.f2642c;
    }

    public int getChildAdapterPosition(@NonNull View view) {
        z childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.f();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        j jVar = this.M;
        if (jVar == null) {
            return super.getChildDrawingOrder(i2, i3);
        }
        return jVar.a(i2, i3);
    }

    public long getChildItemId(@NonNull View view) {
        z childViewHolderInt;
        g gVar = this.mAdapter;
        if (gVar == null || !gVar.b() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.g();
    }

    public int getChildLayoutPosition(@NonNull View view) {
        z childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.i();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(@NonNull View view) {
        return getChildAdapterPosition(view);
    }

    public z getChildViewHolder(@NonNull View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return getChildViewHolderInt(view);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    @Nullable
    public androidx.recyclerview.widget.k getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    @NonNull
    public EdgeEffectFactory getEdgeEffectFactory() {
        return this.q;
    }

    @Nullable
    public ItemAnimator getItemAnimator() {
        return this.mItemAnimator;
    }

    Rect getItemDecorInsetsForChild(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.f2561c) {
            return layoutParams.f2560b;
        }
        if (this.mState.d() && (layoutParams.b() || layoutParams.d())) {
            return layoutParams.f2560b;
        }
        Rect rect = layoutParams.f2560b;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i2).a(this.mTempRect, view, this, this.mState);
            int i3 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i3 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.f2561c = false;
        return rect;
    }

    @NonNull
    public l getItemDecorationAt(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 >= 0 && i2 < itemDecorationCount) {
            return this.mItemDecorations.get(i2);
        }
        throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    @Nullable
    public m getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.F;
    }

    public int getMinFlingVelocity() {
        return this.E;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    @Nullable
    public o getOnFlingListener() {
        return this.D;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.I;
    }

    @NonNull
    public r getRecycledViewPool() {
        return this.mRecycler.d();
    }

    public int getScrollState() {
        return this.v;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().a();
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.c();
    }

    void initAdapterManager() {
        this.mAdapterHelper = new androidx.recyclerview.widget.a(new f());
    }

    @VisibleForTesting
    void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new androidx.recyclerview.widget.d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(a.o.a.fastscroll_default_thickness), resources.getDimensionPixelSize(a.o.a.fastscroll_minimum_range), resources.getDimensionPixelOffset(a.o.a.fastscroll_margin));
        } else {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + exceptionLabel());
        }
    }

    void invalidateGlows() {
        this.u = null;
        this.s = null;
        this.t = null;
        this.r = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.a("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.m;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        ItemAnimator itemAnimator = this.mItemAnimator;
        return itemAnimator != null && itemAnimator.g();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.o > 0;
    }

    public boolean isLayoutFrozen() {
        return this.mLayoutFrozen;
    }

    @Override // android.view.View, androidx.core.view.m
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().b();
    }

    void jumpToPositionForSmoothScroller(int i2) {
        m mVar = this.mLayout;
        if (mVar == null) {
            return;
        }
        mVar.i(i2);
        awakenScrollBars();
    }

    void markItemDecorInsetsDirty() {
        int b2 = this.mChildHelper.b();
        for (int i2 = 0; i2 < b2; i2++) {
            ((LayoutParams) this.mChildHelper.d(i2).getLayoutParams()).f2561c = true;
        }
        this.mRecycler.g();
    }

    void markKnownViewsInvalid() {
        int b2 = this.mChildHelper.b();
        for (int i2 = 0; i2 < b2; i2++) {
            z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (childViewHolderInt != null && !childViewHolderInt.x()) {
                childViewHolderInt.a(6);
            }
        }
        markItemDecorInsetsDirty();
        this.mRecycler.h();
    }

    public void offsetChildrenHorizontal(@Px int i2) {
        int a2 = this.mChildHelper.a();
        for (int i3 = 0; i3 < a2; i3++) {
            this.mChildHelper.c(i3).offsetLeftAndRight(i2);
        }
    }

    public void offsetChildrenVertical(@Px int i2) {
        int a2 = this.mChildHelper.a();
        for (int i3 = 0; i3 < a2; i3++) {
            this.mChildHelper.c(i3).offsetTopAndBottom(i2);
        }
    }

    void offsetPositionRecordsForInsert(int i2, int i3) {
        int b2 = this.mChildHelper.b();
        for (int i4 = 0; i4 < b2; i4++) {
            z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i4));
            if (childViewHolderInt != null && !childViewHolderInt.x() && childViewHolderInt.f2642c >= i2) {
                childViewHolderInt.a(i3, false);
                this.mState.f2627g = true;
            }
        }
        this.mRecycler.a(i2, i3);
        requestLayout();
    }

    void offsetPositionRecordsForMove(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int b2 = this.mChildHelper.b();
        if (i2 < i3) {
            i5 = i2;
            i4 = i3;
            i6 = -1;
        } else {
            i4 = i2;
            i5 = i3;
            i6 = 1;
        }
        for (int i8 = 0; i8 < b2; i8++) {
            z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i8));
            if (childViewHolderInt != null && (i7 = childViewHolderInt.f2642c) >= i5 && i7 <= i4) {
                if (i7 == i2) {
                    childViewHolderInt.a(i3 - i2, false);
                } else {
                    childViewHolderInt.a(i6, false);
                }
                this.mState.f2627g = true;
            }
        }
        this.mRecycler.b(i2, i3);
        requestLayout();
    }

    void offsetPositionRecordsForRemove(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int b2 = this.mChildHelper.b();
        for (int i5 = 0; i5 < b2; i5++) {
            z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i5));
            if (childViewHolderInt != null && !childViewHolderInt.x()) {
                int i6 = childViewHolderInt.f2642c;
                if (i6 >= i4) {
                    childViewHolderInt.a(-i3, z2);
                    this.mState.f2627g = true;
                } else if (i6 >= i2) {
                    childViewHolderInt.a(i2 - 1, -i3, z2);
                    this.mState.f2627g = true;
                }
            }
        }
        this.mRecycler.a(i2, i3, z2);
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004f, code lost:
    
        if (r0 >= 30.0f) goto L22;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onAttachedToWindow() {
        /*
            r4 = this;
            super.onAttachedToWindow()
            r0 = 0
            r4.o = r0
            r1 = 1
            r4.mIsAttached = r1
            boolean r2 = r4.mFirstLayoutComplete
            if (r2 == 0) goto L14
            boolean r2 = r4.isLayoutRequested()
            if (r2 != 0) goto L14
            goto L15
        L14:
            r1 = 0
        L15:
            r4.mFirstLayoutComplete = r1
            androidx.recyclerview.widget.RecyclerView$m r1 = r4.mLayout
            if (r1 == 0) goto L1e
            r1.a(r4)
        L1e:
            r4.mPostedAnimatorRunner = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.ALLOW_THREAD_GAP_WORK
            if (r0 == 0) goto L67
            java.lang.ThreadLocal<androidx.recyclerview.widget.e> r0 = androidx.recyclerview.widget.e.f2767i
            java.lang.Object r0 = r0.get()
            androidx.recyclerview.widget.e r0 = (androidx.recyclerview.widget.e) r0
            r4.mGapWorker = r0
            androidx.recyclerview.widget.e r0 = r4.mGapWorker
            if (r0 != 0) goto L62
            androidx.recyclerview.widget.e r0 = new androidx.recyclerview.widget.e
            r0.<init>()
            r4.mGapWorker = r0
            android.view.Display r0 = androidx.core.view.ViewCompat.i(r4)
            r1 = 1114636288(0x42700000, float:60.0)
            boolean r2 = r4.isInEditMode()
            if (r2 != 0) goto L52
            if (r0 == 0) goto L52
            float r0 = r0.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 < 0) goto L52
            goto L54
        L52:
            r0 = 1114636288(0x42700000, float:60.0)
        L54:
            androidx.recyclerview.widget.e r1 = r4.mGapWorker
            r2 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r2 = r2 / r0
            long r2 = (long) r2
            r1.f2771g = r2
            java.lang.ThreadLocal<androidx.recyclerview.widget.e> r0 = androidx.recyclerview.widget.e.f2767i
            r0.set(r1)
        L62:
            androidx.recyclerview.widget.e r0 = r4.mGapWorker
            r0.a(r4)
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    public void onChildAttachedToWindow(@NonNull View view) {
    }

    public void onChildDetachedFromWindow(@NonNull View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        androidx.recyclerview.widget.e eVar;
        super.onDetachedFromWindow();
        ItemAnimator itemAnimator = this.mItemAnimator;
        if (itemAnimator != null) {
            itemAnimator.b();
        }
        stopScroll();
        this.mIsAttached = false;
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.a(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.R);
        this.mViewInfoStore.b();
        if (!ALLOW_THREAD_GAP_WORK || (eVar = this.mGapWorker) == null) {
            return;
        }
        eVar.b(this);
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).a(canvas, this, this.mState);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onEnterLayoutOrScroll() {
        this.o++;
    }

    void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$m r0 = r5.mLayout
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.mLayoutFrozen
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L77
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3c
            androidx.recyclerview.widget.RecyclerView$m r0 = r5.mLayout
            boolean r0 = r0.b()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = 0
        L2d:
            androidx.recyclerview.widget.RecyclerView$m r3 = r5.mLayout
            boolean r3 = r3.a()
            if (r3 == 0) goto L61
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L62
        L3c:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L60
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            androidx.recyclerview.widget.RecyclerView$m r3 = r5.mLayout
            boolean r3 = r3.b()
            if (r3 == 0) goto L55
            float r0 = -r0
            goto L61
        L55:
            androidx.recyclerview.widget.RecyclerView$m r3 = r5.mLayout
            boolean r3 = r3.a()
            if (r3 == 0) goto L60
            r3 = r0
            r0 = 0
            goto L62
        L60:
            r0 = 0
        L61:
            r3 = 0
        L62:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6a
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L77
        L6a:
            float r2 = r5.G
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.H
            float r0 = r0 * r3
            int r0 = (int) r0
            r5.scrollByInternal(r2, r0, r6)
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (this.mLayoutFrozen) {
            return false;
        }
        if (b(motionEvent)) {
            a();
            return true;
        }
        m mVar = this.mLayout;
        if (mVar == null) {
            return false;
        }
        boolean a2 = mVar.a();
        boolean b2 = this.mLayout.b();
        if (this.x == null) {
            this.x = VelocityTracker.obtain();
        }
        this.x.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f2549k) {
                this.f2549k = false;
            }
            this.w = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.A = x2;
            this.y = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.B = y2;
            this.z = y2;
            if (this.v == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
            int[] iArr = this.Q;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = a2 ? 1 : 0;
            if (b2) {
                i2 |= 2;
            }
            startNestedScroll(i2, 0);
        } else if (actionMasked == 1) {
            this.x.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.w);
            if (findPointerIndex < 0) {
                String str = "Error processing scroll; pointer index for id " + this.w + " not found. Did any MotionEvents get skipped?";
                return false;
            }
            int x3 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.v != 1) {
                int i3 = x3 - this.y;
                int i4 = y3 - this.z;
                if (!a2 || Math.abs(i3) <= this.C) {
                    z2 = false;
                } else {
                    this.A = x3;
                    z2 = true;
                }
                if (b2 && Math.abs(i4) > this.C) {
                    this.B = y3;
                    z2 = true;
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            a();
        } else if (actionMasked == 5) {
            this.w = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.A = x4;
            this.y = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.B = y4;
            this.z = y4;
        } else if (actionMasked == 6) {
            c(motionEvent);
        }
        return this.v == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        a.i.k.b.a("RV OnLayout");
        dispatchLayout();
        a.i.k.b.a();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        m mVar = this.mLayout;
        if (mVar == null) {
            defaultOnMeasure(i2, i3);
            return;
        }
        boolean z2 = false;
        if (mVar.u()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.mLayout.a(this.mRecycler, this.mState, i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z2 = true;
            }
            if (z2 || this.mAdapter == null) {
                return;
            }
            if (this.mState.f2625e == 1) {
                c();
            }
            this.mLayout.b(i2, i3);
            this.mState.f2630j = true;
            d();
            this.mLayout.d(i2, i3);
            if (this.mLayout.A()) {
                this.mLayout.b(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.mState.f2630j = true;
                d();
                this.mLayout.d(i2, i3);
                return;
            }
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.a(this.mRecycler, this.mState, i2, i3);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            k();
            onExitLayoutOrScroll();
            w wVar = this.mState;
            if (wVar.f2632l) {
                wVar.f2628h = true;
            } else {
                this.mAdapterHelper.b();
                this.mState.f2628h = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.f2632l) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        g gVar = this.mAdapter;
        if (gVar != null) {
            this.mState.f2626f = gVar.a();
        } else {
            this.mState.f2626f = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.a(this.mRecycler, this.mState, i2, i3);
        stopInterceptRequestLayout(false);
        this.mState.f2628h = false;
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        this.f2544f = (SavedState) parcelable;
        super.onRestoreInstanceState(this.f2544f.a());
        m mVar = this.mLayout;
        if (mVar == null || (parcelable2 = this.f2544f.f2563g) == null) {
            return;
        }
        mVar.a(parcelable2);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.f2544f;
        if (savedState2 != null) {
            savedState.a(savedState2);
        } else {
            m mVar = this.mLayout;
            if (mVar != null) {
                savedState.f2563g = mVar.x();
            } else {
                savedState.f2563g = null;
            }
        }
        return savedState;
    }

    public void onScrollStateChanged(int i2) {
    }

    public void onScrolled(@Px int i2, @Px int i3) {
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0116  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r15) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        ViewCompat.a(this, this.R);
        this.mPostedAnimatorRunner = true;
    }

    void processDataSetCompletelyChanged(boolean z2) {
        this.mDispatchItemsChangedEvent = z2 | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    void recordAnimationInfoIfBouncedHiddenView(z zVar, ItemAnimator.c cVar) {
        zVar.a(0, FileUtil.STREAM_BUFFER_SIZE);
        if (this.mState.f2629i && zVar.s() && !zVar.p() && !zVar.x()) {
            this.mViewInfoStore.a(getChangedHolderKey(zVar), zVar);
        }
        this.mViewInfoStore.c(zVar, cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeAndRecycleViews() {
        ItemAnimator itemAnimator = this.mItemAnimator;
        if (itemAnimator != null) {
            itemAnimator.b();
        }
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.b(this.mRecycler);
            this.mLayout.c(this.mRecycler);
        }
        this.mRecycler.a();
    }

    boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        boolean e2 = this.mChildHelper.e(view);
        if (e2) {
            z childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.c(childViewHolderInt);
            this.mRecycler.b(childViewHolderInt);
        }
        stopInterceptRequestLayout(!e2);
        return e2;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z2) {
        z childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.r()) {
                childViewHolderInt.d();
            } else if (!childViewHolderInt.x()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt + exceptionLabel());
            }
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z2);
    }

    public void removeItemDecoration(@NonNull l lVar) {
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.a("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(lVar);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 >= 0 && i2 < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i2));
            return;
        }
        throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(@NonNull n nVar) {
        List<n> list = this.n;
        if (list == null) {
            return;
        }
        list.remove(nVar);
    }

    public void removeOnItemTouchListener(@NonNull p pVar) {
        this.f2546h.remove(pVar);
        if (this.f2547i == pVar) {
            this.f2547i = null;
        }
    }

    public void removeOnScrollListener(@NonNull q qVar) {
        List<q> list = this.K;
        if (list != null) {
            list.remove(qVar);
        }
    }

    void repositionShadowingViews() {
        z zVar;
        int a2 = this.mChildHelper.a();
        for (int i2 = 0; i2 < a2; i2++) {
            View c2 = this.mChildHelper.c(i2);
            z childViewHolder = getChildViewHolder(c2);
            if (childViewHolder != null && (zVar = childViewHolder.f2648i) != null) {
                View view = zVar.f2640a;
                int left = c2.getLeft();
                int top = c2.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.a(this, this.mState, view, view2) && view2 != null) {
            a(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.mLayout.a(this, view, rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.f2546h.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2546h.get(i2).a(z2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f2548j == 0 && !this.mLayoutFrozen) {
            super.requestLayout();
        } else {
            this.mLayoutWasDefered = true;
        }
    }

    void saveOldPositions() {
        int b2 = this.mChildHelper.b();
        for (int i2 = 0; i2 < b2; i2++) {
            z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (!childViewHolderInt.x()) {
                childViewHolderInt.v();
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        m mVar = this.mLayout;
        if (mVar == null || this.mLayoutFrozen) {
            return;
        }
        boolean a2 = mVar.a();
        boolean b2 = this.mLayout.b();
        if (a2 || b2) {
            if (!a2) {
                i2 = 0;
            }
            if (!b2) {
                i3 = 0;
            }
            scrollByInternal(i2, i3, null);
        }
    }

    boolean scrollByInternal(int i2, int i3, MotionEvent motionEvent) {
        int i4;
        int i5;
        int i6;
        int i7;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            scrollStep(i2, i3, this.mScrollStepConsumed);
            int[] iArr = this.mScrollStepConsumed;
            int i8 = iArr[0];
            int i9 = iArr[1];
            i4 = i9;
            i7 = i8;
            i5 = i2 - i8;
            i6 = i3 - i9;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int i10 = i4;
        if (dispatchNestedScroll(i7, i4, i5, i6, this.P, 0)) {
            int i11 = this.A;
            int[] iArr2 = this.P;
            this.A = i11 - iArr2[0];
            this.B -= iArr2[1];
            if (motionEvent != null) {
                motionEvent.offsetLocation(iArr2[0], iArr2[1]);
            }
            int[] iArr3 = this.Q;
            int i12 = iArr3[0];
            int[] iArr4 = this.P;
            iArr3[0] = i12 + iArr4[0];
            iArr3[1] = iArr3[1] + iArr4[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !androidx.core.view.j.a(motionEvent, 8194)) {
                a(motionEvent.getX(), i5, motionEvent.getY(), i6);
            }
            considerReleasingGlowsOnScroll(i2, i3);
        }
        if (i7 != 0 || i10 != 0) {
            dispatchOnScrolled(i7, i10);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i7 == 0 && i10 == 0) ? false : true;
    }

    void scrollStep(int i2, int i3, @Nullable int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        a.i.k.b.a(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int a2 = i2 != 0 ? this.mLayout.a(i2, this.mRecycler, this.mState) : 0;
        int b2 = i3 != 0 ? this.mLayout.b(i3, this.mRecycler, this.mState) : 0;
        a.i.k.b.a();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = a2;
            iArr[1] = b2;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
    }

    public void scrollToPosition(int i2) {
        if (this.mLayoutFrozen) {
            return;
        }
        stopScroll();
        m mVar = this.mLayout;
        if (mVar == null) {
            return;
        }
        mVar.i(i2);
        awakenScrollBars();
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(@Nullable androidx.recyclerview.widget.k kVar) {
        this.mAccessibilityDelegate = kVar;
        ViewCompat.a(this, this.mAccessibilityDelegate);
    }

    public void setAdapter(@Nullable g gVar) {
        setLayoutFrozen(false);
        a(gVar, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(@Nullable j jVar) {
        if (jVar == this.M) {
            return;
        }
        this.M = jVar;
        setChildrenDrawingOrderEnabled(this.M != null);
    }

    @VisibleForTesting
    boolean setChildImportantForAccessibilityInternal(z zVar, int i2) {
        if (isComputingLayout()) {
            zVar.q = i2;
            this.mPendingAccessibilityImportanceChange.add(zVar);
            return false;
        }
        ViewCompat.g(zVar.f2640a, i2);
        return true;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z2) {
        if (z2 != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z2;
        super.setClipToPadding(z2);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(@NonNull EdgeEffectFactory edgeEffectFactory) {
        a.i.m.i.a(edgeEffectFactory);
        this.q = edgeEffectFactory;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z2) {
        this.mHasFixedSize = z2;
    }

    public void setItemAnimator(@Nullable ItemAnimator itemAnimator) {
        ItemAnimator itemAnimator2 = this.mItemAnimator;
        if (itemAnimator2 != null) {
            itemAnimator2.b();
            this.mItemAnimator.a((ItemAnimator.b) null);
        }
        this.mItemAnimator = itemAnimator;
        ItemAnimator itemAnimator3 = this.mItemAnimator;
        if (itemAnimator3 != null) {
            itemAnimator3.a(this.L);
        }
    }

    public void setItemViewCacheSize(int i2) {
        this.mRecycler.f(i2);
    }

    public void setLayoutFrozen(boolean z2) {
        if (z2 != this.mLayoutFrozen) {
            assertNotInLayoutOrScroll("Do not setLayoutFrozen in layout or scroll");
            if (!z2) {
                this.mLayoutFrozen = false;
                if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                    requestLayout();
                }
                this.mLayoutWasDefered = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.mLayoutFrozen = true;
            this.f2549k = true;
            stopScroll();
        }
    }

    public void setLayoutManager(@Nullable m mVar) {
        if (mVar == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            ItemAnimator itemAnimator = this.mItemAnimator;
            if (itemAnimator != null) {
                itemAnimator.b();
            }
            this.mLayout.b(this.mRecycler);
            this.mLayout.c(this.mRecycler);
            this.mRecycler.a();
            if (this.mIsAttached) {
                this.mLayout.a(this, this.mRecycler);
            }
            this.mLayout.f((RecyclerView) null);
            this.mLayout = null;
        } else {
            this.mRecycler.a();
        }
        this.mChildHelper.c();
        this.mLayout = mVar;
        if (mVar != null) {
            if (mVar.f2573b == null) {
                this.mLayout.f(this);
                if (this.mIsAttached) {
                    this.mLayout.a(this);
                }
            } else {
                throw new IllegalArgumentException("LayoutManager " + mVar + " is already attached to a RecyclerView:" + mVar.f2573b.exceptionLabel());
            }
        }
        this.mRecycler.j();
        requestLayout();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z2) {
        getScrollingChildHelper().a(z2);
    }

    public void setOnFlingListener(@Nullable o oVar) {
        this.D = oVar;
    }

    @Deprecated
    public void setOnScrollListener(@Nullable q qVar) {
        this.J = qVar;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.I = z2;
    }

    public void setRecycledViewPool(@Nullable r rVar) {
        this.mRecycler.a(rVar);
    }

    public void setRecyclerListener(@Nullable t tVar) {
        this.mRecyclerListener = tVar;
    }

    void setScrollState(int i2) {
        if (i2 == this.v) {
            return;
        }
        this.v = i2;
        if (i2 != 2) {
            q();
        }
        dispatchOnScrollStateChanged(i2);
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 != 1) {
                String str = "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value";
            } else {
                this.C = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.C = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(@Nullable x xVar) {
        this.mRecycler.a(xVar);
    }

    boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int a2 = accessibilityEvent != null ? androidx.core.view.f0.b.a(accessibilityEvent) : 0;
        if (a2 == 0) {
            a2 = 0;
        }
        this.f2550l = a2 | this.f2550l;
        return true;
    }

    public void smoothScrollBy(@Px int i2, @Px int i3) {
        smoothScrollBy(i2, i3, null);
    }

    public void smoothScrollToPosition(int i2) {
        m mVar;
        if (this.mLayoutFrozen || (mVar = this.mLayout) == null) {
            return;
        }
        mVar.a(this, this.mState, i2);
    }

    void startInterceptRequestLayout() {
        this.f2548j++;
        if (this.f2548j != 1 || this.mLayoutFrozen) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().b(i2);
    }

    void stopInterceptRequestLayout(boolean z2) {
        if (this.f2548j < 1) {
            this.f2548j = 1;
        }
        if (!z2 && !this.mLayoutFrozen) {
            this.mLayoutWasDefered = false;
        }
        if (this.f2548j == 1) {
            if (z2 && this.mLayoutWasDefered && !this.mLayoutFrozen && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutFrozen) {
                this.mLayoutWasDefered = false;
            }
        }
        this.f2548j--;
    }

    @Override // android.view.View, androidx.core.view.m
    public void stopNestedScroll() {
        getScrollingChildHelper().c();
    }

    public void stopScroll() {
        setScrollState(0);
        q();
    }

    public void swapAdapter(@Nullable g gVar, boolean z2) {
        setLayoutFrozen(false);
        a(gVar, true, z2);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    void viewRangeUpdate(int i2, int i3, Object obj) {
        int i4;
        int b2 = this.mChildHelper.b();
        int i5 = i2 + i3;
        for (int i6 = 0; i6 < b2; i6++) {
            View d2 = this.mChildHelper.d(i6);
            z childViewHolderInt = getChildViewHolderInt(d2);
            if (childViewHolderInt != null && !childViewHolderInt.x() && (i4 = childViewHolderInt.f2642c) >= i2 && i4 < i5) {
                childViewHolderInt.a(2);
                childViewHolderInt.a(obj);
                ((LayoutParams) d2.getLayoutParams()).f2561c = true;
            }
        }
        this.mRecycler.c(i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements a.InterfaceC0046a {
        f() {
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0046a
        public z a(int i2) {
            z findViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i2, true);
            if (findViewHolderForPosition == null || RecyclerView.this.mChildHelper.c(findViewHolderForPosition.f2640a)) {
                return null;
            }
            return findViewHolderForPosition;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0046a
        public void b(int i2, int i3) {
            RecyclerView.this.offsetPositionRecordsForRemove(i2, i3, false);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        void c(a.b bVar) {
            int i2 = bVar.f2697a;
            if (i2 == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mLayout.a(recyclerView, bVar.f2698b, bVar.f2700d);
                return;
            }
            if (i2 == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.mLayout.b(recyclerView2, bVar.f2698b, bVar.f2700d);
            } else if (i2 == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.mLayout.a(recyclerView3, bVar.f2698b, bVar.f2700d, bVar.f2699c);
            } else {
                if (i2 != 8) {
                    return;
                }
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.mLayout.a(recyclerView4, bVar.f2698b, bVar.f2700d, 1);
            }
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0046a
        public void d(int i2, int i3) {
            RecyclerView.this.offsetPositionRecordsForRemove(i2, i3, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mItemsAddedOrRemoved = true;
            recyclerView.mState.f2624d += i3;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0046a
        public void a(int i2, int i3, Object obj) {
            RecyclerView.this.viewRangeUpdate(i2, i3, obj);
            RecyclerView.this.mItemsChanged = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0046a
        public void b(a.b bVar) {
            c(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0046a
        public void a(a.b bVar) {
            c(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0046a
        public void a(int i2, int i3) {
            RecyclerView.this.offsetPositionRecordsForMove(i2, i3);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0046a
        public void c(int i2, int i3) {
            RecyclerView.this.offsetPositionRecordsForInsert(i2, i3);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2, i4);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr, i6);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036 A[SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    androidx.recyclerview.widget.RecyclerView.z findViewHolderForPosition(int r6, boolean r7) {
        /*
            r5 = this;
            androidx.recyclerview.widget.b r0 = r5.mChildHelper
            int r0 = r0.b()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L3a
            androidx.recyclerview.widget.b r3 = r5.mChildHelper
            android.view.View r3 = r3.d(r2)
            androidx.recyclerview.widget.RecyclerView$z r3 = getChildViewHolderInt(r3)
            if (r3 == 0) goto L37
            boolean r4 = r3.p()
            if (r4 != 0) goto L37
            if (r7 == 0) goto L23
            int r4 = r3.f2642c
            if (r4 == r6) goto L2a
            goto L37
        L23:
            int r4 = r3.i()
            if (r4 == r6) goto L2a
            goto L37
        L2a:
            androidx.recyclerview.widget.b r1 = r5.mChildHelper
            android.view.View r4 = r3.f2640a
            boolean r1 = r1.c(r4)
            if (r1 == 0) goto L36
            r1 = r3
            goto L37
        L36:
            return r3
        L37:
            int r2 = r2 + 1
            goto L8
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findViewHolderForPosition(int, boolean):androidx.recyclerview.widget.RecyclerView$z");
    }

    public boolean hasNestedScrollingParent(int i2) {
        return getScrollingChildHelper().a(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onExitLayoutOrScroll(boolean z2) {
        this.o--;
        if (this.o < 1) {
            this.o = 0;
            if (z2) {
                b();
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    public void smoothScrollBy(@Px int i2, @Px int i3, @Nullable Interpolator interpolator) {
        m mVar = this.mLayout;
        if (mVar == null || this.mLayoutFrozen) {
            return;
        }
        if (!mVar.a()) {
            i2 = 0;
        }
        if (!this.mLayout.b()) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        this.mViewFlinger.a(i2, i3, interpolator);
    }

    public boolean startNestedScroll(int i2, int i3) {
        return getScrollingChildHelper().a(i2, i3);
    }

    @Override // androidx.core.view.k
    public void stopNestedScroll(int i2) {
        getScrollingChildHelper().c(i2);
    }

    /* loaded from: classes.dex */
    public static class r {

        /* renamed from: a, reason: collision with root package name */
        SparseArray<a> f2590a = new SparseArray<>();

        /* renamed from: b, reason: collision with root package name */
        private int f2591b = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            final ArrayList<z> f2592a = new ArrayList<>();

            /* renamed from: b, reason: collision with root package name */
            int f2593b = 5;

            /* renamed from: c, reason: collision with root package name */
            long f2594c = 0;

            /* renamed from: d, reason: collision with root package name */
            long f2595d = 0;

            a() {
            }
        }

        @Nullable
        public z a(int i2) {
            a aVar = this.f2590a.get(i2);
            if (aVar == null || aVar.f2592a.isEmpty()) {
                return null;
            }
            return aVar.f2592a.remove(r2.size() - 1);
        }

        public void b() {
            for (int i2 = 0; i2 < this.f2590a.size(); i2++) {
                this.f2590a.valueAt(i2).f2592a.clear();
            }
        }

        void c() {
            this.f2591b--;
        }

        void b(int i2, long j2) {
            a b2 = b(i2);
            b2.f2594c = a(b2.f2594c, j2);
        }

        public void a(z zVar) {
            int h2 = zVar.h();
            ArrayList<z> arrayList = b(h2).f2592a;
            if (this.f2590a.get(h2).f2593b <= arrayList.size()) {
                return;
            }
            zVar.u();
            arrayList.add(zVar);
        }

        boolean b(int i2, long j2, long j3) {
            long j4 = b(i2).f2594c;
            return j4 == 0 || j2 + j4 < j3;
        }

        private a b(int i2) {
            a aVar = this.f2590a.get(i2);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f2590a.put(i2, aVar2);
            return aVar2;
        }

        long a(long j2, long j3) {
            return j2 == 0 ? j3 : ((j2 / 4) * 3) + (j3 / 4);
        }

        void a(int i2, long j2) {
            a b2 = b(i2);
            b2.f2595d = a(b2.f2595d, j2);
        }

        boolean a(int i2, long j2, long j3) {
            long j4 = b(i2).f2595d;
            return j4 == 0 || j2 + j4 < j3;
        }

        void a() {
            this.f2591b++;
        }

        void a(g gVar, g gVar2, boolean z) {
            if (gVar != null) {
                c();
            }
            if (!z && this.f2591b == 0) {
                b();
            }
            if (gVar2 != null) {
                a();
            }
        }
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f2543e = new u();
        this.mRecycler = new s();
        this.mViewInfoStore = new androidx.recyclerview.widget.n();
        this.mUpdateChildViewsRunnable = new a();
        this.mTempRect = new Rect();
        this.f2545g = new Rect();
        this.mTempRectF = new RectF();
        this.mItemDecorations = new ArrayList<>();
        this.f2546h = new ArrayList<>();
        this.f2548j = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.o = 0;
        this.p = 0;
        this.q = new EdgeEffectFactory();
        this.mItemAnimator = new androidx.recyclerview.widget.c();
        this.v = 0;
        this.w = -1;
        this.G = Float.MIN_VALUE;
        this.H = Float.MIN_VALUE;
        boolean z2 = true;
        this.I = true;
        this.mViewFlinger = new y();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new e.b() : null;
        this.mState = new w();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.L = new k();
        this.mPostedAnimatorRunner = false;
        this.N = new int[2];
        this.P = new int[2];
        this.mScrollConsumed = new int[2];
        this.Q = new int[2];
        this.mScrollStepConsumed = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.R = new b();
        this.S = new d();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, U, i2, 0);
            this.mClipToPadding = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        } else {
            this.mClipToPadding = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.C = viewConfiguration.getScaledTouchSlop();
        this.G = androidx.core.view.x.b(viewConfiguration, context);
        this.H = androidx.core.view.x.c(viewConfiguration, context);
        this.E = viewConfiguration.getScaledMinimumFlingVelocity();
        this.F = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.a(this.L);
        initAdapterManager();
        i();
        h();
        if (ViewCompat.l(this) == 0) {
            ViewCompat.g(this, 1);
        }
        this.m = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new androidx.recyclerview.widget.k(this));
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, a.o.b.RecyclerView, i2, 0);
            String string = obtainStyledAttributes2.getString(a.o.b.RecyclerView_layoutManager);
            if (obtainStyledAttributes2.getInt(a.o.b.RecyclerView_android_descendantFocusability, -1) == -1) {
                setDescendantFocusability(262144);
            }
            this.mEnableFastScroller = obtainStyledAttributes2.getBoolean(a.o.b.RecyclerView_fastScrollEnabled, false);
            if (this.mEnableFastScroller) {
                initFastScroller((StateListDrawable) obtainStyledAttributes2.getDrawable(a.o.b.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes2.getDrawable(a.o.b.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes2.getDrawable(a.o.b.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes2.getDrawable(a.o.b.RecyclerView_fastScrollHorizontalTrackDrawable));
            }
            obtainStyledAttributes2.recycle();
            a(context, string, attributeSet, i2, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, T, i2, 0);
                boolean z3 = obtainStyledAttributes3.getBoolean(0, true);
                obtainStyledAttributes3.recycle();
                z2 = z3;
            }
        } else {
            setDescendantFocusability(262144);
        }
        setNestedScrollingEnabled(z2);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        z f2559a;

        /* renamed from: b, reason: collision with root package name */
        final Rect f2560b;

        /* renamed from: c, reason: collision with root package name */
        boolean f2561c;

        /* renamed from: d, reason: collision with root package name */
        boolean f2562d;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2560b = new Rect();
            this.f2561c = true;
            this.f2562d = false;
        }

        public int a() {
            return this.f2559a.i();
        }

        public boolean b() {
            return this.f2559a.s();
        }

        public boolean c() {
            return this.f2559a.p();
        }

        public boolean d() {
            return this.f2559a.n();
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f2560b = new Rect();
            this.f2561c = true;
            this.f2562d = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2560b = new Rect();
            this.f2561c = true;
            this.f2562d = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2560b = new Rect();
            this.f2561c = true;
            this.f2562d = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.f2560b = new Rect();
            this.f2561c = true;
            this.f2562d = false;
        }
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: g, reason: collision with root package name */
        Parcelable f2563g;

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

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2563g = parcel.readParcelable(classLoader == null ? m.class.getClassLoader() : classLoader);
        }

        void a(SavedState savedState) {
            this.f2563g = savedState.f2563g;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeParcelable(this.f2563g, 0);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* loaded from: classes.dex */
    public static class w {

        /* renamed from: b, reason: collision with root package name */
        private SparseArray<Object> f2622b;
        int m;
        long n;
        int o;
        int p;
        int q;

        /* renamed from: a, reason: collision with root package name */
        int f2621a = -1;

        /* renamed from: c, reason: collision with root package name */
        int f2623c = 0;

        /* renamed from: d, reason: collision with root package name */
        int f2624d = 0;

        /* renamed from: e, reason: collision with root package name */
        int f2625e = 1;

        /* renamed from: f, reason: collision with root package name */
        int f2626f = 0;

        /* renamed from: g, reason: collision with root package name */
        boolean f2627g = false;

        /* renamed from: h, reason: collision with root package name */
        boolean f2628h = false;

        /* renamed from: i, reason: collision with root package name */
        boolean f2629i = false;

        /* renamed from: j, reason: collision with root package name */
        boolean f2630j = false;

        /* renamed from: k, reason: collision with root package name */
        boolean f2631k = false;

        /* renamed from: l, reason: collision with root package name */
        boolean f2632l = false;

        void a(int i2) {
            if ((this.f2625e & i2) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i2) + " but it is " + Integer.toBinaryString(this.f2625e));
        }

        public int b() {
            return this.f2621a;
        }

        public boolean c() {
            return this.f2621a != -1;
        }

        public boolean d() {
            return this.f2628h;
        }

        public boolean e() {
            return this.f2632l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f2621a + ", mData=" + this.f2622b + ", mItemCount=" + this.f2626f + ", mIsMeasuring=" + this.f2630j + ", mPreviousLayoutItemCount=" + this.f2623c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f2624d + ", mStructureChanged=" + this.f2627g + ", mInPreLayout=" + this.f2628h + ", mRunSimpleAnimations=" + this.f2631k + ", mRunPredictiveAnimations=" + this.f2632l + '}';
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(g gVar) {
            this.f2625e = 1;
            this.f2626f = gVar.a();
            this.f2628h = false;
            this.f2629i = false;
            this.f2630j = false;
        }

        public int a() {
            return this.f2628h ? this.f2623c - this.f2624d : this.f2626f;
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        m mVar = this.mLayout;
        if (mVar != null) {
            return mVar.a(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    private void c() {
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f2630j = false;
        startInterceptRequestLayout();
        this.mViewInfoStore.a();
        onEnterLayoutOrScroll();
        k();
        p();
        w wVar = this.mState;
        wVar.f2629i = wVar.f2631k && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        w wVar2 = this.mState;
        wVar2.f2628h = wVar2.f2632l;
        wVar2.f2626f = this.mAdapter.a();
        a(this.N);
        if (this.mState.f2631k) {
            int a2 = this.mChildHelper.a();
            for (int i2 = 0; i2 < a2; i2++) {
                z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.c(i2));
                if (!childViewHolderInt.x() && (!childViewHolderInt.n() || this.mAdapter.b())) {
                    this.mViewInfoStore.c(childViewHolderInt, this.mItemAnimator.a(this.mState, childViewHolderInt, ItemAnimator.e(childViewHolderInt), childViewHolderInt.k()));
                    if (this.mState.f2629i && childViewHolderInt.s() && !childViewHolderInt.p() && !childViewHolderInt.x() && !childViewHolderInt.n()) {
                        this.mViewInfoStore.a(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f2632l) {
            saveOldPositions();
            w wVar3 = this.mState;
            boolean z2 = wVar3.f2627g;
            wVar3.f2627g = false;
            this.mLayout.e(this.mRecycler, wVar3);
            this.mState.f2627g = z2;
            for (int i3 = 0; i3 < this.mChildHelper.a(); i3++) {
                z childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.c(i3));
                if (!childViewHolderInt2.x() && !this.mViewInfoStore.c(childViewHolderInt2)) {
                    int e2 = ItemAnimator.e(childViewHolderInt2);
                    boolean b2 = childViewHolderInt2.b(FileUtil.STREAM_BUFFER_SIZE);
                    if (!b2) {
                        e2 |= 4096;
                    }
                    ItemAnimator.c a3 = this.mItemAnimator.a(this.mState, childViewHolderInt2, e2, childViewHolderInt2.k());
                    if (b2) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, a3);
                    } else {
                        this.mViewInfoStore.a(childViewHolderInt2, a3);
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f2625e = 2;
    }

    private void b() {
        int i2 = this.f2550l;
        this.f2550l = 0;
        if (i2 == 0 || !isAccessibilityEnabled()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setEventType(2048);
        androidx.core.view.f0.b.a(obtain, i2);
        sendAccessibilityEventUnchecked(obtain);
    }

    public void addItemDecoration(@NonNull l lVar) {
        addItemDecoration(lVar, -1);
    }

    private String a(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    private void a(@Nullable g gVar, boolean z2, boolean z3) {
        g gVar2 = this.mAdapter;
        if (gVar2 != null) {
            gVar2.b(this.f2543e);
            this.mAdapter.b(this);
        }
        if (!z2 || z3) {
            removeAndRecycleViews();
        }
        this.mAdapterHelper.f();
        g gVar3 = this.mAdapter;
        this.mAdapter = gVar;
        if (gVar != null) {
            gVar.a(this.f2543e);
            gVar.a(this);
        }
        m mVar = this.mLayout;
        if (mVar != null) {
            mVar.a(gVar3, this.mAdapter);
        }
        this.mRecycler.a(gVar3, this.mAdapter, z2);
        this.mState.f2627g = true;
    }

    private void a(z zVar) {
        View view = zVar.f2640a;
        boolean z2 = view.getParent() == this;
        this.mRecycler.c(getChildViewHolder(view));
        if (zVar.r()) {
            this.mChildHelper.a(view, -1, view.getLayoutParams(), true);
        } else if (!z2) {
            this.mChildHelper.a(view, true);
        } else {
            this.mChildHelper.a(view);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 1065353216(0x3f800000, float:1.0)
            r1 = 1
            r2 = 0
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 >= 0) goto L21
            r6.ensureLeftGlow()
            android.widget.EdgeEffect r3 = r6.r
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r0 - r9
            androidx.core.widget.d.a(r3, r4, r9)
        L1f:
            r9 = 1
            goto L3c
        L21:
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 <= 0) goto L3b
            r6.ensureRightGlow()
            android.widget.EdgeEffect r3 = r6.t
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            androidx.core.widget.d.a(r3, r4, r9)
            goto L1f
        L3b:
            r9 = 0
        L3c:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 >= 0) goto L56
            r6.ensureTopGlow()
            android.widget.EdgeEffect r9 = r6.s
            float r0 = -r10
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r0 = r0 / r3
            int r3 = r6.getWidth()
            float r3 = (float) r3
            float r7 = r7 / r3
            androidx.core.widget.d.a(r9, r0, r7)
            goto L72
        L56:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 <= 0) goto L71
            r6.ensureBottomGlow()
            android.widget.EdgeEffect r9 = r6.u
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r3 = r10 / r3
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r0 = r0 - r7
            androidx.core.widget.d.a(r9, r3, r0)
            goto L72
        L71:
            r1 = r9
        L72:
            if (r1 != 0) goto L7c
            int r7 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r7 != 0) goto L7c
            int r7 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r7 == 0) goto L7f
        L7c:
            androidx.core.view.ViewCompat.H(r6)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.a(float, float, float, float):void");
    }

    private boolean a(View view, View view2, int i2) {
        int i3;
        if (view2 == null || view2 == this || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.f2545g.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.f2545g);
        char c2 = 65535;
        int i4 = this.mLayout.j() == 1 ? -1 : 1;
        Rect rect = this.mTempRect;
        int i5 = rect.left;
        int i6 = this.f2545g.left;
        if ((i5 < i6 || rect.right <= i6) && this.mTempRect.right < this.f2545g.right) {
            i3 = 1;
        } else {
            Rect rect2 = this.mTempRect;
            int i7 = rect2.right;
            int i8 = this.f2545g.right;
            i3 = ((i7 > i8 || rect2.left >= i8) && this.mTempRect.left > this.f2545g.left) ? -1 : 0;
        }
        Rect rect3 = this.mTempRect;
        int i9 = rect3.top;
        int i10 = this.f2545g.top;
        if ((i9 < i10 || rect3.bottom <= i10) && this.mTempRect.bottom < this.f2545g.bottom) {
            c2 = 1;
        } else {
            Rect rect4 = this.mTempRect;
            int i11 = rect4.bottom;
            int i12 = this.f2545g.bottom;
            if ((i11 <= i12 && rect4.top < i12) || this.mTempRect.top <= this.f2545g.top) {
                c2 = 0;
            }
        }
        if (i2 == 1) {
            return c2 < 0 || (c2 == 0 && i3 * i4 <= 0);
        }
        if (i2 == 2) {
            return c2 > 0 || (c2 == 0 && i3 * i4 >= 0);
        }
        if (i2 == 17) {
            return i3 < 0;
        }
        if (i2 == 33) {
            return c2 < 0;
        }
        if (i2 == 66) {
            return i3 > 0;
        }
        if (i2 == 130) {
            return c2 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i2 + exceptionLabel());
    }

    private void a(@NonNull View view, @Nullable View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.f2561c) {
                Rect rect = layoutParams2.f2560b;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.a(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private boolean a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        p pVar = this.f2547i;
        if (pVar != null) {
            if (action == 0) {
                this.f2547i = null;
            } else {
                pVar.a(this, motionEvent);
                if (action == 3 || action == 1) {
                    this.f2547i = null;
                }
                return true;
            }
        }
        if (action != 0) {
            int size = this.f2546h.size();
            for (int i2 = 0; i2 < size; i2++) {
                p pVar2 = this.f2546h.get(i2);
                if (pVar2.b(this, motionEvent)) {
                    this.f2547i = pVar2;
                    return true;
                }
            }
        }
        return false;
    }

    private void a() {
        o();
        setScrollState(0);
    }

    private int a(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private void a(long j2, z zVar, z zVar2) {
        int a2 = this.mChildHelper.a();
        for (int i2 = 0; i2 < a2; i2++) {
            z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.c(i2));
            if (childViewHolderInt != zVar && getChangedHolderKey(childViewHolderInt) == j2) {
                g gVar = this.mAdapter;
                if (gVar != null && gVar.b()) {
                    throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + zVar + exceptionLabel());
                }
                throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + zVar + exceptionLabel());
            }
        }
        String str = "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + zVar2 + " cannot be found but it is necessary for " + zVar + exceptionLabel();
    }

    private void a(int[] iArr) {
        int a2 = this.mChildHelper.a();
        if (a2 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = e.b.b.a.a.a.c.ALL_INT;
        for (int i4 = 0; i4 < a2; i4++) {
            z childViewHolderInt = getChildViewHolderInt(this.mChildHelper.c(i4));
            if (!childViewHolderInt.x()) {
                int i5 = childViewHolderInt.i();
                if (i5 < i2) {
                    i2 = i5;
                }
                if (i5 > i3) {
                    i3 = i5;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    private boolean a(int i2, int i3) {
        a(this.N);
        int[] iArr = this.N;
        return (iArr[0] == i2 && iArr[1] == i3) ? false : true;
    }

    private void a(@NonNull z zVar, @NonNull z zVar2, @NonNull ItemAnimator.c cVar, @NonNull ItemAnimator.c cVar2, boolean z2, boolean z3) {
        zVar.a(false);
        if (z2) {
            a(zVar);
        }
        if (zVar != zVar2) {
            if (z3) {
                a(zVar2);
            }
            zVar.f2647h = zVar2;
            a(zVar);
            this.mRecycler.c(zVar);
            zVar2.a(false);
            zVar2.f2648i = zVar;
        }
        if (this.mItemAnimator.a(zVar, zVar2, cVar, cVar2)) {
            postAnimationRunner();
        }
    }
}
