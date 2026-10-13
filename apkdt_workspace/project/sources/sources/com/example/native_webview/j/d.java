package com.example.native_webview.j;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: DialogLoadingBindingImpl.java */
/* loaded from: classes.dex */
public class d extends c {

    @Nullable
    private static final ViewDataBinding.j y = null;

    @Nullable
    private static final SparseIntArray z = new SparseIntArray();

    @NonNull
    private final LinearLayout w;
    private long x;

    static {
        z.put(com.example.native_webview.g.loading_indicator, 1);
    }

    public d(@Nullable androidx.databinding.f fVar, @NonNull View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, y, z));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void a() {
        synchronized (this) {
            this.x = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean d() {
        synchronized (this) {
            return this.x != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void e() {
        synchronized (this) {
            this.x = 1L;
        }
        f();
    }

    private d(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (SimpleDraweeView) objArr[1]);
        this.x = -1L;
        this.w = (LinearLayout) objArr[0];
        this.w.setTag(null);
        a(view);
        e();
    }
}
