package androidx.core.view;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: KeyEventDispatcher.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f1952a = false;

    /* renamed from: b, reason: collision with root package name */
    private static Method f1953b = null;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f1954c = false;

    /* renamed from: d, reason: collision with root package name */
    private static Field f1955d;

    /* compiled from: KeyEventDispatcher.java */
    /* loaded from: classes.dex */
    public interface a {
        boolean superDispatchKeyEvent(KeyEvent keyEvent);
    }

    public static boolean a(@NonNull View view, @NonNull KeyEvent keyEvent) {
        return ViewCompat.b(view, keyEvent);
    }

    public static boolean a(@NonNull a aVar, @Nullable View view, @Nullable Window.Callback callback, @NonNull KeyEvent keyEvent) {
        if (aVar == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return aVar.superDispatchKeyEvent(keyEvent);
        }
        if (callback instanceof Activity) {
            return a((Activity) callback, keyEvent);
        }
        if (callback instanceof Dialog) {
            return a((Dialog) callback, keyEvent);
        }
        return (view != null && ViewCompat.a(view, keyEvent)) || aVar.superDispatchKeyEvent(keyEvent);
    }

    private static boolean a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f1952a) {
            try {
                f1953b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException unused) {
            }
            f1952a = true;
        }
        Method method = f1953b;
        if (method != null) {
            try {
                return ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        return false;
    }

    private static boolean a(Activity activity, KeyEvent keyEvent) {
        activity.onUserInteraction();
        Window window = activity.getWindow();
        if (window.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && a(actionBar, keyEvent)) {
                return true;
            }
        }
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (ViewCompat.a(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
    }

    private static DialogInterface.OnKeyListener a(Dialog dialog) {
        if (!f1954c) {
            try {
                f1955d = Dialog.class.getDeclaredField("mOnKeyListener");
                f1955d.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f1954c = true;
        }
        Field field = f1955d;
        if (field == null) {
            return null;
        }
        try {
            return (DialogInterface.OnKeyListener) field.get(dialog);
        } catch (IllegalAccessException unused2) {
            return null;
        }
    }

    private static boolean a(Dialog dialog, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener a2 = a(dialog);
        if (a2 != null && a2.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        Window window = dialog.getWindow();
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (ViewCompat.a(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
    }
}
