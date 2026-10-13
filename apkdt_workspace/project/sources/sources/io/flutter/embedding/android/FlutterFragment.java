package io.flutter.embedding.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import io.flutter.embedding.android.b;

/* loaded from: classes2.dex */
public class FlutterFragment extends Fragment implements b.InterfaceC0227b {

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    io.flutter.embedding.android.b f18896e;

    /* loaded from: classes2.dex */
    @interface ActivityCallThrough {
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final Class<? extends FlutterFragment> f18897a;

        /* renamed from: b, reason: collision with root package name */
        private final String f18898b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f18899c;

        /* renamed from: d, reason: collision with root package name */
        private g f18900d;

        /* renamed from: e, reason: collision with root package name */
        private k f18901e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f18902f;

        @NonNull
        public b a(boolean z) {
            this.f18899c = z;
            return this;
        }

        @NonNull
        public b b(boolean z) {
            this.f18902f = z;
            return this;
        }

        private b(@NonNull String str) {
            this((Class<? extends FlutterFragment>) FlutterFragment.class, str);
        }

        @NonNull
        public b a(@NonNull g gVar) {
            this.f18900d = gVar;
            return this;
        }

        @NonNull
        protected Bundle b() {
            Bundle bundle = new Bundle();
            bundle.putString("cached_engine_id", this.f18898b);
            bundle.putBoolean("destroy_engine_with_fragment", this.f18899c);
            g gVar = this.f18900d;
            if (gVar == null) {
                gVar = g.surface;
            }
            bundle.putString("flutterview_render_mode", gVar.name());
            k kVar = this.f18901e;
            if (kVar == null) {
                kVar = k.transparent;
            }
            bundle.putString("flutterview_transparency_mode", kVar.name());
            bundle.putBoolean("should_attach_engine_to_activity", this.f18902f);
            return bundle;
        }

        protected b(@NonNull Class<? extends FlutterFragment> cls, @NonNull String str) {
            this.f18899c = false;
            this.f18900d = g.surface;
            this.f18901e = k.transparent;
            this.f18902f = true;
            this.f18897a = cls;
            this.f18898b = str;
        }

        @NonNull
        public b a(@NonNull k kVar) {
            this.f18901e = kVar;
            return this;
        }

        @NonNull
        public <T extends FlutterFragment> T a() {
            try {
                T t = (T) this.f18897a.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                if (t != null) {
                    t.setArguments(b());
                    return t;
                }
                throw new RuntimeException("The FlutterFragment subclass sent in the constructor (" + this.f18897a.getCanonicalName() + ") does not match the expected return type.");
            } catch (Exception e2) {
                throw new RuntimeException("Could not instantiate FlutterFragment subclass (" + this.f18897a.getName() + ")", e2);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: b, reason: collision with root package name */
        private String f18904b = "main";

        /* renamed from: c, reason: collision with root package name */
        private String f18905c = "/";

        /* renamed from: d, reason: collision with root package name */
        private String f18906d = null;

        /* renamed from: e, reason: collision with root package name */
        private io.flutter.embedding.engine.d f18907e = null;

        /* renamed from: f, reason: collision with root package name */
        private g f18908f = g.surface;

        /* renamed from: g, reason: collision with root package name */
        private k f18909g = k.transparent;

        /* renamed from: h, reason: collision with root package name */
        private boolean f18910h = true;

        /* renamed from: a, reason: collision with root package name */
        private final Class<? extends FlutterFragment> f18903a = FlutterFragment.class;

        @NonNull
        public c a(@NonNull String str) {
            this.f18906d = str;
            return this;
        }

        @NonNull
        public c b(@NonNull String str) {
            this.f18904b = str;
            return this;
        }

        @NonNull
        public c c(@NonNull String str) {
            this.f18905c = str;
            return this;
        }

        @NonNull
        public c a(@NonNull io.flutter.embedding.engine.d dVar) {
            this.f18907e = dVar;
            return this;
        }

        @NonNull
        protected Bundle b() {
            Bundle bundle = new Bundle();
            bundle.putString("initial_route", this.f18905c);
            bundle.putString("app_bundle_path", this.f18906d);
            bundle.putString("dart_entrypoint", this.f18904b);
            io.flutter.embedding.engine.d dVar = this.f18907e;
            if (dVar != null) {
                bundle.putStringArray("initialization_args", dVar.a());
            }
            g gVar = this.f18908f;
            if (gVar == null) {
                gVar = g.surface;
            }
            bundle.putString("flutterview_render_mode", gVar.name());
            k kVar = this.f18909g;
            if (kVar == null) {
                kVar = k.transparent;
            }
            bundle.putString("flutterview_transparency_mode", kVar.name());
            bundle.putBoolean("should_attach_engine_to_activity", this.f18910h);
            bundle.putBoolean("destroy_engine_with_fragment", true);
            return bundle;
        }

        @NonNull
        public c a(@NonNull g gVar) {
            this.f18908f = gVar;
            return this;
        }

        @NonNull
        public c a(@NonNull k kVar) {
            this.f18909g = kVar;
            return this;
        }

        @NonNull
        public c a(boolean z) {
            this.f18910h = z;
            return this;
        }

        @NonNull
        public <T extends FlutterFragment> T a() {
            try {
                T t = (T) this.f18903a.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                if (t != null) {
                    t.setArguments(b());
                    return t;
                }
                throw new RuntimeException("The FlutterFragment subclass sent in the constructor (" + this.f18903a.getCanonicalName() + ") does not match the expected return type.");
            } catch (Exception e2) {
                throw new RuntimeException("Could not instantiate FlutterFragment subclass (" + this.f18903a.getName() + ")", e2);
            }
        }
    }

    public FlutterFragment() {
        setArguments(new Bundle());
    }

    @NonNull
    public static b b(@NonNull String str) {
        return new b(str);
    }

    @NonNull
    public static c h() {
        return new c();
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b, io.flutter.embedding.android.d
    public void cleanUpFlutterEngine(@NonNull io.flutter.embedding.engine.a aVar) {
        androidx.lifecycle.h activity = getActivity();
        if (activity instanceof d) {
            ((d) activity).cleanUpFlutterEngine(aVar);
        }
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b, io.flutter.embedding.android.d
    public void configureFlutterEngine(@NonNull io.flutter.embedding.engine.a aVar) {
        androidx.lifecycle.h activity = getActivity();
        if (activity instanceof d) {
            ((d) activity).configureFlutterEngine(aVar);
        }
    }

    @Nullable
    public io.flutter.embedding.engine.a g() {
        return this.f18896e.a();
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @Nullable
    public /* bridge */ /* synthetic */ Activity getActivity() {
        return super.getActivity();
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public String getAppBundlePath() {
        return getArguments().getString("app_bundle_path");
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @Nullable
    public String getCachedEngineId() {
        return getArguments().getString("cached_engine_id", null);
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public String getDartEntrypointFunctionName() {
        return getArguments().getString("dart_entrypoint", "main");
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public io.flutter.embedding.engine.d getFlutterShellArgs() {
        String[] stringArray = getArguments().getStringArray("initialization_args");
        if (stringArray == null) {
            stringArray = new String[0];
        }
        return new io.flutter.embedding.engine.d(stringArray);
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @Nullable
    public String getInitialRoute() {
        return getArguments().getString("initial_route");
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public g getRenderMode() {
        return g.valueOf(getArguments().getString("flutterview_render_mode", g.surface.name()));
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @NonNull
    public k getTransparencyMode() {
        return k.valueOf(getArguments().getString("flutterview_transparency_mode", k.transparent.name()));
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f18896e.a(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i2, int i3, Intent intent) {
        this.f18896e.a(i2, i3, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        this.f18896e = new io.flutter.embedding.android.b(this);
        this.f18896e.a(context);
    }

    @ActivityCallThrough
    public void onBackPressed() {
        this.f18896e.c();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.f18896e.a(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f18896e.d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f18896e.e();
        this.f18896e.m();
        this.f18896e = null;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public void onFlutterSurfaceViewCreated(@NonNull FlutterSurfaceView flutterSurfaceView) {
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public void onFlutterTextureViewCreated(@NonNull FlutterTextureView flutterTextureView) {
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public void onFlutterUiDisplayed() {
        androidx.lifecycle.h activity = getActivity();
        if (activity instanceof io.flutter.embedding.engine.h.b) {
            ((io.flutter.embedding.engine.h.b) activity).onFlutterUiDisplayed();
        }
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public void onFlutterUiNoLongerDisplayed() {
        androidx.lifecycle.h activity = getActivity();
        if (activity instanceof io.flutter.embedding.engine.h.b) {
            ((io.flutter.embedding.engine.h.b) activity).onFlutterUiNoLongerDisplayed();
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f18896e.f();
    }

    @ActivityCallThrough
    public void onNewIntent(@NonNull Intent intent) {
        this.f18896e.a(intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.f18896e.g();
    }

    @ActivityCallThrough
    public void onPostResume() {
        this.f18896e.h();
    }

    @Override // androidx.fragment.app.Fragment
    @ActivityCallThrough
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.f18896e.a(i2, strArr, iArr);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f18896e.i();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f18896e.b(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f18896e.j();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f18896e.k();
    }

    @ActivityCallThrough
    public void onTrimMemory(int i2) {
        this.f18896e.a(i2);
    }

    @ActivityCallThrough
    public void onUserLeaveHint() {
        this.f18896e.l();
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b, io.flutter.embedding.android.e
    @Nullable
    public io.flutter.embedding.engine.a provideFlutterEngine(@NonNull Context context) {
        androidx.lifecycle.h activity = getActivity();
        if (!(activity instanceof e)) {
            return null;
        }
        g.a.b.c("FlutterFragment", "Deferring to attached Activity to provide a FlutterEngine.");
        return ((e) activity).provideFlutterEngine(getContext());
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    @Nullable
    public io.flutter.plugin.platform.d providePlatformPlugin(@Nullable Activity activity, @NonNull io.flutter.embedding.engine.a aVar) {
        if (activity != null) {
            return new io.flutter.plugin.platform.d(getActivity(), aVar.j());
        }
        return null;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b, io.flutter.embedding.android.j
    @Nullable
    public i provideSplashScreen() {
        androidx.lifecycle.h activity = getActivity();
        if (activity instanceof j) {
            return ((j) activity).provideSplashScreen();
        }
        return null;
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public boolean shouldAttachEngineToActivity() {
        return getArguments().getBoolean("should_attach_engine_to_activity");
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public boolean shouldDestroyEngineWithHost() {
        boolean z = getArguments().getBoolean("destroy_engine_with_fragment", false);
        return (getCachedEngineId() != null || this.f18896e.b()) ? z : getArguments().getBoolean("destroy_engine_with_fragment", true);
    }

    @Override // io.flutter.embedding.android.b.InterfaceC0227b
    public boolean shouldRestoreAndSaveState() {
        if (getArguments().containsKey("enable_state_restoration")) {
            return getArguments().getBoolean("enable_state_restoration");
        }
        return getCachedEngineId() == null;
    }
}
