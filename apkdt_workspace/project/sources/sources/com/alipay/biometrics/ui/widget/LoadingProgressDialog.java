package com.alipay.biometrics.ui.widget;

import android.app.Dialog;
import android.content.Context;
import e.b.a.a.a.a.a.c;
import e.b.a.a.a.a.a.d;

/* loaded from: classes.dex */
public class LoadingProgressDialog extends Dialog {
    public LoadingProgressDialog(Context context) {
        this(context, d.f16855a);
    }

    public LoadingProgressDialog(Context context, int i2) {
        super(context, i2);
        setContentView(c.f16853b);
        getWindow().getAttributes().gravity = 17;
    }
}
