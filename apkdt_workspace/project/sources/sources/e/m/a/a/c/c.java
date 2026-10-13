package e.m.a.a.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import e.m.a.a.a;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MapboxUncaughtExceptionHanlder.java */
/* loaded from: classes2.dex */
public class c implements Thread.UncaughtExceptionHandler, SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f18026a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f18027b;

    /* renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f18028c = new AtomicBoolean(true);

    /* renamed from: d, reason: collision with root package name */
    private final String f18029d;

    /* renamed from: e, reason: collision with root package name */
    private final String f18030e;

    /* renamed from: f, reason: collision with root package name */
    private int f18031f;

    @VisibleForTesting
    c(@NonNull Context context, @NonNull SharedPreferences sharedPreferences, @NonNull String str, @NonNull String str2, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.f18027b = context;
            this.f18029d = str;
            this.f18030e = str2;
            this.f18031f = 2;
            this.f18026a = uncaughtExceptionHandler;
            a(sharedPreferences);
            return;
        }
        throw new IllegalArgumentException("Invalid package name: " + str + " or version: " + str2);
    }

    public static void a(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        Context context2 = context;
        Thread.setDefaultUncaughtExceptionHandler(new c(context2, context2.getSharedPreferences("MapboxCrashReporterPrefs", 0), str, str2, Thread.getDefaultUncaughtExceptionHandler()));
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("mapbox.crash.enable".equals(str)) {
            try {
                this.f18028c.set(sharedPreferences.getBoolean("mapbox.crash.enable", false));
            } catch (Exception e2) {
                e2.toString();
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (this.f18028c.get()) {
            List<Throwable> a2 = a(th);
            if (a(a2)) {
                try {
                    b a3 = b.a(this.f18027b, this.f18029d, this.f18030e);
                    a3.a(thread);
                    a3.a(a2);
                    a a4 = a3.a();
                    a(this.f18027b, this.f18029d);
                    e.m.a.a.a.a(e.m.a.a.a.a(this.f18027b, a(this.f18029d, a4.a())), a4.b());
                } catch (Exception e2) {
                    e2.toString();
                }
            }
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f18026a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }

    @VisibleForTesting
    boolean a(List<Throwable> list) {
        Iterator<Throwable> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                return false;
            }
            for (StackTraceElement stackTraceElement : it.next().getStackTrace()) {
                if (a(stackTraceElement)) {
                    return true;
                }
            }
        }
    }

    @VisibleForTesting
    List<Throwable> a(@Nullable Throwable th) {
        ArrayList arrayList = new ArrayList(4);
        int i2 = 0;
        while (th != null) {
            i2++;
            if (a(i2)) {
                arrayList.add(th);
            }
            th = th.getCause();
        }
        return Collections.unmodifiableList(arrayList);
    }

    private boolean a(@NonNull StackTraceElement stackTraceElement) {
        return stackTraceElement.getClassName().startsWith(this.f18029d);
    }

    private boolean a(int i2) {
        return i2 >= this.f18031f;
    }

    @VisibleForTesting
    static void a(@NonNull Context context, @NonNull String str) {
        File a2 = e.m.a.a.a.a(context, str);
        if (!a2.exists()) {
            a2.mkdir();
        }
        File[] a3 = e.m.a.a.a.a(a2);
        if (a3.length >= 10) {
            e.m.a.a.a.a(a3, new a.C0205a(), 9);
        }
    }

    @NonNull
    @VisibleForTesting
    static String a(@NonNull String str, @NonNull String str2) {
        return String.format("%s/%s.crash", str, str2);
    }

    private void a(SharedPreferences sharedPreferences) {
        try {
            this.f18028c.set(sharedPreferences.getBoolean("mapbox.crash.enable", true));
        } catch (Exception e2) {
            e2.toString();
        }
        sharedPreferences.registerOnSharedPreferenceChangeListener(this);
    }
}
