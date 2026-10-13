package com.example.native_webview.j;

import android.util.SparseIntArray;
import android.view.View;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;

/* compiled from: FragmentWebviewBindingImpl.java */
/* loaded from: classes.dex */
public class h extends g {

    @Nullable
    private static final SparseIntArray A = new SparseIntArray();

    @Nullable
    private static final ViewDataBinding.j z = null;

    @NonNull
    private final LinearLayout x;
    private long y;

    static {
        A.put(com.example.native_webview.g.cardView, 1);
        A.put(com.example.native_webview.g.webview, 2);
    }

    public h(@Nullable androidx.databinding.f fVar, @NonNull View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, z, A));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void a() {
        synchronized (this) {
            this.y = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean d() {
        synchronized (this) {
            return this.y != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void e() {
        synchronized (this) {
            this.y = 1L;
        }
        f();
    }

    private h(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (CardView) objArr[1], (WebView) objArr[2]);
        this.y = -1L;
        this.x = (LinearLayout) objArr[0];
        this.x.setTag(null);
        a(view);
        e();
    }
}
