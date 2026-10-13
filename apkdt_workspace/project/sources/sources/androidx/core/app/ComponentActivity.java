package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.f;
import androidx.lifecycle.e;
import androidx.lifecycle.o;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ComponentActivity extends Activity implements androidx.lifecycle.h, f.a {
    private a.e.g<Class<? extends a>, a> mExtraDataMap = new a.e.g<>();
    private androidx.lifecycle.i mLifecycleRegistry = new androidx.lifecycle.i(this);

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    @Deprecated
    /* loaded from: classes.dex */
    public static class a {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !androidx.core.view.f.a(decorView, keyEvent)) {
            return androidx.core.view.f.a(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !androidx.core.view.f.a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public <T extends a> T getExtraData(Class<T> cls) {
        return (T) this.mExtraDataMap.get(cls);
    }

    @NonNull
    public androidx.lifecycle.e getLifecycle() {
        return this.mLifecycleRegistry;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    @SuppressLint({"RestrictedApi"})
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        o.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    @CallSuper
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        this.mLifecycleRegistry.a(e.b.CREATED);
        super.onSaveInstanceState(bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public void putExtraData(a aVar) {
        this.mExtraDataMap.put(aVar.getClass(), aVar);
    }

    @Override // androidx.core.view.f.a
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
