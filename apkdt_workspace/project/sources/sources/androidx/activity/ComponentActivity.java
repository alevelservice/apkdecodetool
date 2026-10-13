package androidx.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.annotation.CallSuper;
import androidx.annotation.ContentView;
import androidx.annotation.LayoutRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import androidx.lifecycle.i;
import androidx.lifecycle.o;
import androidx.lifecycle.r;
import androidx.lifecycle.s;
import androidx.savedstate.SavedStateRegistry;

/* loaded from: classes.dex */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements h, s, androidx.savedstate.b, c {

    @LayoutRes
    private int mContentLayoutId;
    private final i mLifecycleRegistry;
    private final OnBackPressedDispatcher mOnBackPressedDispatcher;
    private final androidx.savedstate.a mSavedStateRegistryController;
    private r mViewModelStore;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComponentActivity.super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        Object f708a;

        /* renamed from: b, reason: collision with root package name */
        r f709b;

        b() {
        }
    }

    public ComponentActivity() {
        this.mLifecycleRegistry = new i(this);
        this.mSavedStateRegistryController = androidx.savedstate.a.a(this);
        this.mOnBackPressedDispatcher = new OnBackPressedDispatcher(new a());
        if (getLifecycle() != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                getLifecycle().a(new f() { // from class: androidx.activity.ComponentActivity.2
                    @Override // androidx.lifecycle.f
                    public void a(@NonNull h hVar, @NonNull e.a aVar) {
                        if (aVar == e.a.ON_STOP) {
                            Window window = ComponentActivity.this.getWindow();
                            View peekDecorView = window != null ? window.peekDecorView() : null;
                            if (peekDecorView != null) {
                                peekDecorView.cancelPendingInputEvents();
                            }
                        }
                    }
                });
            }
            getLifecycle().a(new f() { // from class: androidx.activity.ComponentActivity.3
                @Override // androidx.lifecycle.f
                public void a(@NonNull h hVar, @NonNull e.a aVar) {
                    if (aVar != e.a.ON_DESTROY || ComponentActivity.this.isChangingConfigurations()) {
                        return;
                    }
                    ComponentActivity.this.getViewModelStore().a();
                }
            });
            int i2 = Build.VERSION.SDK_INT;
            if (19 > i2 || i2 > 23) {
                return;
            }
            getLifecycle().a(new ImmLeaksCleaner(this));
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    @Nullable
    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        b bVar = (b) getLastNonConfigurationInstance();
        if (bVar != null) {
            return bVar.f708a;
        }
        return null;
    }

    @Override // androidx.core.app.ComponentActivity, androidx.lifecycle.h
    @NonNull
    public e getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // androidx.activity.c
    @NonNull
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    @Override // androidx.savedstate.b
    @NonNull
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.mSavedStateRegistryController.a();
    }

    @Override // androidx.lifecycle.s
    @NonNull
    public r getViewModelStore() {
        if (getApplication() != null) {
            if (this.mViewModelStore == null) {
                b bVar = (b) getLastNonConfigurationInstance();
                if (bVar != null) {
                    this.mViewModelStore = bVar.f709b;
                }
                if (this.mViewModelStore == null) {
                    this.mViewModelStore = new r();
                }
            }
            return this.mViewModelStore;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Override // android.app.Activity
    @MainThread
    public void onBackPressed() {
        this.mOnBackPressedDispatcher.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.mSavedStateRegistryController.a(bundle);
        o.a(this);
        int i2 = this.mContentLayoutId;
        if (i2 != 0) {
            setContentView(i2);
        }
    }

    @Nullable
    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    @Nullable
    public final Object onRetainNonConfigurationInstance() {
        b bVar;
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        r rVar = this.mViewModelStore;
        if (rVar == null && (bVar = (b) getLastNonConfigurationInstance()) != null) {
            rVar = bVar.f709b;
        }
        if (rVar == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        b bVar2 = new b();
        bVar2.f708a = onRetainCustomNonConfigurationInstance;
        bVar2.f709b = rVar;
        return bVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    @CallSuper
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        e lifecycle = getLifecycle();
        if (lifecycle instanceof i) {
            ((i) lifecycle).b(e.b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.b(bundle);
    }

    @ContentView
    public ComponentActivity(@LayoutRes int i2) {
        this();
        this.mContentLayoutId = i2;
    }
}
