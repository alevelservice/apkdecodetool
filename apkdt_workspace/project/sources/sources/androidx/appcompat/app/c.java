package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AlertController;

/* compiled from: AlertDialog.java */
/* loaded from: classes.dex */
public class c extends e implements DialogInterface {

    /* renamed from: g, reason: collision with root package name */
    final AlertController f824g;

    /* compiled from: AlertDialog.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final AlertController.f f825a;

        /* renamed from: b, reason: collision with root package name */
        private final int f826b;

        public a(@NonNull Context context) {
            this(context, c.a(context, 0));
        }

        public a a(@Nullable View view) {
            this.f825a.f759g = view;
            return this;
        }

        @NonNull
        public Context b() {
            return this.f825a.f753a;
        }

        public a(@NonNull Context context, @StyleRes int i2) {
            this.f825a = new AlertController.f(new ContextThemeWrapper(context, c.a(context, i2)));
            this.f826b = i2;
        }

        public a a(@Nullable CharSequence charSequence) {
            this.f825a.f760h = charSequence;
            return this;
        }

        public a b(@Nullable CharSequence charSequence) {
            this.f825a.f758f = charSequence;
            return this;
        }

        public a a(@Nullable Drawable drawable) {
            this.f825a.f756d = drawable;
            return this;
        }

        public a b(@StringRes int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f825a;
            fVar.f761i = fVar.f753a.getText(i2);
            this.f825a.f763k = onClickListener;
            return this;
        }

        public a a(@StringRes int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f825a;
            fVar.f764l = fVar.f753a.getText(i2);
            this.f825a.n = onClickListener;
            return this;
        }

        public a b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f825a;
            fVar.f761i = charSequence;
            fVar.f763k = onClickListener;
            return this;
        }

        public a a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f825a;
            fVar.f764l = charSequence;
            fVar.n = onClickListener;
            return this;
        }

        public a a(boolean z) {
            this.f825a.r = z;
            return this;
        }

        public a a(DialogInterface.OnCancelListener onCancelListener) {
            this.f825a.s = onCancelListener;
            return this;
        }

        public a a(DialogInterface.OnKeyListener onKeyListener) {
            this.f825a.u = onKeyListener;
            return this;
        }

        public a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f825a;
            fVar.w = listAdapter;
            fVar.x = onClickListener;
            return this;
        }

        public a a(ListAdapter listAdapter, int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.f825a;
            fVar.w = listAdapter;
            fVar.x = onClickListener;
            fVar.I = i2;
            fVar.H = true;
            return this;
        }

        @NonNull
        public c a() {
            c cVar = new c(this.f825a.f753a, this.f826b);
            this.f825a.a(cVar.f824g);
            cVar.setCancelable(this.f825a.r);
            if (this.f825a.r) {
                cVar.setCanceledOnTouchOutside(true);
            }
            cVar.setOnCancelListener(this.f825a.s);
            cVar.setOnDismissListener(this.f825a.t);
            DialogInterface.OnKeyListener onKeyListener = this.f825a.u;
            if (onKeyListener != null) {
                cVar.setOnKeyListener(onKeyListener);
            }
            return cVar;
        }
    }

    protected c(@NonNull Context context, @StyleRes int i2) {
        super(context, a(context, i2));
        this.f824g = new AlertController(getContext(), this, getWindow());
    }

    static int a(@NonNull Context context, @StyleRes int i2) {
        if (((i2 >>> 24) & 255) >= 1) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(a.a.a.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView b() {
        return this.f824g.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.e, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f824g.b();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (this.f824g.a(i2, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (this.f824g.b(i2, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // androidx.appcompat.app.e, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f824g.b(charSequence);
    }

    public void a(View view) {
        this.f824g.b(view);
    }
}
