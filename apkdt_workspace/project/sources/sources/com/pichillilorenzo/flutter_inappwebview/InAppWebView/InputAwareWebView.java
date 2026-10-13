package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.ListPopupWindow;

/* loaded from: classes2.dex */
public class InputAwareWebView extends WebView {
    public View containerView;

    /* renamed from: e, reason: collision with root package name */
    private View f16449e;

    /* renamed from: f, reason: collision with root package name */
    private j f16450f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f16451e;

        a(View view) {
            this.f16451e = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            InputMethodManager inputMethodManager = (InputMethodManager) InputAwareWebView.this.getContext().getSystemService("input_method");
            this.f16451e.onWindowFocusChanged(true);
            if (Build.VERSION.SDK_INT < 29) {
                inputMethodManager.isActive(InputAwareWebView.this.containerView);
            }
        }
    }

    public InputAwareWebView(Context context, View view) {
        super(context);
        this.containerView = view;
    }

    private boolean a() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (int i2 = 0; i2 < stackTrace.length; i2++) {
            if (stackTrace[i2].getClassName().equals(ListPopupWindow.class.getCanonicalName()) && stackTrace[i2].getMethodName().equals("show")) {
                return true;
            }
        }
        return false;
    }

    private void b() {
        View view;
        if (this.f16450f == null || (view = this.containerView) == null) {
            return;
        }
        setInputConnectionTarget(view);
    }

    private void setInputConnectionTarget(View view) {
        if (this.containerView == null) {
            return;
        }
        view.requestFocus();
        this.containerView.post(new a(view));
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        View view2 = this.f16449e;
        this.f16449e = view;
        if (view2 == view) {
            return super.checkInputConnectionProxy(view);
        }
        View view3 = this.containerView;
        if (view3 == null) {
            return super.checkInputConnectionProxy(view);
        }
        this.f16450f = new j(view3, view, view.getHandler());
        setInputConnectionTarget(this.f16450f);
        return super.checkInputConnectionProxy(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        super.clearFocus();
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispose() {
        b();
    }

    public void lockInputConnection() {
        j jVar = this.f16450f;
        if (jVar == null) {
            return;
        }
        jVar.a(true);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onFocusChanged(boolean z, int i2, Rect rect) {
        if (Build.VERSION.SDK_INT >= 28 || !a() || z) {
            super.onFocusChanged(z, i2, rect);
        }
    }

    public void setContainerView(View view) {
        this.containerView = view;
        if (this.f16450f == null || view == null) {
            return;
        }
        setInputConnectionTarget(this.f16450f);
    }

    public void unlockInputConnection() {
        j jVar = this.f16450f;
        if (jVar == null) {
            return;
        }
        jVar.a(false);
    }

    public InputAwareWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.containerView = null;
    }

    public InputAwareWebView(Context context) {
        super(context);
        this.containerView = null;
    }

    public InputAwareWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.containerView = null;
    }
}
