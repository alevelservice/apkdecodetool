package io.flutter.embedding.engine.e;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import g.a.c.a.c;
import g.a.c.a.p;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.view.FlutterCallbackInformation;
import java.nio.ByteBuffer;

/* compiled from: DartExecutor.java */
/* loaded from: classes2.dex */
public class a implements g.a.c.a.c {

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private final FlutterJNI f19025e;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    private final AssetManager f19026f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.e.b f19027g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    private final g.a.c.a.c f19028h;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    private String f19030j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private e f19031k;

    /* renamed from: i, reason: collision with root package name */
    private boolean f19029i = false;

    /* renamed from: l, reason: collision with root package name */
    private final c.a f19032l = new C0230a();

    /* compiled from: DartExecutor.java */
    /* renamed from: io.flutter.embedding.engine.e.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0230a implements c.a {
        C0230a() {
        }

        @Override // g.a.c.a.c.a
        public void a(ByteBuffer byteBuffer, c.b bVar) {
            a.this.f19030j = p.f18240b.a(byteBuffer);
            if (a.this.f19031k != null) {
                a.this.f19031k.a(a.this.f19030j);
            }
        }
    }

    /* compiled from: DartExecutor.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final AssetManager f19034a;

        /* renamed from: b, reason: collision with root package name */
        public final String f19035b;

        /* renamed from: c, reason: collision with root package name */
        public final FlutterCallbackInformation f19036c;

        public b(@NonNull AssetManager assetManager, @NonNull String str, @NonNull FlutterCallbackInformation flutterCallbackInformation) {
            this.f19034a = assetManager;
            this.f19035b = str;
            this.f19036c = flutterCallbackInformation;
        }

        @NonNull
        public String toString() {
            return "DartCallback( bundle path: " + this.f19035b + ", library path: " + this.f19036c.callbackLibraryPath + ", function: " + this.f19036c.callbackName + " )";
        }
    }

    /* compiled from: DartExecutor.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        public final String f19037a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        public final String f19038b;

        public c(@NonNull String str, @NonNull String str2) {
            this.f19037a = str;
            this.f19038b = str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f19037a.equals(cVar.f19037a)) {
                return this.f19038b.equals(cVar.f19038b);
            }
            return false;
        }

        public int hashCode() {
            return (this.f19037a.hashCode() * 31) + this.f19038b.hashCode();
        }

        @NonNull
        public String toString() {
            return "DartEntrypoint( bundle path: " + this.f19037a + ", function: " + this.f19038b + " )";
        }
    }

    /* compiled from: DartExecutor.java */
    /* loaded from: classes2.dex */
    private static class d implements g.a.c.a.c {

        /* renamed from: e, reason: collision with root package name */
        private final io.flutter.embedding.engine.e.b f19039e;

        /* synthetic */ d(io.flutter.embedding.engine.e.b bVar, C0230a c0230a) {
            this(bVar);
        }

        @Override // g.a.c.a.c
        @UiThread
        public void send(@NonNull String str, @Nullable ByteBuffer byteBuffer) {
            this.f19039e.send(str, byteBuffer, null);
        }

        @Override // g.a.c.a.c
        @UiThread
        public void setMessageHandler(@NonNull String str, @Nullable c.a aVar) {
            this.f19039e.setMessageHandler(str, aVar);
        }

        private d(@NonNull io.flutter.embedding.engine.e.b bVar) {
            this.f19039e = bVar;
        }

        @Override // g.a.c.a.c
        @UiThread
        public void send(@NonNull String str, @Nullable ByteBuffer byteBuffer, @Nullable c.b bVar) {
            this.f19039e.send(str, byteBuffer, bVar);
        }
    }

    /* compiled from: DartExecutor.java */
    /* loaded from: classes2.dex */
    interface e {
        void a(@NonNull String str);
    }

    public a(@NonNull FlutterJNI flutterJNI, @NonNull AssetManager assetManager) {
        this.f19025e = flutterJNI;
        this.f19026f = assetManager;
        this.f19027g = new io.flutter.embedding.engine.e.b(flutterJNI);
        this.f19027g.setMessageHandler("flutter/isolate", this.f19032l);
        this.f19028h = new d(this.f19027g, null);
    }

    public boolean c() {
        return this.f19029i;
    }

    public void d() {
        if (this.f19025e.isAttached()) {
            this.f19025e.notifyLowMemoryWarning();
        }
    }

    public void e() {
        g.a.b.c("DartExecutor", "Attached to JNI. Registering the platform message handler for this Dart execution context.");
        this.f19025e.setPlatformMessageHandler(this.f19027g);
    }

    public void f() {
        g.a.b.c("DartExecutor", "Detached from JNI. De-registering the platform message handler for this Dart execution context.");
        this.f19025e.setPlatformMessageHandler(null);
    }

    @Override // g.a.c.a.c
    @UiThread
    @Deprecated
    public void send(@NonNull String str, @Nullable ByteBuffer byteBuffer) {
        this.f19028h.send(str, byteBuffer);
    }

    @Override // g.a.c.a.c
    @UiThread
    @Deprecated
    public void setMessageHandler(@NonNull String str, @Nullable c.a aVar) {
        this.f19028h.setMessageHandler(str, aVar);
    }

    @Nullable
    public String b() {
        return this.f19030j;
    }

    @Override // g.a.c.a.c
    @UiThread
    @Deprecated
    public void send(@NonNull String str, @Nullable ByteBuffer byteBuffer, @Nullable c.b bVar) {
        this.f19028h.send(str, byteBuffer, bVar);
    }

    public void a(@NonNull c cVar) {
        if (this.f19029i) {
            g.a.b.d("DartExecutor", "Attempted to run a DartExecutor that is already running.");
            return;
        }
        g.a.b.c("DartExecutor", "Executing Dart entrypoint: " + cVar);
        this.f19025e.runBundleAndSnapshotFromLibrary(cVar.f19037a, cVar.f19038b, null, this.f19026f);
        this.f19029i = true;
    }

    public void a(@NonNull b bVar) {
        if (this.f19029i) {
            g.a.b.d("DartExecutor", "Attempted to run a DartExecutor that is already running.");
            return;
        }
        g.a.b.c("DartExecutor", "Executing Dart callback: " + bVar);
        FlutterJNI flutterJNI = this.f19025e;
        String str = bVar.f19035b;
        FlutterCallbackInformation flutterCallbackInformation = bVar.f19036c;
        flutterJNI.runBundleAndSnapshotFromLibrary(str, flutterCallbackInformation.callbackName, flutterCallbackInformation.callbackLibraryPath, bVar.f19034a);
        this.f19029i = true;
    }

    @NonNull
    public g.a.c.a.c a() {
        return this.f19028h;
    }
}
