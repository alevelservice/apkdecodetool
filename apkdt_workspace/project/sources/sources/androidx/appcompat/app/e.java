package androidx.appcompat.app;

import a.a.n.b;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.f;

/* compiled from: AppCompatDialog.java */
/* loaded from: classes.dex */
public class e extends Dialog implements d {

    /* renamed from: e, reason: collision with root package name */
    private AppCompatDelegate f827e;

    /* renamed from: f, reason: collision with root package name */
    private final f.a f828f;

    /* compiled from: AppCompatDialog.java */
    /* loaded from: classes.dex */
    class a implements f.a {
        a() {
        }

        @Override // androidx.core.view.f.a
        public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
            return e.this.a(keyEvent);
        }
    }

    public e(Context context, int i2) {
        super(context, a(context, i2));
        this.f828f = new a();
        AppCompatDelegate a2 = a();
        a2.d(a(context, i2));
        a2.a((Bundle) null);
    }

    public boolean a(int i2) {
        return a().b(i2);
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().a(view, layoutParams);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        a().g();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return androidx.core.view.f.a(this.f828f, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    @Nullable
    public <T extends View> T findViewById(@IdRes int i2) {
        return (T) a().a(i2);
    }

    @Override // android.app.Dialog
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void invalidateOptionsMenu() {
        a().f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        a().e();
        super.onCreate(bundle);
        a().a(bundle);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        a().j();
    }

    @Override // androidx.appcompat.app.d
    public void onSupportActionModeFinished(a.a.n.b bVar) {
    }

    @Override // androidx.appcompat.app.d
    public void onSupportActionModeStarted(a.a.n.b bVar) {
    }

    @Override // androidx.appcompat.app.d
    @Nullable
    public a.a.n.b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(@LayoutRes int i2) {
        a().c(i2);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        a().a(charSequence);
    }

    public AppCompatDelegate a() {
        if (this.f827e == null) {
            this.f827e = AppCompatDelegate.a(this, this);
        }
        return this.f827e;
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        a().a(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().b(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i2) {
        super.setTitle(i2);
        a().a(getContext().getString(i2));
    }

    private static int a(Context context, int i2) {
        if (i2 != 0) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(a.a.a.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
