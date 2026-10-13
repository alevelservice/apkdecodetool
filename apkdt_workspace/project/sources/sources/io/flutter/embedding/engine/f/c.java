package io.flutter.embedding.engine.f;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.view.h;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* compiled from: FlutterLoader.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private boolean f19056a = false;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private d f19057b;

    /* renamed from: c, reason: collision with root package name */
    private long f19058c;

    /* renamed from: d, reason: collision with root package name */
    private io.flutter.embedding.engine.f.b f19059d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    Future<C0232c> f19060e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlutterLoader.java */
    /* loaded from: classes2.dex */
    public class a implements Callable<C0232c> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Context f19061e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlutterLoader.java */
        /* renamed from: io.flutter.embedding.engine.f.c$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class RunnableC0231a implements Runnable {
            RunnableC0231a(a aVar) {
            }

            @Override // java.lang.Runnable
            public void run() {
                FlutterJNI.nativePrefetchDefaultFontManager();
            }
        }

        a(Context context) {
            this.f19061e = context;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public C0232c call() {
            io.flutter.embedding.engine.f.d b2 = c.this.b(this.f19061e);
            if (g.a.a.c().b()) {
                System.loadLibrary("flutter");
            }
            Executors.newSingleThreadExecutor().execute(new RunnableC0231a(this));
            a aVar = null;
            if (b2 == null) {
                return new C0232c(g.a.d.a.c(this.f19061e), g.a.d.a.a(this.f19061e), g.a.d.a.b(this.f19061e), aVar);
            }
            b2.a();
            throw null;
        }
    }

    /* compiled from: FlutterLoader.java */
    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Context f19063e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ String[] f19064f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Handler f19065g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ Runnable f19066h;

        /* compiled from: FlutterLoader.java */
        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b bVar = b.this;
                c.this.a(bVar.f19063e.getApplicationContext(), b.this.f19064f);
                b bVar2 = b.this;
                bVar2.f19065g.post(bVar2.f19066h);
            }
        }

        b(Context context, String[] strArr, Handler handler, Runnable runnable) {
            this.f19063e = context;
            this.f19064f = strArr;
            this.f19065g = handler;
            this.f19066h = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c.this.f19060e.get();
                new Handler(Looper.getMainLooper()).post(new a());
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FlutterLoader.java */
    /* renamed from: io.flutter.embedding.engine.f.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0232c {

        /* renamed from: a, reason: collision with root package name */
        final String f19069a;

        /* renamed from: b, reason: collision with root package name */
        final String f19070b;

        /* synthetic */ C0232c(String str, String str2, String str3, a aVar) {
            this(str, str2, str3);
        }

        private C0232c(String str, String str2, String str3) {
            this.f19069a = str;
            this.f19070b = str2;
        }
    }

    /* compiled from: FlutterLoader.java */
    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        private String f19071a;

        @Nullable
        public String a() {
            return this.f19071a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public io.flutter.embedding.engine.f.d b(@NonNull Context context) {
        return null;
    }

    @NonNull
    private String b(@NonNull String str) {
        return this.f19059d.f19052b + File.separator + str;
    }

    public void a(@NonNull Context context) {
        a(context, new d());
    }

    public void a(@NonNull Context context, @NonNull d dVar) {
        if (this.f19057b != null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Context applicationContext = context.getApplicationContext();
            this.f19057b = dVar;
            this.f19058c = SystemClock.uptimeMillis();
            this.f19059d = io.flutter.embedding.engine.f.a.b(applicationContext);
            h.a((WindowManager) applicationContext.getSystemService("window")).a();
            this.f19060e = Executors.newSingleThreadExecutor().submit(new a(applicationContext));
            return;
        }
        throw new IllegalStateException("startInitialization must be called on the main thread");
    }

    public void a(@NonNull Context context, @Nullable String[] strArr) {
        if (this.f19056a) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.f19057b != null) {
                try {
                    C0232c c0232c = this.f19060e.get();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add("--icu-symbol-prefix=_binary_icudtl_dat");
                    arrayList.add("--icu-native-lib-path=" + this.f19059d.f19054d + File.separator + "libflutter.so");
                    if (strArr != null) {
                        Collections.addAll(arrayList, strArr);
                    }
                    arrayList.add("--aot-shared-library-name=" + this.f19059d.f19051a);
                    arrayList.add("--aot-shared-library-name=" + this.f19059d.f19054d + File.separator + this.f19059d.f19051a);
                    StringBuilder sb = new StringBuilder();
                    sb.append("--cache-dir-path=");
                    sb.append(c0232c.f19070b);
                    arrayList.add(sb.toString());
                    if (!this.f19059d.f19055e) {
                        arrayList.add("--disallow-insecure-connections");
                    }
                    if (this.f19059d.f19053c != null) {
                        arrayList.add("--domain-network-policy=" + this.f19059d.f19053c);
                    }
                    if (this.f19057b.a() != null) {
                        arrayList.add("--log-tag=" + this.f19057b.a());
                    }
                    long uptimeMillis = SystemClock.uptimeMillis() - this.f19058c;
                    if (g.a.a.c().b()) {
                        FlutterJNI.nativeInit(context, (String[]) arrayList.toArray(new String[0]), null, c0232c.f19069a, c0232c.f19070b, uptimeMillis);
                    }
                    this.f19056a = true;
                    return;
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
            throw new IllegalStateException("ensureInitializationComplete must be called after startInitialization");
        }
        throw new IllegalStateException("ensureInitializationComplete must be called on the main thread");
    }

    public void a(@NonNull Context context, @Nullable String[] strArr, @NonNull Handler handler, @NonNull Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.f19057b != null) {
                if (this.f19056a) {
                    handler.post(runnable);
                    return;
                } else {
                    Executors.newSingleThreadExecutor().execute(new b(context, strArr, handler, runnable));
                    return;
                }
            }
            throw new IllegalStateException("ensureInitializationComplete must be called after startInitialization");
        }
        throw new IllegalStateException("ensureInitializationComplete must be called on the main thread");
    }

    @NonNull
    public String a() {
        return this.f19059d.f19052b;
    }

    @NonNull
    public String a(@NonNull String str) {
        return b(str);
    }

    @NonNull
    public String a(@NonNull String str, @NonNull String str2) {
        return a("packages" + File.separator + str2 + File.separator + str);
    }
}
