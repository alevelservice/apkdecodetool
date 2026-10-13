package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.os.Handler;
import android.os.IBinder;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

/* compiled from: ThreadedInputConnectionProxyAdapterView.java */
/* loaded from: classes2.dex */
final class j extends View {

    /* renamed from: e, reason: collision with root package name */
    final Handler f16557e;

    /* renamed from: f, reason: collision with root package name */
    final IBinder f16558f;

    /* renamed from: g, reason: collision with root package name */
    final View f16559g;

    /* renamed from: h, reason: collision with root package name */
    final View f16560h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f16561i;

    /* renamed from: j, reason: collision with root package name */
    private InputConnection f16562j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(View view, View view2, Handler handler) {
        super(view.getContext());
        this.f16561i = false;
        this.f16557e = handler;
        this.f16560h = view2;
        this.f16558f = view.getWindowToken();
        this.f16559g = view.getRootView();
        setFocusable(true);
        setFocusableInTouchMode(true);
        setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f16561i = z;
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        return true;
    }

    @Override // android.view.View
    public Handler getHandler() {
        return this.f16557e;
    }

    @Override // android.view.View
    public View getRootView() {
        return this.f16559g;
    }

    @Override // android.view.View
    public IBinder getWindowToken() {
        return this.f16558f;
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return true;
    }

    @Override // android.view.View
    public boolean isFocused() {
        return true;
    }

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        return true;
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = this.f16561i ? this.f16562j : this.f16560h.onCreateInputConnection(editorInfo);
        this.f16562j = onCreateInputConnection;
        return onCreateInputConnection;
    }
}
