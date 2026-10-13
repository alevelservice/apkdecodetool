package com.example.native_webview.j;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.ViewDataBinding;

/* compiled from: ErrorBannerBasicBindingImpl.java */
/* loaded from: classes.dex */
public class f extends e {

    @Nullable
    private static final SparseIntArray A = new SparseIntArray();

    @Nullable
    private static final ViewDataBinding.j z = null;

    @NonNull
    private final RelativeLayout x;
    private long y;

    static {
        A.put(com.example.native_webview.g.tv_error_message, 1);
        A.put(com.example.native_webview.g.iv_error_cancel, 2);
    }

    public f(@Nullable androidx.databinding.f fVar, @NonNull View view) {
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

    private f(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (ImageView) objArr[2], (TextView) objArr[1]);
        this.y = -1L;
        this.x = (RelativeLayout) objArr[0];
        this.x.setTag(null);
        a(view);
        e();
    }
}
