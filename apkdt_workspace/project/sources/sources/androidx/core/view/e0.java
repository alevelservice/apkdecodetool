package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.WindowInsets;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Objects;

/* compiled from: WindowInsetsCompat.java */
/* loaded from: classes.dex */
public class e0 {

    /* renamed from: b, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static final e0 f1938b = new a().a().a().b().c();

    /* renamed from: a, reason: collision with root package name */
    private final i f1939a;

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final d f1940a;

        public a() {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 29) {
                this.f1940a = new c();
            } else if (i2 >= 20) {
                this.f1940a = new b();
            } else {
                this.f1940a = new d();
            }
        }

        @NonNull
        public a a(@NonNull a.i.h.b bVar) {
            this.f1940a.a(bVar);
            return this;
        }

        @NonNull
        public a b(@NonNull a.i.h.b bVar) {
            this.f1940a.b(bVar);
            return this;
        }

        @NonNull
        public e0 a() {
            return this.f1940a.a();
        }

        public a(@NonNull e0 e0Var) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 29) {
                this.f1940a = new c(e0Var);
            } else if (i2 >= 20) {
                this.f1940a = new b(e0Var);
            } else {
                this.f1940a = new d(e0Var);
            }
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    @RequiresApi(api = 29)
    /* loaded from: classes.dex */
    private static class c extends d {

        /* renamed from: b, reason: collision with root package name */
        final WindowInsets.Builder f1946b;

        c() {
            this.f1946b = new WindowInsets.Builder();
        }

        @Override // androidx.core.view.e0.d
        void a(@NonNull a.i.h.b bVar) {
            this.f1946b.setStableInsets(bVar.a());
        }

        @Override // androidx.core.view.e0.d
        void b(@NonNull a.i.h.b bVar) {
            this.f1946b.setSystemWindowInsets(bVar.a());
        }

        @Override // androidx.core.view.e0.d
        @NonNull
        e0 a() {
            return e0.a(this.f1946b.build());
        }

        c(@NonNull e0 e0Var) {
            WindowInsets.Builder builder;
            WindowInsets k2 = e0Var.k();
            if (k2 != null) {
                builder = new WindowInsets.Builder(k2);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.f1946b = builder;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private final e0 f1947a;

        d() {
            this(new e0((e0) null));
        }

        @NonNull
        e0 a() {
            return this.f1947a;
        }

        void a(@NonNull a.i.h.b bVar) {
        }

        void b(@NonNull a.i.h.b bVar) {
        }

        d(@NonNull e0 e0Var) {
            this.f1947a = e0Var;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    @RequiresApi(28)
    /* loaded from: classes.dex */
    private static class g extends f {
        g(@NonNull e0 e0Var, @NonNull WindowInsets windowInsets) {
            super(e0Var, windowInsets);
        }

        @Override // androidx.core.view.e0.i
        @NonNull
        e0 a() {
            return e0.a(this.f1948b.consumeDisplayCutout());
        }

        @Override // androidx.core.view.e0.i
        @Nullable
        androidx.core.view.c d() {
            return androidx.core.view.c.a(this.f1948b.getDisplayCutout());
        }

        @Override // androidx.core.view.e0.i
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof g) {
                return Objects.equals(this.f1948b, ((g) obj).f1948b);
            }
            return false;
        }

        @Override // androidx.core.view.e0.i
        public int hashCode() {
            return this.f1948b.hashCode();
        }

        g(@NonNull e0 e0Var, @NonNull g gVar) {
            super(e0Var, gVar);
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    private static class h extends g {
        h(@NonNull e0 e0Var, @NonNull WindowInsets windowInsets) {
            super(e0Var, windowInsets);
        }

        @Override // androidx.core.view.e0.e, androidx.core.view.e0.i
        @NonNull
        e0 a(int i2, int i3, int i4, int i5) {
            return e0.a(this.f1948b.inset(i2, i3, i4, i5));
        }

        h(@NonNull e0 e0Var, @NonNull h hVar) {
            super(e0Var, hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class i {

        /* renamed from: a, reason: collision with root package name */
        final e0 f1951a;

        i(@NonNull e0 e0Var) {
            this.f1951a = e0Var;
        }

        @NonNull
        e0 a() {
            return this.f1951a;
        }

        @NonNull
        e0 b() {
            return this.f1951a;
        }

        @NonNull
        e0 c() {
            return this.f1951a;
        }

        @Nullable
        androidx.core.view.c d() {
            return null;
        }

        @NonNull
        a.i.h.b e() {
            return a.i.h.b.f291e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return h() == iVar.h() && g() == iVar.g() && a.i.m.d.a(f(), iVar.f()) && a.i.m.d.a(e(), iVar.e()) && a.i.m.d.a(d(), iVar.d());
        }

        @NonNull
        a.i.h.b f() {
            return a.i.h.b.f291e;
        }

        boolean g() {
            return false;
        }

        boolean h() {
            return false;
        }

        public int hashCode() {
            return a.i.m.d.a(Boolean.valueOf(h()), Boolean.valueOf(g()), f(), e(), d());
        }

        @NonNull
        e0 a(int i2, int i3, int i4, int i5) {
            return e0.f1938b;
        }
    }

    @RequiresApi(20)
    private e0(@NonNull WindowInsets windowInsets) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            this.f1939a = new h(this, windowInsets);
            return;
        }
        if (i2 >= 28) {
            this.f1939a = new g(this, windowInsets);
            return;
        }
        if (i2 >= 21) {
            this.f1939a = new f(this, windowInsets);
        } else if (i2 >= 20) {
            this.f1939a = new e(this, windowInsets);
        } else {
            this.f1939a = new i(this);
        }
    }

    @NonNull
    @RequiresApi(20)
    public static e0 a(@NonNull WindowInsets windowInsets) {
        a.i.m.i.a(windowInsets);
        return new e0(windowInsets);
    }

    @NonNull
    @Deprecated
    public e0 b(int i2, int i3, int i4, int i5) {
        a aVar = new a(this);
        aVar.b(a.i.h.b.a(i2, i3, i4, i5));
        return aVar.a();
    }

    @NonNull
    public e0 c() {
        return this.f1939a.c();
    }

    public int d() {
        return h().f295d;
    }

    public int e() {
        return h().f292a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e0) {
            return a.i.m.d.a(this.f1939a, ((e0) obj).f1939a);
        }
        return false;
    }

    public int f() {
        return h().f294c;
    }

    public int g() {
        return h().f293b;
    }

    @NonNull
    public a.i.h.b h() {
        return this.f1939a.f();
    }

    public int hashCode() {
        i iVar = this.f1939a;
        if (iVar == null) {
            return 0;
        }
        return iVar.hashCode();
    }

    public boolean i() {
        return !h().equals(a.i.h.b.f291e);
    }

    public boolean j() {
        return this.f1939a.g();
    }

    @Nullable
    @RequiresApi(20)
    public WindowInsets k() {
        i iVar = this.f1939a;
        if (iVar instanceof e) {
            return ((e) iVar).f1948b;
        }
        return null;
    }

    /* compiled from: WindowInsetsCompat.java */
    @RequiresApi(api = 20)
    /* loaded from: classes.dex */
    private static class b extends d {

        /* renamed from: c, reason: collision with root package name */
        private static Field f1941c = null;

        /* renamed from: d, reason: collision with root package name */
        private static boolean f1942d = false;

        /* renamed from: e, reason: collision with root package name */
        private static Constructor<WindowInsets> f1943e = null;

        /* renamed from: f, reason: collision with root package name */
        private static boolean f1944f = false;

        /* renamed from: b, reason: collision with root package name */
        private WindowInsets f1945b;

        b() {
            this.f1945b = b();
        }

        @Override // androidx.core.view.e0.d
        @NonNull
        e0 a() {
            return e0.a(this.f1945b);
        }

        @Override // androidx.core.view.e0.d
        void b(@NonNull a.i.h.b bVar) {
            WindowInsets windowInsets = this.f1945b;
            if (windowInsets != null) {
                this.f1945b = windowInsets.replaceSystemWindowInsets(bVar.f292a, bVar.f293b, bVar.f294c, bVar.f295d);
            }
        }

        b(@NonNull e0 e0Var) {
            this.f1945b = e0Var.k();
        }

        @Nullable
        private static WindowInsets b() {
            if (!f1942d) {
                try {
                    f1941c = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException unused) {
                }
                f1942d = true;
            }
            Field field = f1941c;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException unused2) {
                }
            }
            if (!f1944f) {
                try {
                    f1943e = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException unused3) {
                }
                f1944f = true;
            }
            Constructor<WindowInsets> constructor = f1943e;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException unused4) {
                }
            }
            return null;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    private static class f extends e {

        /* renamed from: d, reason: collision with root package name */
        private a.i.h.b f1950d;

        f(@NonNull e0 e0Var, @NonNull WindowInsets windowInsets) {
            super(e0Var, windowInsets);
            this.f1950d = null;
        }

        @Override // androidx.core.view.e0.i
        @NonNull
        e0 b() {
            return e0.a(this.f1948b.consumeStableInsets());
        }

        @Override // androidx.core.view.e0.i
        @NonNull
        e0 c() {
            return e0.a(this.f1948b.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.e0.i
        @NonNull
        final a.i.h.b e() {
            if (this.f1950d == null) {
                this.f1950d = a.i.h.b.a(this.f1948b.getStableInsetLeft(), this.f1948b.getStableInsetTop(), this.f1948b.getStableInsetRight(), this.f1948b.getStableInsetBottom());
            }
            return this.f1950d;
        }

        @Override // androidx.core.view.e0.i
        boolean g() {
            return this.f1948b.isConsumed();
        }

        f(@NonNull e0 e0Var, @NonNull f fVar) {
            super(e0Var, fVar);
            this.f1950d = null;
        }
    }

    @NonNull
    public e0 a() {
        return this.f1939a.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WindowInsetsCompat.java */
    @RequiresApi(20)
    /* loaded from: classes.dex */
    public static class e extends i {

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        final WindowInsets f1948b;

        /* renamed from: c, reason: collision with root package name */
        private a.i.h.b f1949c;

        e(@NonNull e0 e0Var, @NonNull WindowInsets windowInsets) {
            super(e0Var);
            this.f1949c = null;
            this.f1948b = windowInsets;
        }

        @Override // androidx.core.view.e0.i
        @NonNull
        e0 a(int i2, int i3, int i4, int i5) {
            a aVar = new a(e0.a(this.f1948b));
            aVar.b(e0.a(f(), i2, i3, i4, i5));
            aVar.a(e0.a(e(), i2, i3, i4, i5));
            return aVar.a();
        }

        @Override // androidx.core.view.e0.i
        @NonNull
        final a.i.h.b f() {
            if (this.f1949c == null) {
                this.f1949c = a.i.h.b.a(this.f1948b.getSystemWindowInsetLeft(), this.f1948b.getSystemWindowInsetTop(), this.f1948b.getSystemWindowInsetRight(), this.f1948b.getSystemWindowInsetBottom());
            }
            return this.f1949c;
        }

        @Override // androidx.core.view.e0.i
        boolean h() {
            return this.f1948b.isRound();
        }

        e(@NonNull e0 e0Var, @NonNull e eVar) {
            this(e0Var, new WindowInsets(eVar.f1948b));
        }
    }

    @NonNull
    public e0 a(@IntRange(from = 0) int i2, @IntRange(from = 0) int i3, @IntRange(from = 0) int i4, @IntRange(from = 0) int i5) {
        return this.f1939a.a(i2, i3, i4, i5);
    }

    static a.i.h.b a(a.i.h.b bVar, int i2, int i3, int i4, int i5) {
        int max = Math.max(0, bVar.f292a - i2);
        int max2 = Math.max(0, bVar.f293b - i3);
        int max3 = Math.max(0, bVar.f294c - i4);
        int max4 = Math.max(0, bVar.f295d - i5);
        return (max == i2 && max2 == i3 && max3 == i4 && max4 == i5) ? bVar : a.i.h.b.a(max, max2, max3, max4);
    }

    @NonNull
    public e0 b() {
        return this.f1939a.b();
    }

    public e0(@Nullable e0 e0Var) {
        if (e0Var != null) {
            i iVar = e0Var.f1939a;
            if (Build.VERSION.SDK_INT >= 29 && (iVar instanceof h)) {
                this.f1939a = new h(this, (h) iVar);
                return;
            }
            if (Build.VERSION.SDK_INT >= 28 && (iVar instanceof g)) {
                this.f1939a = new g(this, (g) iVar);
                return;
            }
            if (Build.VERSION.SDK_INT >= 21 && (iVar instanceof f)) {
                this.f1939a = new f(this, (f) iVar);
                return;
            } else if (Build.VERSION.SDK_INT >= 20 && (iVar instanceof e)) {
                this.f1939a = new e(this, (e) iVar);
                return;
            } else {
                this.f1939a = new i(this);
                return;
            }
        }
        this.f1939a = new i(this);
    }
}
