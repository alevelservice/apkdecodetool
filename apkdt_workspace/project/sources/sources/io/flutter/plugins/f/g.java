package io.flutter.plugins.f;

import android.os.Handler;
import android.os.IBinder;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

/* compiled from: ThreadedInputConnectionProxyAdapterView.java */
/* loaded from: classes2.dex */
final class g extends View {

    /* renamed from: e, reason: collision with root package name */
    final Handler f19396e;

    /* renamed from: f, reason: collision with root package name */
    final IBinder f19397f;

    /* renamed from: g, reason: collision with root package name */
    final View f19398g;

    /* renamed from: h, reason: collision with root package name */
    final View f19399h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f19400i;

    /* renamed from: j, reason: collision with root package name */
    private InputConnection f19401j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(View view, View view2, Handler handler) {
        super(view.getContext());
        this.f19400i = false;
        this.f19396e = handler;
        this.f19399h = view2;
        this.f19397f = view.getWindowToken();
        this.f19398g = view.getRootView();
        setFocusable(true);
        setFocusableInTouchMode(true);
        setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f19400i = z;
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        return true;
    }

    @Override // android.view.View
    public Handler getHandler() {
        return this.f19396e;
    }

    @Override // android.view.View
    public View getRootView() {
        return this.f19398g;
    }

    @Override // android.view.View
    public IBinder getWindowToken() {
        return this.f19397f;
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
        InputConnection onCreateInputConnection = this.f19400i ? this.f19401j : this.f19399h.onCreateInputConnection(editorInfo);
        this.f19401j = onCreateInputConnection;
        return onCreateInputConnection;
    }
}
