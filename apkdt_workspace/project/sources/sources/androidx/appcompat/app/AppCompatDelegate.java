package androidx.appcompat.app;

import a.a.n.b;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.Toolbar;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class AppCompatDelegate {

    /* renamed from: e, reason: collision with root package name */
    private static int f780e = -100;

    /* renamed from: f, reason: collision with root package name */
    private static final a.e.b<WeakReference<AppCompatDelegate>> f781f = new a.e.b<>();

    /* renamed from: g, reason: collision with root package name */
    private static final Object f782g = new Object();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface NightMode {
    }

    @NonNull
    public static AppCompatDelegate a(@NonNull Activity activity, @Nullable d dVar) {
        return new AppCompatDelegateImpl(activity, dVar);
    }

    private static void c(@NonNull AppCompatDelegate appCompatDelegate) {
        synchronized (f782g) {
            Iterator<WeakReference<AppCompatDelegate>> it = f781f.iterator();
            while (it.hasNext()) {
                AppCompatDelegate appCompatDelegate2 = it.next().get();
                if (appCompatDelegate2 == appCompatDelegate || appCompatDelegate2 == null) {
                    it.remove();
                }
            }
        }
    }

    public static int k() {
        return f780e;
    }

    @Nullable
    public abstract a.a.n.b a(@NonNull b.a aVar);

    @Nullable
    public abstract <T extends View> T a(@IdRes int i2);

    @Nullable
    public abstract a a();

    @Deprecated
    public void a(Context context) {
    }

    public abstract void a(Configuration configuration);

    public abstract void a(Bundle bundle);

    public abstract void a(View view);

    public abstract void a(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void a(@Nullable Toolbar toolbar);

    public abstract void a(@Nullable CharSequence charSequence);

    public int b() {
        return -100;
    }

    @NonNull
    @CallSuper
    public Context b(@NonNull Context context) {
        a(context);
        return context;
    }

    public abstract void b(Bundle bundle);

    public abstract void b(View view, ViewGroup.LayoutParams layoutParams);

    public abstract boolean b(int i2);

    public abstract MenuInflater c();

    public abstract void c(@LayoutRes int i2);

    public abstract void c(Bundle bundle);

    @Nullable
    public abstract ActionBar d();

    public void d(@StyleRes int i2) {
    }

    public abstract void e();

    public abstract void f();

    public abstract void g();

    public abstract void h();

    public abstract void i();

    public abstract void j();

    @NonNull
    public static AppCompatDelegate a(@NonNull Dialog dialog, @Nullable d dVar) {
        return new AppCompatDelegateImpl(dialog, dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(@NonNull AppCompatDelegate appCompatDelegate) {
        synchronized (f782g) {
            c(appCompatDelegate);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull AppCompatDelegate appCompatDelegate) {
        synchronized (f782g) {
            c(appCompatDelegate);
            f781f.add(new WeakReference<>(appCompatDelegate));
        }
    }
}
