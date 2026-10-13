package com.example.native_webview.j;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;

/* compiled from: ErrorBannerBasicBinding.java */
/* loaded from: classes.dex */
public abstract class e extends ViewDataBinding {

    @NonNull
    public final ImageView v;

    @NonNull
    public final TextView w;

    /* JADX INFO: Access modifiers changed from: protected */
    public e(Object obj, View view, int i2, ImageView imageView, TextView textView) {
        super(obj, view, i2);
        this.v = imageView;
        this.w = textView;
    }
}
