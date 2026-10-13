package androidx.fragment.app;

import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.e;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* compiled from: FragmentTransaction.java */
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: b, reason: collision with root package name */
    int f2242b;

    /* renamed from: c, reason: collision with root package name */
    int f2243c;

    /* renamed from: d, reason: collision with root package name */
    int f2244d;

    /* renamed from: e, reason: collision with root package name */
    int f2245e;

    /* renamed from: f, reason: collision with root package name */
    int f2246f;

    /* renamed from: g, reason: collision with root package name */
    int f2247g;

    /* renamed from: h, reason: collision with root package name */
    boolean f2248h;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    String f2250j;

    /* renamed from: k, reason: collision with root package name */
    int f2251k;

    /* renamed from: l, reason: collision with root package name */
    CharSequence f2252l;
    int m;
    CharSequence n;
    ArrayList<String> o;
    ArrayList<String> p;
    ArrayList<Runnable> r;

    /* renamed from: a, reason: collision with root package name */
    ArrayList<a> f2241a = new ArrayList<>();

    /* renamed from: i, reason: collision with root package name */
    boolean f2249i = true;
    boolean q = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentTransaction.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        int f2253a;

        /* renamed from: b, reason: collision with root package name */
        Fragment f2254b;

        /* renamed from: c, reason: collision with root package name */
        int f2255c;

        /* renamed from: d, reason: collision with root package name */
        int f2256d;

        /* renamed from: e, reason: collision with root package name */
        int f2257e;

        /* renamed from: f, reason: collision with root package name */
        int f2258f;

        /* renamed from: g, reason: collision with root package name */
        e.b f2259g;

        /* renamed from: h, reason: collision with root package name */
        e.b f2260h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i2, Fragment fragment) {
            this.f2253a = i2;
            this.f2254b = fragment;
            e.b bVar = e.b.RESUMED;
            this.f2259g = bVar;
            this.f2260h = bVar;
        }
    }

    public abstract int a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.f2241a.add(aVar);
        aVar.f2255c = this.f2242b;
        aVar.f2256d = this.f2243c;
        aVar.f2257e = this.f2244d;
        aVar.f2258f = this.f2245e;
    }

    public abstract int b();

    @NonNull
    public j b(@IdRes int i2, @NonNull Fragment fragment, @Nullable String str) {
        if (i2 != 0) {
            a(i2, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    @NonNull
    public j c(@NonNull Fragment fragment) {
        a(new a(3, fragment));
        return this;
    }

    @NonNull
    public j b(@NonNull Fragment fragment) {
        a(new a(6, fragment));
        return this;
    }

    @NonNull
    public j a(@NonNull Fragment fragment, @Nullable String str) {
        a(0, fragment, str, 1);
        return this;
    }

    @NonNull
    public j a(@IdRes int i2, @NonNull Fragment fragment, @Nullable String str) {
        a(i2, fragment, str, 1);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, Fragment fragment, @Nullable String str, int i3) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (!cls.isAnonymousClass() && Modifier.isPublic(modifiers) && (!cls.isMemberClass() || Modifier.isStatic(modifiers))) {
            if (str != null) {
                String str2 = fragment.mTag;
                if (str2 != null && !str.equals(str2)) {
                    throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
                }
                fragment.mTag = str;
            }
            if (i2 != 0) {
                if (i2 != -1) {
                    int i4 = fragment.mFragmentId;
                    if (i4 != 0 && i4 != i2) {
                        throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i2);
                    }
                    fragment.mFragmentId = i2;
                    fragment.mContainerId = i2;
                } else {
                    throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
                }
            }
            a(new a(i3, fragment));
            return;
        }
        throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
    }

    @NonNull
    public j a(@IdRes int i2, @NonNull Fragment fragment) {
        b(i2, fragment, null);
        return this;
    }

    @NonNull
    public j a(@NonNull Fragment fragment) {
        a(new a(7, fragment));
        return this;
    }

    @NonNull
    public j a(@Nullable String str) {
        if (this.f2249i) {
            this.f2248h = true;
            this.f2250j = str;
            return this;
        }
        throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }
}
