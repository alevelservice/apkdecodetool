package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public final class m {
    @NonNull
    @KeepForSdk
    public static <T> T a(@Nullable T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("null reference");
    }

    @KeepForSdk
    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return str;
    }

    @KeepForSdk
    public static void c(String str) {
        if (com.google.android.gms.common.util.y.a()) {
            throw new IllegalStateException(str);
        }
    }

    @KeepForSdk
    public static String a(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    @KeepForSdk
    public static void b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    @NonNull
    @KeepForSdk
    public static <T> T a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @KeepForSdk
    public static void b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    @KeepForSdk
    public static int a(int i2) {
        if (i2 != 0) {
            return i2;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    @KeepForSdk
    public static void b(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    @KeepForSdk
    public static void a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @KeepForSdk
    public static void a(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    @KeepForSdk
    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    @KeepForSdk
    public static void a(String str) {
        if (!com.google.android.gms.common.util.y.a()) {
            throw new IllegalStateException(str);
        }
    }

    @KeepForSdk
    public static void a() {
        c("Must not be called on the main application thread");
    }

    @KeepForSdk
    public static void a(Handler handler) {
        String name = Looper.myLooper() != null ? Looper.myLooper().getThread().getName() : "null current looper";
        String name2 = handler.getLooper().getThread().getName();
        StringBuilder sb = new StringBuilder(String.valueOf(name2).length() + 36 + String.valueOf(name).length());
        sb.append("Must be called on ");
        sb.append(name2);
        sb.append(" thread, but got ");
        sb.append(name);
        sb.append(".");
        a(handler, sb.toString());
    }

    @KeepForSdk
    public static void a(Handler handler, String str) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException(str);
        }
    }
}
