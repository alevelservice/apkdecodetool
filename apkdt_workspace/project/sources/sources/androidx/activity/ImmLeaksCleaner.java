package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import java.lang.reflect.Field;

@RequiresApi(19)
/* loaded from: classes.dex */
final class ImmLeaksCleaner implements f {

    /* renamed from: b, reason: collision with root package name */
    private static int f710b;

    /* renamed from: c, reason: collision with root package name */
    private static Field f711c;

    /* renamed from: d, reason: collision with root package name */
    private static Field f712d;

    /* renamed from: e, reason: collision with root package name */
    private static Field f713e;

    /* renamed from: a, reason: collision with root package name */
    private Activity f714a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmLeaksCleaner(Activity activity) {
        this.f714a = activity;
    }

    @Override // androidx.lifecycle.f
    public void a(@NonNull h hVar, @NonNull e.a aVar) {
        if (aVar != e.a.ON_DESTROY) {
            return;
        }
        if (f710b == 0) {
            a();
        }
        if (f710b == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f714a.getSystemService("input_method");
            try {
                Object obj = f711c.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f712d.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                f713e.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (ClassCastException unused2) {
                    } catch (IllegalAccessException unused3) {
                    }
                }
            } catch (IllegalAccessException unused4) {
            }
        }
    }

    @MainThread
    private static void a() {
        try {
            f710b = 2;
            f712d = InputMethodManager.class.getDeclaredField("mServedView");
            f712d.setAccessible(true);
            f713e = InputMethodManager.class.getDeclaredField("mNextServedView");
            f713e.setAccessible(true);
            f711c = InputMethodManager.class.getDeclaredField("mH");
            f711c.setAccessible(true);
            f710b = 1;
        } catch (NoSuchFieldException unused) {
        }
    }
}
