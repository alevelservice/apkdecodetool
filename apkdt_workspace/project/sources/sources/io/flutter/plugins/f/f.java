package io.flutter.plugins.f;

import android.os.Handler;
import android.os.Looper;
import android.webkit.JavascriptInterface;
import g.a.c.a.k;
import java.util.HashMap;

/* compiled from: JavaScriptChannel.java */
/* loaded from: classes2.dex */
class f {

    /* renamed from: a, reason: collision with root package name */
    private final k f19391a;

    /* renamed from: b, reason: collision with root package name */
    private final String f19392b;

    /* renamed from: c, reason: collision with root package name */
    private final Handler f19393c;

    /* compiled from: JavaScriptChannel.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f19394e;

        a(String str) {
            this.f19394e = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            HashMap hashMap = new HashMap();
            hashMap.put("channel", f.this.f19392b);
            hashMap.put("message", this.f19394e);
            f.this.f19391a.a("javascriptChannelMessage", hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(k kVar, String str, Handler handler) {
        this.f19391a = kVar;
        this.f19392b = str;
        this.f19393c = handler;
    }

    @JavascriptInterface
    public void postMessage(String str) {
        a aVar = new a(str);
        if (this.f19393c.getLooper() == Looper.myLooper()) {
            aVar.run();
        } else {
            this.f19393c.post(aVar);
        }
    }
}
