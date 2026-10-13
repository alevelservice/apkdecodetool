package io.flutter.plugins.f;

import android.content.Context;
import android.view.View;
import g.a.c.a.n;
import java.util.Map;

/* compiled from: WebViewFactory.java */
/* loaded from: classes2.dex */
public final class h extends io.flutter.plugin.platform.g {

    /* renamed from: b, reason: collision with root package name */
    private final g.a.c.a.c f19402b;

    /* renamed from: c, reason: collision with root package name */
    private final View f19403c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g.a.c.a.c cVar, View view) {
        super(n.f18234a);
        this.f19402b = cVar;
        this.f19403c = view;
    }

    @Override // io.flutter.plugin.platform.g
    public io.flutter.plugin.platform.f a(Context context, int i2, Object obj) {
        return new c(context, this.f19402b, i2, (Map) obj, this.f19403c);
    }
}
