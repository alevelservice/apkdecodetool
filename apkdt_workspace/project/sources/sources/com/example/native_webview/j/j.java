package com.example.native_webview.j;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.ViewDataBinding;

/* compiled from: ToolbarBindingImpl.java */
/* loaded from: classes.dex */
public class j extends i {

    @Nullable
    private static final SparseIntArray A = new SparseIntArray();

    @Nullable
    private static final ViewDataBinding.j z = null;

    @NonNull
    private final LinearLayout x;
    private long y;

    static {
        A.put(com.example.native_webview.g.toolbar, 1);
        A.put(com.example.native_webview.g.iv_notification, 2);
        A.put(com.example.native_webview.g.toolbar_title, 3);
        A.put(com.example.native_webview.g.toolbar_separator, 4);
    }

    public j(@Nullable androidx.databinding.f fVar, @NonNull View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 5, z, A));
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

    private j(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (ImageView) objArr[2], (Toolbar) objArr[1], (View) objArr[4], (TextView) objArr[3]);
        this.y = -1L;
        this.x = (LinearLayout) objArr[0];
        this.x.setTag(null);
        a(view);
        e();
    }
}
