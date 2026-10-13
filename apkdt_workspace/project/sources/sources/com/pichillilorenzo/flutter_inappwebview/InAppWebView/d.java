package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.content.Context;
import android.view.View;
import g.a.c.a.n;
import java.util.HashMap;

/* compiled from: FlutterWebViewFactory.java */
/* loaded from: classes2.dex */
public class d extends io.flutter.plugin.platform.g {

    /* renamed from: b, reason: collision with root package name */
    private final View f16462b;

    /* renamed from: c, reason: collision with root package name */
    private final g.a.c.a.c f16463c;

    public d(g.a.c.a.c cVar, View view) {
        super(n.f18234a);
        this.f16462b = view;
        this.f16463c = cVar;
    }

    @Override // io.flutter.plugin.platform.g
    public io.flutter.plugin.platform.f a(Context context, int i2, Object obj) {
        return new c(this.f16463c, context, Integer.valueOf(i2), (HashMap) obj, this.f16462b);
    }
}
