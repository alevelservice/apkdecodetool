package androidx.core.view;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.core.view.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ViewCompat {

    /* renamed from: a, reason: collision with root package name */
    private static Field f1888a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f1889b;

    /* renamed from: c, reason: collision with root package name */
    private static Field f1890c;

    /* renamed from: d, reason: collision with root package name */
    private static boolean f1891d;

    /* renamed from: e, reason: collision with root package name */
    private static WeakHashMap<View, String> f1892e;

    /* renamed from: f, reason: collision with root package name */
    private static WeakHashMap<View, a0> f1893f;

    /* renamed from: g, reason: collision with root package name */
    private static Field f1894g;

    /* renamed from: h, reason: collision with root package name */
    private static boolean f1895h;

    /* renamed from: i, reason: collision with root package name */
    private static ThreadLocal<Rect> f1896i;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface FocusRelativeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface NestedScrollType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ScrollAxis {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ScrollIndicators {
    }

    /* loaded from: classes.dex */
    class a implements View.OnApplyWindowInsetsListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ s f1897a;

        a(s sVar) {
            this.f1897a = sVar;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            return this.f1897a.a(view, e0.a(windowInsets)).k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends f<Boolean> {
        b(int i2, Class cls, int i3) {
            super(i2, cls, i3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.core.view.ViewCompat.f
        @RequiresApi(28)
        public Boolean a(View view) {
            return Boolean.valueOf(view.isScreenReaderFocusable());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends f<CharSequence> {
        c(int i2, Class cls, int i3, int i4) {
            super(i2, cls, i3, i4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.core.view.ViewCompat.f
        @RequiresApi(28)
        public CharSequence a(View view) {
            return view.getAccessibilityPaneTitle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d extends f<Boolean> {
        d(int i2, Class cls, int i3) {
            super(i2, cls, i3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.core.view.ViewCompat.f
        @RequiresApi(28)
        public Boolean a(View view) {
            return Boolean.valueOf(view.isAccessibilityHeading());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class f<T> {

        /* renamed from: a, reason: collision with root package name */
        private final int f1899a;

        /* renamed from: b, reason: collision with root package name */
        private final Class<T> f1900b;

        /* renamed from: c, reason: collision with root package name */
        private final int f1901c;

        f(int i2, Class<T> cls, int i3) {
            this(i2, cls, 0, i3);
        }

        private boolean a() {
            return Build.VERSION.SDK_INT >= 19;
        }

        abstract T a(View view);

        T b(View view) {
            if (b()) {
                return a(view);
            }
            if (!a()) {
                return null;
            }
            T t = (T) view.getTag(this.f1899a);
            if (this.f1900b.isInstance(t)) {
                return t;
            }
            return null;
        }

        f(int i2, Class<T> cls, int i3, int i4) {
            this.f1899a = i2;
            this.f1900b = cls;
            this.f1901c = i4;
        }

        private boolean b() {
            return Build.VERSION.SDK_INT >= this.f1901c;
        }
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    private static class g {
        static e0 a(@NonNull View view, @NonNull e0 e0Var, @NonNull Rect rect) {
            WindowInsets k2 = e0Var.k();
            if (k2 != null) {
                return e0.a(view.computeSystemWindowInsets(k2, rect));
            }
            rect.setEmpty();
            return e0Var;
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    private static class h {
        public static WindowInsets a(View view) {
            return view.getRootWindowInsets();
        }
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    private static class i {
        static void a(@NonNull View view, @NonNull Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i2, int i3) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i2, i3);
        }
    }

    /* loaded from: classes.dex */
    public interface j {
        boolean a(View view, KeyEvent keyEvent);
    }

    static {
        new AtomicInteger(1);
        f1893f = null;
        f1895h = false;
        int[] iArr = {a.i.d.accessibility_custom_action_0, a.i.d.accessibility_custom_action_1, a.i.d.accessibility_custom_action_2, a.i.d.accessibility_custom_action_3, a.i.d.accessibility_custom_action_4, a.i.d.accessibility_custom_action_5, a.i.d.accessibility_custom_action_6, a.i.d.accessibility_custom_action_7, a.i.d.accessibility_custom_action_8, a.i.d.accessibility_custom_action_9, a.i.d.accessibility_custom_action_10, a.i.d.accessibility_custom_action_11, a.i.d.accessibility_custom_action_12, a.i.d.accessibility_custom_action_13, a.i.d.accessibility_custom_action_14, a.i.d.accessibility_custom_action_15, a.i.d.accessibility_custom_action_16, a.i.d.accessibility_custom_action_17, a.i.d.accessibility_custom_action_18, a.i.d.accessibility_custom_action_19, a.i.d.accessibility_custom_action_20, a.i.d.accessibility_custom_action_21, a.i.d.accessibility_custom_action_22, a.i.d.accessibility_custom_action_23, a.i.d.accessibility_custom_action_24, a.i.d.accessibility_custom_action_25, a.i.d.accessibility_custom_action_26, a.i.d.accessibility_custom_action_27, a.i.d.accessibility_custom_action_28, a.i.d.accessibility_custom_action_29, a.i.d.accessibility_custom_action_30, a.i.d.accessibility_custom_action_31};
        new e();
    }

    public static boolean A(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    @UiThread
    public static boolean B(View view) {
        Boolean b2 = a().b(view);
        if (b2 == null) {
            return false;
        }
        return b2.booleanValue();
    }

    public static boolean C(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isAttachedToWindow();
        }
        return view.getWindowToken() != null;
    }

    public static boolean D(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isLaidOut();
        }
        return view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean E(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (view instanceof m) {
            return ((m) view).isNestedScrollingEnabled();
        }
        return false;
    }

    public static boolean F(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    @UiThread
    public static boolean G(View view) {
        Boolean b2 = d().b(view);
        if (b2 == null) {
            return false;
        }
        return b2.booleanValue();
    }

    public static void H(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    public static void I(@NonNull View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            view.requestApplyInsets();
        } else if (i2 >= 16) {
            view.requestFitSystemWindows();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void J(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof m) {
            ((m) view).stopNestedScroll();
        }
    }

    private static void K(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static void a(@NonNull View view, @NonNull @SuppressLint({"ContextFirst"}) Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 29) {
            i.a(view, context, iArr, attributeSet, typedArray, i2, i3);
        }
    }

    private static Rect b() {
        if (f1896i == null) {
            f1896i = new ThreadLocal<>();
        }
        Rect rect = f1896i.get();
        if (rect == null) {
            rect = new Rect();
            f1896i.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    @Nullable
    private static View.AccessibilityDelegate c(@NonNull View view) {
        if (f1895h) {
            return null;
        }
        if (f1894g == null) {
            try {
                f1894g = View.class.getDeclaredField("mAccessibilityDelegate");
                f1894g.setAccessible(true);
            } catch (Throwable unused) {
                f1895h = true;
                return null;
            }
        }
        try {
            Object obj = f1894g.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f1895h = true;
            return null;
        }
    }

    public static int d(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    public static void e(@NonNull View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            view.offsetTopAndBottom(i2);
            return;
        }
        if (i3 >= 21) {
            Rect b2 = b();
            boolean z = false;
            Object parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                b2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !b2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            b(view, i2);
            if (z && b2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(b2);
                return;
            }
            return;
        }
        b(view, i2);
    }

    public static void f(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(i2);
        }
    }

    public static void g(@NonNull View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 19) {
            view.setImportantForAccessibility(i2);
        } else if (i3 >= 16) {
            if (i2 == 4) {
                i2 = 2;
            }
            view.setImportantForAccessibility(i2);
        }
    }

    public static void h(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void i(@NonNull View view, int i2) {
        if (view instanceof androidx.core.view.k) {
            ((androidx.core.view.k) view).stopNestedScroll(i2);
        } else if (i2 == 0) {
            J(view);
        }
    }

    public static float j(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getElevation();
        }
        return 0.0f;
    }

    public static boolean k(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    public static int l(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    @SuppressLint({"InlinedApi"})
    public static int m(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    public static int n(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    public static int o(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!f1891d) {
            try {
                f1890c = View.class.getDeclaredField("mMinHeight");
                f1890c.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f1891d = true;
        }
        Field field = f1890c;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    public static int p(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f1889b) {
            try {
                f1888a = View.class.getDeclaredField("mMinWidth");
                f1888a.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f1889b = true;
        }
        Field field = f1888a;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    @Px
    public static int q(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getPaddingEnd();
        }
        return view.getPaddingRight();
    }

    @Px
    public static int r(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getPaddingStart();
        }
        return view.getPaddingLeft();
    }

    public static ViewParent s(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getParentForAccessibility();
        }
        return view.getParent();
    }

    @Nullable
    public static e0 t(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            return e0.a(h.a(view));
        }
        return null;
    }

    @Nullable
    public static String u(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f1892e;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    public static int v(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    public static float w(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    public static boolean x(@NonNull View view) {
        return b(view) != null;
    }

    public static boolean y(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    public static boolean z(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasOverlappingRendering();
        }
        return true;
    }

    /* loaded from: classes.dex */
    static class e implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: e, reason: collision with root package name */
        private WeakHashMap<View, Boolean> f1898e = new WeakHashMap<>();

        e() {
        }

        @RequiresApi(19)
        private void a(View view, boolean z) {
            boolean z2 = view.getVisibility() == 0;
            if (z != z2) {
                if (z2) {
                    ViewCompat.c(view, 16);
                }
                this.f1898e.put(view, Boolean.valueOf(z2));
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @RequiresApi(19)
        public void onGlobalLayout() {
            for (Map.Entry<View, Boolean> entry : this.f1898e.entrySet()) {
                a(entry.getKey(), entry.getValue().booleanValue());
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        @RequiresApi(19)
        public void onViewAttachedToWindow(View view) {
            a(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        @RequiresApi(19)
        private void a(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
    }

    /* loaded from: classes.dex */
    static class k {

        /* renamed from: d, reason: collision with root package name */
        private static final ArrayList<WeakReference<View>> f1902d = new ArrayList<>();

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        private WeakHashMap<View, Boolean> f1903a = null;

        /* renamed from: b, reason: collision with root package name */
        private SparseArray<WeakReference<View>> f1904b = null;

        /* renamed from: c, reason: collision with root package name */
        private WeakReference<KeyEvent> f1905c = null;

        k() {
        }

        private SparseArray<WeakReference<View>> a() {
            if (this.f1904b == null) {
                this.f1904b = new SparseArray<>();
            }
            return this.f1904b;
        }

        @Nullable
        private View b(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f1903a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View b2 = b(viewGroup.getChildAt(childCount), keyEvent);
                        if (b2 != null) {
                            return b2;
                        }
                    }
                }
                if (c(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        private boolean c(@NonNull View view, @NonNull KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(a.i.d.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((j) arrayList.get(size)).a(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        static k a(View view) {
            k kVar = (k) view.getTag(a.i.d.tag_unhandled_key_event_manager);
            if (kVar != null) {
                return kVar;
            }
            k kVar2 = new k();
            view.setTag(a.i.d.tag_unhandled_key_event_manager, kVar2);
            return kVar2;
        }

        private void b() {
            WeakHashMap<View, Boolean> weakHashMap = this.f1903a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            if (f1902d.isEmpty()) {
                return;
            }
            synchronized (f1902d) {
                if (this.f1903a == null) {
                    this.f1903a = new WeakHashMap<>();
                }
                for (int size = f1902d.size() - 1; size >= 0; size--) {
                    View view = f1902d.get(size).get();
                    if (view == null) {
                        f1902d.remove(size);
                    } else {
                        this.f1903a.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f1903a.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        boolean a(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                b();
            }
            View b2 = b(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (b2 != null && !KeyEvent.isModifierKey(keyCode)) {
                    a().put(keyCode, new WeakReference<>(b2));
                }
            }
            return b2 != null;
        }

        boolean a(KeyEvent keyEvent) {
            int indexOfKey;
            WeakReference<KeyEvent> weakReference = this.f1905c;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.f1905c = new WeakReference<>(keyEvent);
            WeakReference<View> weakReference2 = null;
            SparseArray<WeakReference<View>> a2 = a();
            if (keyEvent.getAction() == 1 && (indexOfKey = a2.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                weakReference2 = a2.valueAt(indexOfKey);
                a2.removeAt(indexOfKey);
            }
            if (weakReference2 == null) {
                weakReference2 = a2.get(keyEvent.getKeyCode());
            }
            if (weakReference2 == null) {
                return false;
            }
            View view = weakReference2.get();
            if (view != null && ViewCompat.C(view)) {
                c(view, keyEvent);
            }
            return true;
        }
    }

    public static void a(@NonNull View view, androidx.core.view.f0.d dVar) {
        view.onInitializeAccessibilityNodeInfo(dVar.x());
    }

    public static void d(@NonNull View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            view.offsetLeftAndRight(i2);
            return;
        }
        if (i3 >= 21) {
            Rect b2 = b();
            boolean z = false;
            Object parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                b2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !b2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            a(view, i2);
            if (z && b2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(b2);
                return;
            }
            return;
        }
        a(view, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ColorStateList f(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        if (view instanceof w) {
            return ((w) view).getSupportBackgroundTintList();
        }
        return null;
    }

    @Nullable
    public static Rect h(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    public static void a(@NonNull View view, androidx.core.view.a aVar) {
        if (aVar == null && (b(view) instanceof a.C0036a)) {
            aVar = new androidx.core.view.a();
        }
        view.setAccessibilityDelegate(aVar == null ? null : aVar.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PorterDuff.Mode g(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        if (view instanceof w) {
            return ((w) view).getSupportBackgroundTintMode();
        }
        return null;
    }

    @Nullable
    public static Display i(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (C(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    public static void a(@NonNull View view, int i2, int i3, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation(i2, i3, i4, i5);
        } else {
            view.postInvalidate(i2, i3, i4, i5);
        }
    }

    @Nullable
    private static View.AccessibilityDelegate b(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return view.getAccessibilityDelegate();
        }
        return c(view);
    }

    public static void a(@NonNull View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    public static void b(@NonNull View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    private static f<CharSequence> c() {
        return new c(a.i.d.tag_accessibility_pane_title, CharSequence.class, 8, 28);
    }

    public static void b(@NonNull View view, @Px int i2, @Px int i3, @Px int i4, @Px int i5) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i2, i3, i4, i5);
        } else {
            view.setPadding(i2, i3, i4, i5);
        }
    }

    @RequiresApi(19)
    static void c(View view, int i2) {
        if (((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            boolean z = e(view) != null;
            if (d(view) == 0 && (!z || view.getVisibility() != 0)) {
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i2);
                        return;
                    } catch (AbstractMethodError unused) {
                        String str = view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent";
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(z ? 32 : 2048);
            obtain.setContentChangeTypes(i2);
            view.sendAccessibilityEventUnchecked(obtain);
        }
    }

    public static void a(@NonNull View view, Runnable runnable, long j2) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j2);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j2);
        }
    }

    @NonNull
    public static e0 b(@NonNull View view, @NonNull e0 e0Var) {
        WindowInsets k2;
        if (Build.VERSION.SDK_INT >= 21 && (k2 = e0Var.k()) != null) {
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(k2);
            if (!onApplyWindowInsets.equals(k2)) {
                return e0.a(onApplyWindowInsets);
            }
        }
        return e0Var;
    }

    public static boolean a(@NonNull View view, int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.performAccessibilityAction(i2, bundle);
        }
        return false;
    }

    @UiThread
    public static CharSequence e(View view) {
        return c().b(view);
    }

    public static void a(@NonNull View view, Paint paint) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setLayerPaint(paint);
        } else {
            view.setLayerType(view.getLayerType(), paint);
            view.invalidate();
        }
    }

    private static f<Boolean> d() {
        return new b(a.i.d.tag_screen_reader_focusable, Boolean.class, 28);
    }

    private static void b(View view, int i2) {
        view.offsetTopAndBottom(i2);
        if (view.getVisibility() == 0) {
            K(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                K((View) parent);
            }
        }
    }

    @NonNull
    public static a0 a(@NonNull View view) {
        if (f1893f == null) {
            f1893f = new WeakHashMap<>();
        }
        a0 a0Var = f1893f.get(view);
        if (a0Var != null) {
            return a0Var;
        }
        a0 a0Var2 = new a0(view);
        f1893f.put(view, a0Var2);
        return a0Var2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public static boolean b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return k.a(view).a(keyEvent);
    }

    public static void a(@NonNull View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f2);
        }
    }

    public static void a(@NonNull View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f1892e == null) {
            f1892e = new WeakHashMap<>();
        }
        f1892e.put(view, str);
    }

    @Deprecated
    public static void a(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    public static void a(@NonNull View view, @Nullable s sVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (sVar == null) {
                view.setOnApplyWindowInsetsListener(null);
            } else {
                view.setOnApplyWindowInsetsListener(new a(sVar));
            }
        }
    }

    @NonNull
    public static e0 a(@NonNull View view, @NonNull e0 e0Var) {
        WindowInsets k2;
        return (Build.VERSION.SDK_INT < 21 || (k2 = e0Var.k()) == null || view.dispatchApplyWindowInsets(k2).equals(k2)) ? e0Var : e0.a(k2);
    }

    @NonNull
    public static e0 a(@NonNull View view, @NonNull e0 e0Var, @NonNull Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? g.a(view, e0Var, rect) : e0Var;
    }

    public static void a(@NonNull View view, @Nullable Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@NonNull View view, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setBackgroundTintList(colorStateList);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
                if (background == null || !z) {
                    return;
                }
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
                return;
            }
            return;
        }
        if (view instanceof w) {
            ((w) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@NonNull View view, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setBackgroundTintMode(mode);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
                if (background == null || !z) {
                    return;
                }
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
                return;
            }
            return;
        }
        if (view instanceof w) {
            ((w) view).setSupportBackgroundTintMode(mode);
        }
    }

    private static void a(View view, int i2) {
        view.offsetLeftAndRight(i2);
        if (view.getVisibility() == 0) {
            K(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                K((View) parent);
            }
        }
    }

    public static void a(@NonNull View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    public static void a(@NonNull View view, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i2, i3);
        }
    }

    public static void a(@NonNull View view, u uVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (uVar != null ? uVar.a() : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public static boolean a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return k.a(view).a(view, keyEvent);
    }

    private static f<Boolean> a() {
        return new d(a.i.d.tag_accessibility_heading, Boolean.class, 28);
    }
}
