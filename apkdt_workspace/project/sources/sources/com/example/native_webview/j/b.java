package com.example.native_webview.j;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.ViewDataBinding;

/* compiled from: ActivityWebViewBindingImpl.java */
/* loaded from: classes.dex */
public class b extends a {

    @Nullable
    private static final SparseIntArray A;

    @Nullable
    private static final ViewDataBinding.j z = new ViewDataBinding.j(3);
    private long y;

    static {
        z.a(0, new String[]{"toolbar"}, new int[]{1}, new int[]{com.example.native_webview.h.toolbar});
        A = new SparseIntArray();
        A.put(com.example.native_webview.g.content_frame, 2);
    }

    public b(@Nullable androidx.databinding.f fVar, @NonNull View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, z, A));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void a() {
        synchronized (this) {
            this.y = 0L;
        }
        ViewDataBinding.d(this.v);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean d() {
        synchronized (this) {
            if (this.y != 0) {
                return true;
            }
            return this.v.d();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void e() {
        synchronized (this) {
            this.y = 2L;
        }
        this.v.e();
        f();
    }

    private b(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 1, (i) objArr[1], (FrameLayout) objArr[2], (RelativeLayout) objArr[0]);
        this.y = -1L;
        this.x.setTag(null);
        a(view);
        e();
    }
}
