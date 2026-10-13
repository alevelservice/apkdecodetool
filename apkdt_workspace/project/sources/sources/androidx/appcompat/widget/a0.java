package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* compiled from: TintContextWrapper.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class a0 extends ContextWrapper {

    /* renamed from: c, reason: collision with root package name */
    private static final Object f1278c = new Object();

    /* renamed from: d, reason: collision with root package name */
    private static ArrayList<WeakReference<a0>> f1279d;

    /* renamed from: a, reason: collision with root package name */
    private final Resources f1280a;

    /* renamed from: b, reason: collision with root package name */
    private final Resources.Theme f1281b;

    private a0(@NonNull Context context) {
        super(context);
        if (i0.b()) {
            this.f1280a = new i0(this, context.getResources());
            this.f1281b = this.f1280a.newTheme();
            this.f1281b.setTo(context.getTheme());
        } else {
            this.f1280a = new c0(this, context.getResources());
            this.f1281b = null;
        }
    }

    private static boolean a(@NonNull Context context) {
        if ((context instanceof a0) || (context.getResources() instanceof c0) || (context.getResources() instanceof i0)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || i0.b();
    }

    public static Context b(@NonNull Context context) {
        if (!a(context)) {
            return context;
        }
        synchronized (f1278c) {
            if (f1279d == null) {
                f1279d = new ArrayList<>();
            } else {
                for (int size = f1279d.size() - 1; size >= 0; size--) {
                    WeakReference<a0> weakReference = f1279d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f1279d.remove(size);
                    }
                }
                for (int size2 = f1279d.size() - 1; size2 >= 0; size2--) {
                    WeakReference<a0> weakReference2 = f1279d.get(size2);
                    a0 a0Var = weakReference2 != null ? weakReference2.get() : null;
                    if (a0Var != null && a0Var.getBaseContext() == context) {
                        return a0Var;
                    }
                }
            }
            a0 a0Var2 = new a0(context);
            f1279d.add(new WeakReference<>(a0Var2));
            return a0Var2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f1280a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f1280a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f1281b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        Resources.Theme theme = this.f1281b;
        if (theme == null) {
            super.setTheme(i2);
        } else {
            theme.applyStyle(i2, true);
        }
    }
}
