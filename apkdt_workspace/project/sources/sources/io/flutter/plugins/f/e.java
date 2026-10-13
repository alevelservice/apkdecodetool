package io.flutter.plugins.f;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.ListPopupWindow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InputAwareWebView.java */
/* loaded from: classes2.dex */
public final class e extends WebView {

    /* renamed from: e, reason: collision with root package name */
    private View f19386e;

    /* renamed from: f, reason: collision with root package name */
    private g f19387f;

    /* renamed from: g, reason: collision with root package name */
    private View f19388g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InputAwareWebView.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f19389e;

        a(View view) {
            this.f19389e = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            InputMethodManager inputMethodManager = (InputMethodManager) e.this.getContext().getSystemService("input_method");
            this.f19389e.onWindowFocusChanged(true);
            inputMethodManager.isActive(e.this.f19388g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context, View view) {
        super(context);
        this.f19388g = view;
    }

    private boolean d() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (int i2 = 0; i2 < stackTrace.length; i2++) {
            if (stackTrace[i2].getClassName().equals(ListPopupWindow.class.getCanonicalName()) && stackTrace[i2].getMethodName().equals("show")) {
                return true;
            }
        }
        return false;
    }

    private void e() {
        View view;
        if (this.f19387f == null || (view = this.f19388g) == null) {
            return;
        }
        b(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        g gVar = this.f19387f;
        if (gVar == null) {
            return;
        }
        gVar.a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        g gVar = this.f19387f;
        if (gVar == null) {
            return;
        }
        gVar.a(false);
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        View view2 = this.f19386e;
        this.f19386e = view;
        if (view2 == view) {
            return super.checkInputConnectionProxy(view);
        }
        View view3 = this.f19388g;
        if (view3 == null) {
            return super.checkInputConnectionProxy(view);
        }
        this.f19387f = new g(view3, view, view.getHandler());
        b(this.f19387f);
        return super.checkInputConnectionProxy(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        super.clearFocus();
        e();
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onFocusChanged(boolean z, int i2, Rect rect) {
        if (Build.VERSION.SDK_INT >= 28 || !d() || z) {
            super.onFocusChanged(z, i2, rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view) {
        this.f19388g = view;
        if (this.f19387f == null || view == null) {
            return;
        }
        b(this.f19387f);
    }

    private void b(View view) {
        if (this.f19388g == null) {
            return;
        }
        view.requestFocus();
        this.f19388g.post(new a(view));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        e();
    }
}
