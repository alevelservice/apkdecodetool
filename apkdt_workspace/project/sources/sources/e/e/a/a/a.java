package e.e.a.a;

import android.webkit.JavascriptInterface;

/* compiled from: AndroidJSInterface.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private d f17091a;

    /* renamed from: b, reason: collision with root package name */
    private String f17092b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(d dVar, String str) {
        this.f17091a = dVar;
        this.f17092b = str;
    }

    @JavascriptInterface
    public void disableBackButton(String str) {
        this.f17091a.c();
        this.f17091a.e();
    }

    @JavascriptInterface
    public String getAccessToken() {
        return this.f17092b;
    }

    @JavascriptInterface
    public void goBackHome(String str) {
        this.f17091a.f();
    }

    @JavascriptInterface
    public void keepSessionAlive() {
        this.f17091a.d();
    }

    @JavascriptInterface
    public void notifyAppWithResponseData(String str) {
        this.f17091a.a(str);
    }

    @JavascriptInterface
    public void userLoggedOut() {
        this.f17091a.b();
    }
}
