package a.a.k.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.u;
import java.util.WeakHashMap;

/* compiled from: AppCompatResources.java */
@SuppressLint({"RestrictedAPI"})
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f0a = new ThreadLocal<>();

    /* renamed from: b, reason: collision with root package name */
    private static final WeakHashMap<Context, SparseArray<C0000a>> f1b = new WeakHashMap<>(0);

    /* renamed from: c, reason: collision with root package name */
    private static final Object f2c = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppCompatResources.java */
    /* renamed from: a.a.k.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0000a {

        /* renamed from: a, reason: collision with root package name */
        final ColorStateList f3a;

        /* renamed from: b, reason: collision with root package name */
        final Configuration f4b;

        C0000a(@NonNull ColorStateList colorStateList, @NonNull Configuration configuration) {
            this.f3a = colorStateList;
            this.f4b = configuration;
        }
    }

    @Nullable
    private static ColorStateList a(@NonNull Context context, @ColorRes int i2) {
        C0000a c0000a;
        synchronized (f2c) {
            SparseArray<C0000a> sparseArray = f1b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (c0000a = sparseArray.get(i2)) != null) {
                if (c0000a.f4b.equals(context.getResources().getConfiguration())) {
                    return c0000a.f3a;
                }
                sparseArray.remove(i2);
            }
            return null;
        }
    }

    public static ColorStateList b(@NonNull Context context, @ColorRes int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i2);
        }
        ColorStateList a2 = a(context, i2);
        if (a2 != null) {
            return a2;
        }
        ColorStateList d2 = d(context, i2);
        if (d2 != null) {
            a(context, i2, d2);
            return d2;
        }
        return androidx.core.content.a.b(context, i2);
    }

    @Nullable
    public static Drawable c(@NonNull Context context, @DrawableRes int i2) {
        return u.a().a(context, i2);
    }

    @Nullable
    private static ColorStateList d(Context context, int i2) {
        if (e(context, i2)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return androidx.core.content.res.a.a(resources, resources.getXml(i2), context.getTheme());
        } catch (Exception unused) {
            return null;
        }
    }

    private static boolean e(@NonNull Context context, @ColorRes int i2) {
        Resources resources = context.getResources();
        TypedValue a2 = a();
        resources.getValue(i2, a2, true);
        int i3 = a2.type;
        return i3 >= 28 && i3 <= 31;
    }

    private static void a(@NonNull Context context, @ColorRes int i2, @NonNull ColorStateList colorStateList) {
        synchronized (f2c) {
            SparseArray<C0000a> sparseArray = f1b.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                f1b.put(context, sparseArray);
            }
            sparseArray.append(i2, new C0000a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    @NonNull
    private static TypedValue a() {
        TypedValue typedValue = f0a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        f0a.set(typedValue2);
        return typedValue2;
    }
}
