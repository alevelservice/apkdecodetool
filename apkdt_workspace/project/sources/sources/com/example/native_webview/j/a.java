package com.example.native_webview.j;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;

/* compiled from: ActivityWebViewBinding.java */
/* loaded from: classes.dex */
public abstract class a extends ViewDataBinding {

    @NonNull
    public final i v;

    @NonNull
    public final FrameLayout w;

    @NonNull
    public final RelativeLayout x;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Object obj, View view, int i2, i iVar, FrameLayout frameLayout, RelativeLayout relativeLayout) {
        super(obj, view, i2);
        this.v = iVar;
        a((ViewDataBinding) this.v);
        this.w = frameLayout;
        this.x = relativeLayout;
    }
}
