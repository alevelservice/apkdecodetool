package com.example.native_webview.j;

import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;

/* compiled from: FragmentWebviewBinding.java */
/* loaded from: classes.dex */
public abstract class g extends ViewDataBinding {

    @NonNull
    public final CardView v;

    @NonNull
    public final WebView w;

    /* JADX INFO: Access modifiers changed from: protected */
    public g(Object obj, View view, int i2, CardView cardView, WebView webView) {
        super(obj, view, i2);
        this.v = cardView;
        this.w = webView;
    }
}
