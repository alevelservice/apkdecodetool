package androidx.databinding;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.databinding.c;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.lifecycle.e;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class ViewDataBinding extends androidx.databinding.a {
    static int q = Build.VERSION.SDK_INT;
    private static final int r = 8;
    private static final boolean s;
    private static final ReferenceQueue<ViewDataBinding> t;
    private static final View.OnAttachStateChangeListener u;

    /* renamed from: f, reason: collision with root package name */
    private final Runnable f2044f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f2045g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f2046h;

    /* renamed from: i, reason: collision with root package name */
    private final View f2047i;

    /* renamed from: j, reason: collision with root package name */
    private androidx.databinding.c<androidx.databinding.k, ViewDataBinding, Void> f2048j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f2049k;

    /* renamed from: l, reason: collision with root package name */
    private Choreographer f2050l;
    private final Choreographer.FrameCallback m;
    private Handler n;
    private ViewDataBinding o;
    private androidx.lifecycle.h p;

    /* loaded from: classes.dex */
    static class OnStartListener implements androidx.lifecycle.g {

        /* renamed from: a, reason: collision with root package name */
        final WeakReference<ViewDataBinding> f2051a;

        @OnLifecycleEvent(e.a.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = this.f2051a.get();
            if (viewDataBinding != null) {
                viewDataBinding.b();
            }
        }
    }

    /* loaded from: classes.dex */
    static class a implements i {
        a() {
        }
    }

    /* loaded from: classes.dex */
    static class b implements i {
        b() {
        }
    }

    /* loaded from: classes.dex */
    static class c implements i {
        c() {
        }
    }

    /* loaded from: classes.dex */
    static class d implements i {
        d() {
        }
    }

    /* loaded from: classes.dex */
    static class e extends c.a<androidx.databinding.k, ViewDataBinding, Void> {
        e() {
        }

        @Override // androidx.databinding.c.a
        public void a(androidx.databinding.k kVar, ViewDataBinding viewDataBinding, int i2, Void r4) {
            if (i2 == 1) {
                if (kVar.c(viewDataBinding)) {
                    return;
                }
                viewDataBinding.f2046h = true;
            } else if (i2 == 2) {
                kVar.b(viewDataBinding);
            } else {
                if (i2 != 3) {
                    return;
                }
                kVar.a(viewDataBinding);
            }
        }
    }

    /* loaded from: classes.dex */
    static class f implements View.OnAttachStateChangeListener {
        f() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        @TargetApi(19)
        public void onViewAttachedToWindow(View view) {
            ViewDataBinding.b(view).f2044f.run();
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* loaded from: classes.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                ViewDataBinding.this.f2045g = false;
            }
            ViewDataBinding.j();
            if (Build.VERSION.SDK_INT >= 19 && !ViewDataBinding.this.f2047i.isAttachedToWindow()) {
                ViewDataBinding.this.f2047i.removeOnAttachStateChangeListener(ViewDataBinding.u);
                ViewDataBinding.this.f2047i.addOnAttachStateChangeListener(ViewDataBinding.u);
            } else {
                ViewDataBinding.this.b();
            }
        }
    }

    /* loaded from: classes.dex */
    class h implements Choreographer.FrameCallback {
        h() {
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j2) {
            ViewDataBinding.this.f2044f.run();
        }
    }

    /* loaded from: classes.dex */
    private interface i {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class j {

        /* renamed from: a, reason: collision with root package name */
        public final String[][] f2054a;

        /* renamed from: b, reason: collision with root package name */
        public final int[][] f2055b;

        /* renamed from: c, reason: collision with root package name */
        public final int[][] f2056c;

        public j(int i2) {
            this.f2054a = new String[i2];
            this.f2055b = new int[i2];
            this.f2056c = new int[i2];
        }

        public void a(int i2, String[] strArr, int[] iArr, int[] iArr2) {
            this.f2054a[i2] = strArr;
            this.f2055b[i2] = iArr;
            this.f2056c[i2] = iArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface k<T> {
        void a(T t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class l<T> extends WeakReference<ViewDataBinding> {

        /* renamed from: a, reason: collision with root package name */
        private final k<T> f2057a;

        /* renamed from: b, reason: collision with root package name */
        private T f2058b;

        public boolean a() {
            boolean z;
            T t = this.f2058b;
            if (t != null) {
                this.f2057a.a(t);
                z = true;
            } else {
                z = false;
            }
            this.f2058b = null;
            return z;
        }
    }

    static {
        s = q >= 16;
        new a();
        new b();
        new c();
        new d();
        new e();
        t = new ReferenceQueue<>();
        if (Build.VERSION.SDK_INT < 19) {
            u = null;
        } else {
            u = new f();
        }
    }

    protected ViewDataBinding(androidx.databinding.f fVar, View view, int i2) {
        this.f2044f = new g();
        this.f2045g = false;
        this.f2046h = false;
        l[] lVarArr = new l[i2];
        this.f2047i = view;
        if (Looper.myLooper() != null) {
            if (s) {
                this.f2050l = Choreographer.getInstance();
                this.m = new h();
                return;
            } else {
                this.m = null;
                this.n = new Handler(Looper.myLooper());
                return;
            }
        }
        throw new IllegalStateException("DataBinding must be created in view's UI Thread");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void d(ViewDataBinding viewDataBinding) {
        viewDataBinding.i();
    }

    private void i() {
        if (this.f2049k) {
            f();
            return;
        }
        if (d()) {
            this.f2049k = true;
            this.f2046h = false;
            androidx.databinding.c<androidx.databinding.k, ViewDataBinding, Void> cVar = this.f2048j;
            if (cVar != null) {
                cVar.a(this, 1, null);
                if (this.f2046h) {
                    this.f2048j.a(this, 2, null);
                }
            }
            if (!this.f2046h) {
                a();
                androidx.databinding.c<androidx.databinding.k, ViewDataBinding, Void> cVar2 = this.f2048j;
                if (cVar2 != null) {
                    cVar2.a(this, 3, null);
                }
            }
            this.f2049k = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j() {
        while (true) {
            Reference<? extends ViewDataBinding> poll = t.poll();
            if (poll == null) {
                return;
            }
            if (poll instanceof l) {
                ((l) poll).a();
            }
        }
    }

    protected abstract void a();

    public abstract boolean d();

    public abstract void e();

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        ViewDataBinding viewDataBinding = this.o;
        if (viewDataBinding != null) {
            viewDataBinding.f();
            return;
        }
        androidx.lifecycle.h hVar = this.p;
        if (hVar == null || hVar.getLifecycle().a().isAtLeast(e.b.STARTED)) {
            synchronized (this) {
                if (this.f2045g) {
                    return;
                }
                this.f2045g = true;
                if (s) {
                    this.f2050l.postFrameCallback(this.m);
                } else {
                    this.n.post(this.f2044f);
                }
            }
        }
    }

    private static androidx.databinding.f a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof androidx.databinding.f) {
            return (androidx.databinding.f) obj;
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    @NonNull
    public View c() {
        return this.f2047i;
    }

    public void b() {
        ViewDataBinding viewDataBinding = this.o;
        if (viewDataBinding == null) {
            i();
        } else {
            viewDataBinding.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(View view) {
        view.setTag(androidx.databinding.m.a.dataBinding, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object[] a(androidx.databinding.f fVar, View view, int i2, j jVar, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i2];
        a(fVar, view, objArr, jVar, sparseIntArray, true);
        return objArr;
    }

    static ViewDataBinding b(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(androidx.databinding.m.a.dataBinding);
        }
        return null;
    }

    private static int b(String str, int i2) {
        int i3 = 0;
        while (i2 < str.length()) {
            i3 = (i3 * 10) + (str.charAt(i2) - '0');
            i2++;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ViewDataBinding viewDataBinding) {
        if (viewDataBinding != null) {
            viewDataBinding.o = this;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x010e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(androidx.databinding.f r16, android.view.View r17, java.lang.Object[] r18, androidx.databinding.ViewDataBinding.j r19, android.util.SparseIntArray r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.databinding.ViewDataBinding.a(androidx.databinding.f, android.view.View, java.lang.Object[], androidx.databinding.ViewDataBinding$j, android.util.SparseIntArray, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewDataBinding(Object obj, View view, int i2) {
        this(a(obj), view, i2);
    }

    private static int a(String str, int i2, j jVar, int i3) {
        CharSequence subSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = jVar.f2054a[i3];
        int length = strArr.length;
        while (i2 < length) {
            if (TextUtils.equals(subSequence, strArr[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private static int a(ViewGroup viewGroup, int i2) {
        String str = (String) viewGroup.getChildAt(i2).getTag();
        String substring = str.substring(0, str.length() - 1);
        int length = substring.length();
        int childCount = viewGroup.getChildCount();
        for (int i3 = i2 + 1; i3 < childCount; i3++) {
            View childAt = viewGroup.getChildAt(i3);
            String str2 = childAt.getTag() instanceof String ? (String) childAt.getTag() : null;
            if (str2 != null && str2.startsWith(substring)) {
                if (str2.length() == str.length() && str2.charAt(str2.length() - 1) == '0') {
                    return i2;
                }
                if (a(str2, length)) {
                    i2 = i3;
                }
            }
        }
        return i2;
    }

    private static boolean a(String str, int i2) {
        int length = str.length();
        if (length == i2) {
            return false;
        }
        while (i2 < length) {
            if (!Character.isDigit(str.charAt(i2))) {
                return false;
            }
            i2++;
        }
        return true;
    }
}
