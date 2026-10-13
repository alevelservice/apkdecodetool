package io.flutter.embedding.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.flutter.embedding.engine.e.a;
import java.util.Arrays;

/* compiled from: FlutterActivityAndFragmentDelegate.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private InterfaceC0227b f18973a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private io.flutter.embedding.engine.a f18974b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private FlutterSplashView f18975c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private FlutterView f18976d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private io.flutter.plugin.platform.d f18977e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f18978f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.h.b f18979g = new a();

    /* compiled from: FlutterActivityAndFragmentDelegate.java */
    /* loaded from: classes2.dex */
    class a implements io.flutter.embedding.engine.h.b {
        a() {
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiDisplayed() {
            b.this.f18973a.onFlutterUiDisplayed();
        }

        @Override // io.flutter.embedding.engine.h.b
        public void onFlutterUiNoLongerDisplayed() {
            b.this.f18973a.onFlutterUiNoLongerDisplayed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlutterActivityAndFragmentDelegate.java */
    /* renamed from: io.flutter.embedding.android.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0227b extends j, e, d {
        void cleanUpFlutterEngine(@NonNull io.flutter.embedding.engine.a aVar);

        void configureFlutterEngine(@NonNull io.flutter.embedding.engine.a aVar);

        @Nullable
        Activity getActivity();

        @NonNull
        String getAppBundlePath();

        @Nullable
        String getCachedEngineId();

        @NonNull
        Context getContext();

        @NonNull
        String getDartEntrypointFunctionName();

        @NonNull
        io.flutter.embedding.engine.d getFlutterShellArgs();

        @Nullable
        String getInitialRoute();

        @NonNull
        androidx.lifecycle.e getLifecycle();

        @NonNull
        g getRenderMode();

        @NonNull
        k getTransparencyMode();

        void onFlutterSurfaceViewCreated(@NonNull FlutterSurfaceView flutterSurfaceView);

        void onFlutterTextureViewCreated(@NonNull FlutterTextureView flutterTextureView);

        void onFlutterUiDisplayed();

        void onFlutterUiNoLongerDisplayed();

        @Nullable
        io.flutter.embedding.engine.a provideFlutterEngine(@NonNull Context context);

        @Nullable
        io.flutter.plugin.platform.d providePlatformPlugin(@Nullable Activity activity, @NonNull io.flutter.embedding.engine.a aVar);

        @Override // io.flutter.embedding.android.j
        @Nullable
        i provideSplashScreen();

        boolean shouldAttachEngineToActivity();

        boolean shouldDestroyEngineWithHost();

        boolean shouldRestoreAndSaveState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull InterfaceC0227b interfaceC0227b) {
        this.f18973a = interfaceC0227b;
    }

    private void o() {
        if (this.f18973a.getCachedEngineId() == null && !this.f18974b.d().c()) {
            g.a.b.c("FlutterActivityAndFragmentDelegate", "Executing Dart entrypoint: " + this.f18973a.getDartEntrypointFunctionName() + ", and sending initial route: " + this.f18973a.getInitialRoute());
            if (this.f18973a.getInitialRoute() != null) {
                this.f18974b.i().b(this.f18973a.getInitialRoute());
            }
            String appBundlePath = this.f18973a.getAppBundlePath();
            if (appBundlePath == null || appBundlePath.isEmpty()) {
                appBundlePath = g.a.a.c().a().a();
            }
            this.f18974b.d().a(new a.c(appBundlePath, this.f18973a.getDartEntrypointFunctionName()));
        }
    }

    private void p() {
        if (this.f18973a == null) {
            throw new IllegalStateException("Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f18978f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        p();
        if (this.f18974b != null) {
            g.a.b.c("FlutterActivityAndFragmentDelegate", "Forwarding onBackPressed() to FlutterEngine.");
            this.f18974b.i().a();
        } else {
            g.a.b.d("FlutterActivityAndFragmentDelegate", "Invoked onBackPressed() before FlutterFragment was attached to an Activity.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        g.a.b.c("FlutterActivityAndFragmentDelegate", "onDestroyView()");
        p();
        this.f18976d.detachFromFlutterEngine();
        this.f18976d.removeOnFirstFrameRenderedListener(this.f18979g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        g.a.b.c("FlutterActivityAndFragmentDelegate", "onDetach()");
        p();
        this.f18973a.cleanUpFlutterEngine(this.f18974b);
        if (this.f18973a.shouldAttachEngineToActivity()) {
            g.a.b.c("FlutterActivityAndFragmentDelegate", "Detaching FlutterEngine from the Activity that owns this Fragment.");
            if (this.f18973a.getActivity().isChangingConfigurations()) {
                this.f18974b.c().b();
            } else {
                this.f18974b.c().a();
            }
        }
        io.flutter.plugin.platform.d dVar = this.f18977e;
        if (dVar != null) {
            dVar.a();
            this.f18977e = null;
        }
        this.f18974b.f().a();
        if (this.f18973a.shouldDestroyEngineWithHost()) {
            this.f18974b.a();
            if (this.f18973a.getCachedEngineId() != null) {
                io.flutter.embedding.engine.b.a().b(this.f18973a.getCachedEngineId());
            }
            this.f18974b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        g.a.b.c("FlutterActivityAndFragmentDelegate", "Forwarding onLowMemory() to FlutterEngine.");
        p();
        this.f18974b.d().d();
        this.f18974b.p().a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        g.a.b.c("FlutterActivityAndFragmentDelegate", "onPause()");
        p();
        this.f18974b.f().b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        g.a.b.c("FlutterActivityAndFragmentDelegate", "onPostResume()");
        p();
        if (this.f18974b != null) {
            io.flutter.plugin.platform.d dVar = this.f18977e;
            if (dVar != null) {
                dVar.b();
                return;
            }
            return;
        }
        g.a.b.d("FlutterActivityAndFragmentDelegate", "onPostResume() invoked before FlutterFragment was attached to an Activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        g.a.b.c("FlutterActivityAndFragmentDelegate", "onResume()");
        p();
        this.f18974b.f().d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        g.a.b.c("FlutterActivityAndFragmentDelegate", "onStart()");
        p();
        o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        g.a.b.c("FlutterActivityAndFragmentDelegate", "onStop()");
        p();
        this.f18974b.f().c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        p();
        if (this.f18974b != null) {
            g.a.b.c("FlutterActivityAndFragmentDelegate", "Forwarding onUserLeaveHint() to FlutterEngine.");
            this.f18974b.c().onUserLeaveHint();
        } else {
            g.a.b.d("FlutterActivityAndFragmentDelegate", "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        this.f18973a = null;
        this.f18974b = null;
        this.f18976d = null;
        this.f18977e = null;
    }

    @VisibleForTesting
    void n() {
        g.a.b.c("FlutterActivityAndFragmentDelegate", "Setting up FlutterEngine.");
        String cachedEngineId = this.f18973a.getCachedEngineId();
        if (cachedEngineId != null) {
            this.f18974b = io.flutter.embedding.engine.b.a().a(cachedEngineId);
            this.f18978f = true;
            if (this.f18974b != null) {
                return;
            }
            throw new IllegalStateException("The requested cached FlutterEngine did not exist in the FlutterEngineCache: '" + cachedEngineId + "'");
        }
        InterfaceC0227b interfaceC0227b = this.f18973a;
        this.f18974b = interfaceC0227b.provideFlutterEngine(interfaceC0227b.getContext());
        if (this.f18974b != null) {
            this.f18978f = true;
            return;
        }
        g.a.b.c("FlutterActivityAndFragmentDelegate", "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment.");
        this.f18974b = new io.flutter.embedding.engine.a(this.f18973a.getContext(), this.f18973a.getFlutterShellArgs().a(), false, this.f18973a.shouldRestoreAndSaveState());
        this.f18978f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public io.flutter.embedding.engine.a a() {
        return this.f18974b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@Nullable Bundle bundle) {
        g.a.b.c("FlutterActivityAndFragmentDelegate", "onSaveInstanceState. Giving framework and plugins an opportunity to save state.");
        p();
        if (this.f18973a.shouldRestoreAndSaveState()) {
            bundle.putByteArray("framework", this.f18974b.n().b());
        }
        if (this.f18973a.shouldAttachEngineToActivity()) {
            Bundle bundle2 = new Bundle();
            this.f18974b.c().onSaveInstanceState(bundle2);
            bundle.putBundle("plugins", bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Context context) {
        p();
        if (this.f18974b == null) {
            n();
        }
        InterfaceC0227b interfaceC0227b = this.f18973a;
        this.f18977e = interfaceC0227b.providePlatformPlugin(interfaceC0227b.getActivity(), this.f18974b);
        if (this.f18973a.shouldAttachEngineToActivity()) {
            g.a.b.c("FlutterActivityAndFragmentDelegate", "Attaching FlutterEngine to the Activity that owns this Fragment.");
            this.f18974b.c().a(this.f18973a.getActivity(), this.f18973a.getLifecycle());
        }
        this.f18973a.configureFlutterEngine(this.f18974b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public View a(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        g.a.b.c("FlutterActivityAndFragmentDelegate", "Creating FlutterView.");
        p();
        if (this.f18973a.getRenderMode() == g.surface) {
            FlutterSurfaceView flutterSurfaceView = new FlutterSurfaceView(this.f18973a.getActivity(), this.f18973a.getTransparencyMode() == k.transparent);
            this.f18973a.onFlutterSurfaceViewCreated(flutterSurfaceView);
            this.f18976d = new FlutterView(this.f18973a.getActivity(), flutterSurfaceView);
        } else {
            FlutterTextureView flutterTextureView = new FlutterTextureView(this.f18973a.getActivity());
            this.f18973a.onFlutterTextureViewCreated(flutterTextureView);
            this.f18976d = new FlutterView(this.f18973a.getActivity(), flutterTextureView);
        }
        this.f18976d.addOnFirstFrameRenderedListener(this.f18979g);
        this.f18975c = new FlutterSplashView(this.f18973a.getContext());
        if (Build.VERSION.SDK_INT >= 17) {
            this.f18975c.setId(View.generateViewId());
        } else {
            this.f18975c.setId(486947586);
        }
        this.f18975c.a(this.f18976d, this.f18973a.provideSplashScreen());
        g.a.b.c("FlutterActivityAndFragmentDelegate", "Attaching FlutterEngine to FlutterView.");
        this.f18976d.attachToFlutterEngine(this.f18974b);
        return this.f18975c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable Bundle bundle) {
        byte[] bArr;
        g.a.b.c("FlutterActivityAndFragmentDelegate", "onActivityCreated. Giving framework and plugins an opportunity to restore state.");
        p();
        Bundle bundle2 = null;
        if (bundle != null) {
            bundle2 = bundle.getBundle("plugins");
            bArr = bundle.getByteArray("framework");
        } else {
            bArr = null;
        }
        if (this.f18973a.shouldRestoreAndSaveState()) {
            this.f18974b.n().a(bArr);
        }
        if (this.f18973a.shouldAttachEngineToActivity()) {
            this.f18974b.c().a(bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        p();
        if (this.f18974b != null) {
            g.a.b.c("FlutterActivityAndFragmentDelegate", "Forwarding onRequestPermissionsResult() to FlutterEngine:\nrequestCode: " + i2 + "\npermissions: " + Arrays.toString(strArr) + "\ngrantResults: " + Arrays.toString(iArr));
            this.f18974b.c().onRequestPermissionsResult(i2, strArr, iArr);
            return;
        }
        g.a.b.d("FlutterActivityAndFragmentDelegate", "onRequestPermissionResult() invoked before FlutterFragment was attached to an Activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Intent intent) {
        p();
        if (this.f18974b != null) {
            g.a.b.c("FlutterActivityAndFragmentDelegate", "Forwarding onNewIntent() to FlutterEngine.");
            this.f18974b.c().onNewIntent(intent);
        } else {
            g.a.b.d("FlutterActivityAndFragmentDelegate", "onNewIntent() invoked before FlutterFragment was attached to an Activity.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, int i3, Intent intent) {
        p();
        if (this.f18974b != null) {
            g.a.b.c("FlutterActivityAndFragmentDelegate", "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: " + i2 + "\nresultCode: " + i3 + "\ndata: " + intent);
            this.f18974b.c().onActivityResult(i2, i3, intent);
            return;
        }
        g.a.b.d("FlutterActivityAndFragmentDelegate", "onActivityResult() invoked before FlutterFragment was attached to an Activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        p();
        io.flutter.embedding.engine.a aVar = this.f18974b;
        if (aVar != null) {
            aVar.d().d();
            if (i2 == 10) {
                g.a.b.c("FlutterActivityAndFragmentDelegate", "Forwarding onTrimMemory() to FlutterEngine. Level: " + i2);
                this.f18974b.p().a();
                return;
            }
            return;
        }
        g.a.b.d("FlutterActivityAndFragmentDelegate", "onTrimMemory() invoked before FlutterFragment was attached to an Activity.");
    }
}
