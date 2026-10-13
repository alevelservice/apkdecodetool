package com.example.native_webview.j;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;

/* compiled from: DialogLoadingBinding.java */
/* loaded from: classes.dex */
public abstract class c extends ViewDataBinding {

    @NonNull
    public final SimpleDraweeView v;

    /* JADX INFO: Access modifiers changed from: protected */
    public c(Object obj, View view, int i2, SimpleDraweeView simpleDraweeView) {
        super(obj, view, i2);
        this.v = simpleDraweeView;
    }
}
