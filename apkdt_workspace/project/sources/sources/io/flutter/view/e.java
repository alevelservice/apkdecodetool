package io.flutter.view;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import g.a.c.a.c;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.a;
import java.nio.ByteBuffer;

/* compiled from: FlutterNativeView.java */
/* loaded from: classes2.dex */
public class e implements g.a.c.a.c {

    /* renamed from: e, reason: collision with root package name */
    private final io.flutter.app.c f19602e;

    /* renamed from: f, reason: collision with root package name */
    private final io.flutter.embedding.engine.e.a f19603f;

    /* renamed from: g, reason: collision with root package name */
    private FlutterView f19604g;

    /* renamed from: h, reason: collision with root package name */
    private final FlutterJNI f19605h;

    /* renamed from: i, reason: collision with root package name */
    private final Context f19606i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f19607j;

    /* renamed from: k, reason: collision with root package name */
    private final io.flutter.embedding.engine.h.b f19608k;

    /* compiled from: FlutterNativeView.java */
    /* loaded from: classes2.dex */
    class a implements io.flutter.embedding.engine.h.b {
        a() {
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiDisplayed() {
            if (e.this.f19604g == null) {
                return;
            }
            e.this.f19604g.onFirstFrame();
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiNoLongerDisplayed() {
        }
    }

    /* compiled from: FlutterNativeView.java */
    /* loaded from: classes2.dex */
    private final class b implements a.b {
        private b() {
        }

        @Override // io.flutter.embedding.engine.a.b
        public void a() {
            if (e.this.f19604g != null) {
                e.this.f19604g.resetAccessibilityTree();
            }
            if (e.this.f19602e == null) {
                return;
            }
            e.this.f19602e.d();
        }

        /* synthetic */ b(e eVar, a aVar) {
            this();
        }
    }

    public e(@NonNull Context context) {
        this(context, false);
    }

    public void c() {
        this.f19602e.b();
        this.f19604g = null;
    }

    @NonNull
    public io.flutter.embedding.engine.e.a d() {
        return this.f19603f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlutterJNI e() {
        return this.f19605h;
    }

    @NonNull
    public io.flutter.app.c f() {
        return this.f19602e;
    }

    public boolean g() {
        return this.f19607j;
    }

    public boolean h() {
        return this.f19605h.isAttached();
    }

    @Override // g.a.c.a.c
    @UiThread
    public void send(String str, ByteBuffer byteBuffer) {
        this.f19603f.a().send(str, byteBuffer);
    }

    @Override // g.a.c.a.c
    @UiThread
    public void setMessageHandler(String str, c.a aVar) {
        this.f19603f.a().setMessageHandler(str, aVar);
    }

    public e(@NonNull Context context, boolean z) {
        this.f19608k = new a();
        this.f19606i = context;
        this.f19602e = new io.flutter.app.c(this, context);
        this.f19605h = new FlutterJNI();
        this.f19605h.addIsDisplayingFlutterUiListener(this.f19608k);
        this.f19603f = new io.flutter.embedding.engine.e.a(this.f19605h, context.getAssets());
        this.f19605h.addEngineLifecycleListener(new b(this, null));
        a(this, z);
        a();
    }

    public void a(FlutterView flutterView, Activity activity) {
        this.f19604g = flutterView;
        this.f19602e.a(flutterView, activity);
    }

    public void b() {
        this.f19602e.a();
        this.f19603f.f();
        this.f19604g = null;
        this.f19605h.removeIsDisplayingFlutterUiListener(this.f19608k);
        this.f19605h.detachFromNativeAndReleaseResources();
        this.f19607j = false;
    }

    @Override // g.a.c.a.c
    @UiThread
    public void send(String str, ByteBuffer byteBuffer, c.b bVar) {
        if (!h()) {
            String str2 = "FlutterView.send called on a detached view, channel=" + str;
            return;
        }
        this.f19603f.a().send(str, byteBuffer, bVar);
    }

    public void a() {
        if (!h()) {
            throw new AssertionError("Platform view is not attached");
        }
    }

    public void a(f fVar) {
        if (fVar.f19612b != null) {
            a();
            if (!this.f19607j) {
                this.f19605h.runBundleAndSnapshotFromLibrary(fVar.f19611a, fVar.f19612b, fVar.f19613c, this.f19606i.getResources().getAssets());
                this.f19607j = true;
                return;
            }
            throw new AssertionError("This Flutter engine instance is already running an application");
        }
        throw new AssertionError("An entrypoint must be specified");
    }

    private void a(e eVar, boolean z) {
        this.f19605h.attachToNative(z);
        this.f19603f.e();
    }
}
