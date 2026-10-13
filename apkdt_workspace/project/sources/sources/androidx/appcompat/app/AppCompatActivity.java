package androidx.appcompat.app;

import a.a.n.b;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.CallSuper;
import androidx.annotation.ContentView;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.i0;
import androidx.core.app.m;
import androidx.fragment.app.FragmentActivity;

/* loaded from: classes.dex */
public class AppCompatActivity extends FragmentActivity implements d, m.a, b {

    /* renamed from: e, reason: collision with root package name */
    private AppCompatDelegate f778e;

    /* renamed from: f, reason: collision with root package name */
    private Resources f779f;

    public AppCompatActivity() {
    }

    private boolean a(KeyEvent keyEvent) {
        Window window;
        return (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().a(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(getDelegate().b(context));
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.e()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ActionBar supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.a(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(@IdRes int i2) {
        return (T) getDelegate().a(i2);
    }

    @NonNull
    public AppCompatDelegate getDelegate() {
        if (this.f778e == null) {
            this.f778e = AppCompatDelegate.a(this, this);
        }
        return this.f778e;
    }

    @Nullable
    public a getDrawerToggleDelegate() {
        return getDelegate().a();
    }

    @Override // android.app.Activity
    @NonNull
    public MenuInflater getMenuInflater() {
        return getDelegate().c();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.f779f == null && i0.b()) {
            this.f779f = new i0(this, super.getResources());
        }
        Resources resources = this.f779f;
        return resources == null ? super.getResources() : resources;
    }

    @Nullable
    public ActionBar getSupportActionBar() {
        return getDelegate().d();
    }

    @Override // androidx.core.app.m.a
    @Nullable
    public Intent getSupportParentActivityIntent() {
        return androidx.core.app.f.a(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().f();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f779f != null) {
            this.f779f.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        getDelegate().a(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        AppCompatDelegate delegate = getDelegate();
        delegate.e();
        delegate.a(bundle);
        super.onCreate(bundle);
    }

    public void onCreateSupportNavigateUpTaskStack(@NonNull m mVar) {
        mVar.a((Activity) this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().g();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (a(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i2, @NonNull MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.g() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i2, Menu menu) {
        return super.onMenuOpened(i2, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onNightModeChanged(int i2) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i2, @NonNull Menu menu) {
        super.onPanelClosed(i2, menu);
    }

    @Override // android.app.Activity
    protected void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().b(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        getDelegate().h();
    }

    public void onPrepareSupportNavigateUpTaskStack(@NonNull m mVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        getDelegate().c(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        getDelegate().i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        getDelegate().j();
    }

    @Override // androidx.appcompat.app.d
    @CallSuper
    public void onSupportActionModeFinished(@NonNull a.a.n.b bVar) {
    }

    @Override // androidx.appcompat.app.d
    @CallSuper
    public void onSupportActionModeStarted(@NonNull a.a.n.b bVar) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (supportShouldUpRecreateTask(supportParentActivityIntent)) {
            m a2 = m.a((Context) this);
            onCreateSupportNavigateUpTaskStack(a2);
            onPrepareSupportNavigateUpTaskStack(a2);
            a2.a();
            try {
                androidx.core.app.a.a((Activity) this);
                return true;
            } catch (IllegalStateException unused) {
                finish();
                return true;
            }
        }
        supportNavigateUpTo(supportParentActivityIntent);
        return true;
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i2) {
        super.onTitleChanged(charSequence, i2);
        getDelegate().a(charSequence);
    }

    @Override // androidx.appcompat.app.d
    @Nullable
    public a.a.n.b onWindowStartingSupportActionMode(@NonNull b.a aVar) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.l()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // android.app.Activity
    public void setContentView(@LayoutRes int i2) {
        getDelegate().c(i2);
    }

    public void setSupportActionBar(@Nullable Toolbar toolbar) {
        getDelegate().a(toolbar);
    }

    @Deprecated
    public void setSupportProgress(int i2) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(@StyleRes int i2) {
        super.setTheme(i2);
        getDelegate().d(i2);
    }

    @Nullable
    public a.a.n.b startSupportActionMode(@NonNull b.a aVar) {
        return getDelegate().a(aVar);
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void supportInvalidateOptionsMenu() {
        getDelegate().f();
    }

    public void supportNavigateUpTo(@NonNull Intent intent) {
        androidx.core.app.f.a(this, intent);
    }

    public boolean supportRequestWindowFeature(int i2) {
        return getDelegate().b(i2);
    }

    public boolean supportShouldUpRecreateTask(@NonNull Intent intent) {
        return androidx.core.app.f.b(this, intent);
    }

    @ContentView
    public AppCompatActivity(@LayoutRes int i2) {
        super(i2);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        getDelegate().a(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().b(view, layoutParams);
    }
}
