package io.flutter.plugins.d;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import g.a.c.a.j;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: PathProviderPlugin.java */
/* loaded from: classes2.dex */
public class h implements io.flutter.embedding.engine.g.a, k.c {

    /* renamed from: e, reason: collision with root package name */
    private Context f19356e;

    /* renamed from: f, reason: collision with root package name */
    private k f19357f;

    /* renamed from: g, reason: collision with root package name */
    private final Executor f19358g = new b(null);

    /* renamed from: h, reason: collision with root package name */
    private final Executor f19359h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: PathProviderPlugin.java */
    /* loaded from: classes2.dex */
    public class a<T> implements com.google.common.util.concurrent.b<T> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f19360a;

        a(h hVar, k.d dVar) {
            this.f19360a = dVar;
        }

        @Override // com.google.common.util.concurrent.b
        public void a(T t) {
            this.f19360a.a(t);
        }

        @Override // com.google.common.util.concurrent.b
        public void a(Throwable th) {
            this.f19360a.a(th.getClass().getName(), th.getMessage(), null);
        }
    }

    public h() {
        com.google.common.util.concurrent.h hVar = new com.google.common.util.concurrent.h();
        hVar.a("path-provider-background-%d");
        hVar.a(5);
        this.f19359h = Executors.newSingleThreadExecutor(hVar.a());
    }

    private <T> void a(final Callable<T> callable, k.d dVar) {
        final com.google.common.util.concurrent.f g2 = com.google.common.util.concurrent.f.g();
        com.google.common.util.concurrent.c.a(g2, new a(this, dVar), this.f19358g);
        this.f19359h.execute(new Runnable() { // from class: io.flutter.plugins.d.f
            @Override // java.lang.Runnable
            public final void run() {
                h.a(com.google.common.util.concurrent.f.this, callable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public String e() {
        return g.a.d.a.c(this.f19356e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public String b() {
        return g.a.d.a.b(this.f19356e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public List<String> d() {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 19) {
            for (File file : this.f19356e.getExternalCacheDirs()) {
                if (file != null) {
                    arrayList.add(file.getAbsolutePath());
                }
            }
        } else {
            File externalCacheDir = this.f19356e.getExternalCacheDir();
            if (externalCacheDir != null) {
                arrayList.add(externalCacheDir.getAbsolutePath());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public String c() {
        File externalFilesDir = this.f19356e.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            return null;
        }
        return externalFilesDir.getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public String a() {
        return this.f19356e.getCacheDir().getPath();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(@NonNull a.b bVar) {
        this.f19357f = new k(bVar.b(), "plugins.flutter.io/path_provider");
        this.f19356e = bVar.a();
        this.f19357f.a(this);
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(@NonNull a.b bVar) {
        this.f19357f.a((k.c) null);
        this.f19357f = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, @NonNull k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1832373352:
                if (str.equals("getApplicationSupportDirectory")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -1208689078:
                if (str.equals("getExternalCacheDirectories")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 299667825:
                if (str.equals("getExternalStorageDirectories")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1200320591:
                if (str.equals("getApplicationDocumentsDirectory")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1252916648:
                if (str.equals("getStorageDirectory")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1711844626:
                if (str.equals("getTemporaryDirectory")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            a(new Callable() { // from class: io.flutter.plugins.d.b
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return h.this.a();
                }
            }, dVar);
            return;
        }
        if (c2 == 1) {
            a(new Callable() { // from class: io.flutter.plugins.d.e
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return h.this.b();
                }
            }, dVar);
            return;
        }
        if (c2 == 2) {
            a(new Callable() { // from class: io.flutter.plugins.d.d
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return h.this.c();
                }
            }, dVar);
            return;
        }
        if (c2 == 3) {
            a(new Callable() { // from class: io.flutter.plugins.d.a
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return h.this.d();
                }
            }, dVar);
            return;
        }
        if (c2 == 4) {
            final String a2 = i.a((Integer) jVar.a("type"));
            a(new Callable() { // from class: io.flutter.plugins.d.c
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return h.this.a(a2);
                }
            }, dVar);
        } else if (c2 != 5) {
            dVar.a();
        } else {
            a(new Callable() { // from class: io.flutter.plugins.d.g
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return h.this.e();
                }
            }, dVar);
        }
    }

    /* compiled from: PathProviderPlugin.java */
    /* loaded from: classes2.dex */
    private static class b implements Executor {

        /* renamed from: e, reason: collision with root package name */
        private final Handler f19361e;

        private b() {
            this.f19361e = new Handler(Looper.getMainLooper());
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f19361e.post(runnable);
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public List<String> a(String str) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 19) {
            for (File file : this.f19356e.getExternalFilesDirs(str)) {
                if (file != null) {
                    arrayList.add(file.getAbsolutePath());
                }
            }
        } else {
            File externalFilesDir = this.f19356e.getExternalFilesDir(str);
            if (externalFilesDir != null) {
                arrayList.add(externalFilesDir.getAbsolutePath());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(com.google.common.util.concurrent.f fVar, Callable callable) {
        try {
            fVar.a((com.google.common.util.concurrent.f) callable.call());
        } catch (Throwable th) {
            fVar.a(th);
        }
    }
}
