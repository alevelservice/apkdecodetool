package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.alipay.zoloz.toyger.blob.BlobStatic;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DrawableContainer.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class b extends Drawable implements Drawable.Callback {

    /* renamed from: e, reason: collision with root package name */
    private c f897e;

    /* renamed from: f, reason: collision with root package name */
    private Rect f898f;

    /* renamed from: g, reason: collision with root package name */
    private Drawable f899g;

    /* renamed from: h, reason: collision with root package name */
    private Drawable f900h;

    /* renamed from: j, reason: collision with root package name */
    private boolean f902j;

    /* renamed from: l, reason: collision with root package name */
    private boolean f904l;
    private Runnable m;
    private long n;
    private long o;
    private C0023b p;

    /* renamed from: i, reason: collision with root package name */
    private int f901i = 255;

    /* renamed from: k, reason: collision with root package name */
    private int f903k = -1;

    /* compiled from: DrawableContainer.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(true);
            b.this.invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawableContainer.java */
    /* renamed from: androidx.appcompat.graphics.drawable.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0023b implements Drawable.Callback {

        /* renamed from: e, reason: collision with root package name */
        private Drawable.Callback f906e;

        C0023b() {
        }

        public C0023b a(Drawable.Callback callback) {
            this.f906e = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j2) {
            Drawable.Callback callback = this.f906e;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j2);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
            Drawable.Callback callback = this.f906e;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f906e;
            this.f906e = null;
            return callback;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawableContainer.java */
    /* loaded from: classes.dex */
    public static abstract class c extends Drawable.ConstantState {
        int A;
        int B;
        boolean C;
        ColorFilter D;
        boolean E;
        ColorStateList F;
        PorterDuff.Mode G;
        boolean H;
        boolean I;

        /* renamed from: a, reason: collision with root package name */
        final b f907a;

        /* renamed from: b, reason: collision with root package name */
        Resources f908b;

        /* renamed from: c, reason: collision with root package name */
        int f909c;

        /* renamed from: d, reason: collision with root package name */
        int f910d;

        /* renamed from: e, reason: collision with root package name */
        int f911e;

        /* renamed from: f, reason: collision with root package name */
        SparseArray<Drawable.ConstantState> f912f;

        /* renamed from: g, reason: collision with root package name */
        Drawable[] f913g;

        /* renamed from: h, reason: collision with root package name */
        int f914h;

        /* renamed from: i, reason: collision with root package name */
        boolean f915i;

        /* renamed from: j, reason: collision with root package name */
        boolean f916j;

        /* renamed from: k, reason: collision with root package name */
        Rect f917k;

        /* renamed from: l, reason: collision with root package name */
        boolean f918l;
        boolean m;
        int n;
        int o;
        int p;
        int q;
        boolean r;
        int s;
        boolean t;
        boolean u;
        boolean v;
        boolean w;
        boolean x;
        boolean y;
        int z;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(c cVar, b bVar, Resources resources) {
            Resources resources2;
            this.f909c = BlobStatic.MONITOR_IMAGE_WIDTH;
            this.f915i = false;
            this.f918l = false;
            this.x = true;
            this.A = 0;
            this.B = 0;
            this.f907a = bVar;
            if (resources != null) {
                resources2 = resources;
            } else {
                resources2 = cVar != null ? cVar.f908b : null;
            }
            this.f908b = resources2;
            this.f909c = b.a(resources, cVar != null ? cVar.f909c : 0);
            if (cVar != null) {
                this.f910d = cVar.f910d;
                this.f911e = cVar.f911e;
                this.v = true;
                this.w = true;
                this.f915i = cVar.f915i;
                this.f918l = cVar.f918l;
                this.x = cVar.x;
                this.y = cVar.y;
                this.z = cVar.z;
                this.A = cVar.A;
                this.B = cVar.B;
                this.C = cVar.C;
                this.D = cVar.D;
                this.E = cVar.E;
                this.F = cVar.F;
                this.G = cVar.G;
                this.H = cVar.H;
                this.I = cVar.I;
                if (cVar.f909c == this.f909c) {
                    if (cVar.f916j) {
                        this.f917k = new Rect(cVar.f917k);
                        this.f916j = true;
                    }
                    if (cVar.m) {
                        this.n = cVar.n;
                        this.o = cVar.o;
                        this.p = cVar.p;
                        this.q = cVar.q;
                        this.m = true;
                    }
                }
                if (cVar.r) {
                    this.s = cVar.s;
                    this.r = true;
                }
                if (cVar.t) {
                    this.u = cVar.u;
                    this.t = true;
                }
                Drawable[] drawableArr = cVar.f913g;
                this.f913g = new Drawable[drawableArr.length];
                this.f914h = cVar.f914h;
                SparseArray<Drawable.ConstantState> sparseArray = cVar.f912f;
                if (sparseArray != null) {
                    this.f912f = sparseArray.clone();
                } else {
                    this.f912f = new SparseArray<>(this.f914h);
                }
                int i2 = this.f914h;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3] != null) {
                        Drawable.ConstantState constantState = drawableArr[i3].getConstantState();
                        if (constantState != null) {
                            this.f912f.put(i3, constantState);
                        } else {
                            this.f913g[i3] = drawableArr[i3];
                        }
                    }
                }
                return;
            }
            this.f913g = new Drawable[10];
            this.f914h = 0;
        }

        private Drawable b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.z);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f907a);
            return mutate;
        }

        private void n() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f912f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.f913g[this.f912f.keyAt(i2)] = b(this.f912f.valueAt(i2).newDrawable(this.f908b));
                }
                this.f912f = null;
            }
        }

        public final int a(Drawable drawable) {
            int i2 = this.f914h;
            if (i2 >= this.f913g.length) {
                a(i2, i2 + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f907a);
            this.f913g[i2] = drawable;
            this.f914h++;
            this.f911e = drawable.getChangingConfigurations() | this.f911e;
            k();
            this.f917k = null;
            this.f916j = false;
            this.m = false;
            this.v = false;
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int c() {
            return this.f913g.length;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @RequiresApi(21)
        public boolean canApplyTheme() {
            int i2 = this.f914h;
            Drawable[] drawableArr = this.f913g;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                if (drawable != null) {
                    if (drawable.canApplyTheme()) {
                        return true;
                    }
                } else {
                    Drawable.ConstantState constantState = this.f912f.get(i3);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                }
            }
            return false;
        }

        public final int d() {
            return this.f914h;
        }

        public final int e() {
            if (!this.m) {
                b();
            }
            return this.o;
        }

        public final int f() {
            if (!this.m) {
                b();
            }
            return this.q;
        }

        public final int g() {
            if (!this.m) {
                b();
            }
            return this.p;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f910d | this.f911e;
        }

        public final Rect h() {
            if (this.f915i) {
                return null;
            }
            if (this.f917k == null && !this.f916j) {
                n();
                Rect rect = new Rect();
                int i2 = this.f914h;
                Drawable[] drawableArr = this.f913g;
                Rect rect2 = null;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3].getPadding(rect)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i4 = rect.left;
                        if (i4 > rect2.left) {
                            rect2.left = i4;
                        }
                        int i5 = rect.top;
                        if (i5 > rect2.top) {
                            rect2.top = i5;
                        }
                        int i6 = rect.right;
                        if (i6 > rect2.right) {
                            rect2.right = i6;
                        }
                        int i7 = rect.bottom;
                        if (i7 > rect2.bottom) {
                            rect2.bottom = i7;
                        }
                    }
                }
                this.f916j = true;
                this.f917k = rect2;
                return rect2;
            }
            return this.f917k;
        }

        public final int i() {
            if (!this.m) {
                b();
            }
            return this.n;
        }

        public final int j() {
            if (this.r) {
                return this.s;
            }
            n();
            int i2 = this.f914h;
            Drawable[] drawableArr = this.f913g;
            int opacity = i2 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i3 = 1; i3 < i2; i3++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i3].getOpacity());
            }
            this.s = opacity;
            this.r = true;
            return opacity;
        }

        void k() {
            this.r = false;
            this.t = false;
        }

        public final boolean l() {
            return this.f918l;
        }

        abstract void m();

        public final void c(int i2) {
            this.B = i2;
        }

        final boolean b(int i2, int i3) {
            int i4 = this.f914h;
            Drawable[] drawableArr = this.f913g;
            boolean z = false;
            for (int i5 = 0; i5 < i4; i5++) {
                if (drawableArr[i5] != null) {
                    boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? drawableArr[i5].setLayoutDirection(i2) : false;
                    if (i5 == i3) {
                        z = layoutDirection;
                    }
                }
            }
            this.z = i2;
            return z;
        }

        public final void b(boolean z) {
            this.f915i = z;
        }

        protected void b() {
            this.m = true;
            n();
            int i2 = this.f914h;
            Drawable[] drawableArr = this.f913g;
            this.o = -1;
            this.n = -1;
            this.q = 0;
            this.p = 0;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.n) {
                    this.n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.o) {
                    this.o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.p) {
                    this.p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.q) {
                    this.q = minimumHeight;
                }
            }
        }

        public final Drawable a(int i2) {
            int indexOfKey;
            Drawable drawable = this.f913g[i2];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f912f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i2)) < 0) {
                return null;
            }
            Drawable b2 = b(this.f912f.valueAt(indexOfKey).newDrawable(this.f908b));
            this.f913g[i2] = b2;
            this.f912f.removeAt(indexOfKey);
            if (this.f912f.size() == 0) {
                this.f912f = null;
            }
            return b2;
        }

        final void a(Resources resources) {
            if (resources != null) {
                this.f908b = resources;
                int a2 = b.a(resources, this.f909c);
                int i2 = this.f909c;
                this.f909c = a2;
                if (i2 != a2) {
                    this.m = false;
                    this.f916j = false;
                }
            }
        }

        public final void b(int i2) {
            this.A = i2;
        }

        @RequiresApi(21)
        final void a(Resources.Theme theme) {
            if (theme != null) {
                n();
                int i2 = this.f914h;
                Drawable[] drawableArr = this.f913g;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3] != null && drawableArr[i3].canApplyTheme()) {
                        drawableArr[i3].applyTheme(theme);
                        this.f911e |= drawableArr[i3].getChangingConfigurations();
                    }
                }
                a(theme.getResources());
            }
        }

        public final void a(boolean z) {
            this.f918l = z;
        }

        public void a(int i2, int i3) {
            Drawable[] drawableArr = new Drawable[i3];
            System.arraycopy(this.f913g, 0, drawableArr, 0, i2);
            this.f913g = drawableArr;
        }

        public synchronized boolean a() {
            if (this.v) {
                return this.w;
            }
            n();
            this.v = true;
            int i2 = this.f914h;
            Drawable[] drawableArr = this.f913g;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getConstantState() == null) {
                    this.w = false;
                    return false;
                }
            }
            this.w = true;
            return true;
        }
    }

    private boolean c() {
        return isAutoMirrored() && androidx.core.graphics.drawable.a.e(this) == 1;
    }

    c a() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(int r10) {
        /*
            r9 = this;
            int r0 = r9.f903k
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            androidx.appcompat.graphics.drawable.b$c r0 = r9.f897e
            int r0 = r0.B
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.f900h
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f899g
            if (r0 == 0) goto L29
            r9.f900h = r0
            androidx.appcompat.graphics.drawable.b$c r0 = r9.f897e
            int r0 = r0.B
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.o = r0
            goto L35
        L29:
            r9.f900h = r4
            r9.o = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f899g
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            androidx.appcompat.graphics.drawable.b$c r0 = r9.f897e
            int r1 = r0.f914h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.a(r10)
            r9.f899g = r0
            r9.f903k = r10
            if (r0 == 0) goto L5a
            androidx.appcompat.graphics.drawable.b$c r10 = r9.f897e
            int r10 = r10.A
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.n = r2
        L51:
            r9.a(r0)
            goto L5a
        L55:
            r9.f899g = r4
            r10 = -1
            r9.f903k = r10
        L5a:
            long r0 = r9.n
            r10 = 1
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L67
            long r0 = r9.o
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L79
        L67:
            java.lang.Runnable r0 = r9.m
            if (r0 != 0) goto L73
            androidx.appcompat.graphics.drawable.b$a r0 = new androidx.appcompat.graphics.drawable.b$a
            r0.<init>()
            r9.m = r0
            goto L76
        L73:
            r9.unscheduleSelf(r0)
        L76:
            r9.a(r10)
        L79:
            r9.invalidateSelf()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.b.a(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        this.f897e.a(theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f903k;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public boolean canApplyTheme() {
        return this.f897e.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable = this.f899g;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f900h;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f901i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f897e.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f897e.a()) {
            return null;
        }
        this.f897e.f910d = getChangingConfigurations();
        return this.f897e;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f899g;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(@NonNull Rect rect) {
        Rect rect2 = this.f898f;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f897e.l()) {
            return this.f897e.e();
        }
        Drawable drawable = this.f899g;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f897e.l()) {
            return this.f897e.i();
        }
        Drawable drawable = this.f899g;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f897e.l()) {
            return this.f897e.f();
        }
        Drawable drawable = this.f899g;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f897e.l()) {
            return this.f897e.g();
        }
        Drawable drawable = this.f899g;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f899g;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f897e.j();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void getOutline(@NonNull Outline outline) {
        Drawable drawable = this.f899g;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        boolean padding;
        Rect h2 = this.f897e.h();
        if (h2 != null) {
            rect.set(h2);
            padding = (h2.right | ((h2.left | h2.top) | h2.bottom)) != 0;
        } else {
            Drawable drawable = this.f899g;
            if (drawable != null) {
                padding = drawable.getPadding(rect);
            } else {
                padding = super.getPadding(rect);
            }
        }
        if (c()) {
            int i2 = rect.left;
            rect.left = rect.right;
            rect.right = i2;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        c cVar = this.f897e;
        if (cVar != null) {
            cVar.k();
        }
        if (drawable != this.f899g || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f897e.C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f900h;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f900h = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f899g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f902j) {
                this.f899g.setAlpha(this.f901i);
            }
        }
        if (this.o != 0) {
            this.o = 0L;
            z = true;
        }
        if (this.n != 0) {
            this.n = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f904l && super.mutate() == this) {
            c a2 = a();
            a2.m();
            a(a2);
            this.f904l = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f900h;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f899g;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i2) {
        return this.f897e.b(i2, b());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        Drawable drawable = this.f900h;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        Drawable drawable2 = this.f899g;
        if (drawable2 != null) {
            return drawable2.setLevel(i2);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f900h;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f899g;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j2) {
        if (drawable != this.f899g || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.f902j && this.f901i == i2) {
            return;
        }
        this.f902j = true;
        this.f901i = i2;
        Drawable drawable = this.f899g;
        if (drawable != null) {
            if (this.n == 0) {
                drawable.setAlpha(i2);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        c cVar = this.f897e;
        if (cVar.C != z) {
            cVar.C = z;
            Drawable drawable = this.f899g;
            if (drawable != null) {
                androidx.core.graphics.drawable.a.a(drawable, cVar.C);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        c cVar = this.f897e;
        cVar.E = true;
        if (cVar.D != colorFilter) {
            cVar.D = colorFilter;
            Drawable drawable = this.f899g;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        c cVar = this.f897e;
        if (cVar.x != z) {
            cVar.x = z;
            Drawable drawable = this.f899g;
            if (drawable != null) {
                drawable.setDither(cVar.x);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f2, float f3) {
        Drawable drawable = this.f899g;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, f2, f3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        Rect rect = this.f898f;
        if (rect == null) {
            this.f898f = new Rect(i2, i3, i4, i5);
        } else {
            rect.set(i2, i3, i4, i5);
        }
        Drawable drawable = this.f899g;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, i2, i3, i4, i5);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        c cVar = this.f897e;
        cVar.H = true;
        if (cVar.F != colorStateList) {
            cVar.F = colorStateList;
            androidx.core.graphics.drawable.a.a(this.f899g, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        c cVar = this.f897e;
        cVar.I = true;
        if (cVar.G != mode) {
            cVar.G = mode;
            androidx.core.graphics.drawable.a.a(this.f899g, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f900h;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f899g;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        if (drawable != this.f899g || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }

    private void a(Drawable drawable) {
        if (this.p == null) {
            this.p = new C0023b();
        }
        C0023b c0023b = this.p;
        c0023b.a(drawable.getCallback());
        drawable.setCallback(c0023b);
        try {
            if (this.f897e.A <= 0 && this.f902j) {
                drawable.setAlpha(this.f901i);
            }
            if (this.f897e.E) {
                drawable.setColorFilter(this.f897e.D);
            } else {
                if (this.f897e.H) {
                    androidx.core.graphics.drawable.a.a(drawable, this.f897e.F);
                }
                if (this.f897e.I) {
                    androidx.core.graphics.drawable.a.a(drawable, this.f897e.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f897e.x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f897e.C);
            }
            Rect rect = this.f898f;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.p.a());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f902j = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f899g
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r7 = 0
            if (r3 == 0) goto L38
            long r9 = r13.n
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 == 0) goto L3a
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.f901i
            r3.setAlpha(r9)
            r13.n = r7
            goto L3a
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r10 = (int) r9
            androidx.appcompat.graphics.drawable.b$c r9 = r13.f897e
            int r9 = r9.A
            int r10 = r10 / r9
            int r9 = 255 - r10
            int r10 = r13.f901i
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = 1
            goto L3b
        L38:
            r13.n = r7
        L3a:
            r3 = 0
        L3b:
            android.graphics.drawable.Drawable r9 = r13.f900h
            if (r9 == 0) goto L65
            long r10 = r13.o
            int r12 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r12 == 0) goto L67
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L52
            r9.setVisible(r6, r6)
            r0 = 0
            r13.f900h = r0
            r13.o = r7
            goto L67
        L52:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            androidx.appcompat.graphics.drawable.b$c r4 = r13.f897e
            int r4 = r4.B
            int r3 = r3 / r4
            int r4 = r13.f901i
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L68
        L65:
            r13.o = r7
        L67:
            r0 = r3
        L68:
            if (r14 == 0) goto L74
            if (r0 == 0) goto L74
            java.lang.Runnable r14 = r13.m
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.b.a(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Resources resources) {
        this.f897e.a(resources);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        this.f897e = cVar;
        int i2 = this.f903k;
        if (i2 >= 0) {
            this.f899g = cVar.a(i2);
            Drawable drawable = this.f899g;
            if (drawable != null) {
                a(drawable);
            }
        }
        this.f900h = null;
    }

    static int a(@Nullable Resources resources, int i2) {
        if (resources != null) {
            i2 = resources.getDisplayMetrics().densityDpi;
        }
        return i2 == 0 ? BlobStatic.MONITOR_IMAGE_WIDTH : i2;
    }
}
