package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Message;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.MimeTypeMap;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.c;
import androidx.core.content.FileProvider;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity;
import g.a.c.a.k;
import g.a.c.a.m;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: InAppWebViewChromeClient.java */
/* loaded from: classes2.dex */
public class e extends WebChromeClient implements m.a, InAppBrowserActivity.g {
    public static Map<Integer, Message> m = new HashMap();
    private static int n = 0;
    protected static final FrameLayout.LayoutParams o = new FrameLayout.LayoutParams(-1, -1, 17);

    /* renamed from: e, reason: collision with root package name */
    private com.pichillilorenzo.flutter_inappwebview.InAppWebView.c f16464e;

    /* renamed from: f, reason: collision with root package name */
    private InAppBrowserActivity f16465f;

    /* renamed from: g, reason: collision with root package name */
    public g.a.c.a.k f16466g;

    /* renamed from: h, reason: collision with root package name */
    private Uri f16467h;

    /* renamed from: i, reason: collision with root package name */
    private View f16468i;

    /* renamed from: j, reason: collision with root package name */
    private WebChromeClient.CustomViewCallback f16469j;

    /* renamed from: k, reason: collision with root package name */
    private int f16470k;

    /* renamed from: l, reason: collision with root package name */
    private int f16471l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    public class a implements DialogInterface.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ JsPromptResult f16472e;

        a(e eVar, JsPromptResult jsPromptResult) {
            this.f16472e = jsPromptResult;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            this.f16472e.cancel();
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    public class b implements DialogInterface.OnCancelListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ JsPromptResult f16473e;

        b(e eVar, JsPromptResult jsPromptResult) {
            this.f16473e = jsPromptResult;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            this.f16473e.cancel();
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    public class d implements DialogInterface.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ JsResult f16478e;

        d(e eVar, JsResult jsResult) {
            this.f16478e = jsResult;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            this.f16478e.confirm();
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewChromeClient.java */
    /* renamed from: com.pichillilorenzo.flutter_inappwebview.InAppWebView.e$e, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class DialogInterfaceOnClickListenerC0172e implements DialogInterface.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ JsResult f16479e;

        DialogInterfaceOnClickListenerC0172e(e eVar, JsResult jsResult) {
            this.f16479e = jsResult;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            this.f16479e.cancel();
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    public class f implements DialogInterface.OnCancelListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ JsResult f16480e;

        f(e eVar, JsResult jsResult) {
            this.f16480e = jsResult;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            this.f16480e.cancel();
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    public class k implements DialogInterface.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ JsResult f16489e;

        k(e eVar, JsResult jsResult) {
            this.f16489e = jsResult;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            this.f16489e.confirm();
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    public class l implements DialogInterface.OnCancelListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ JsResult f16490e;

        l(e eVar, JsResult jsResult) {
            this.f16490e = jsResult;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            this.f16490e.cancel();
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    public class n implements DialogInterface.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ JsResult f16495e;

        n(e eVar, JsResult jsResult) {
            this.f16495e = jsResult;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            this.f16495e.confirm();
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    public class o implements DialogInterface.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ JsResult f16496e;

        o(e eVar, JsResult jsResult) {
            this.f16496e = jsResult;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            this.f16496e.cancel();
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    public class p implements DialogInterface.OnCancelListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ JsResult f16497e;

        p(e eVar, JsResult jsResult) {
            this.f16497e = jsResult;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            this.f16497e.cancel();
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    public class r implements DialogInterface.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ EditText f16503e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ JsPromptResult f16504f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f16505g;

        r(e eVar, EditText editText, JsPromptResult jsPromptResult, String str) {
            this.f16503e = editText;
            this.f16504f = jsPromptResult;
            this.f16505g = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            String obj = this.f16503e.getText().toString();
            JsPromptResult jsPromptResult = this.f16504f;
            String str = this.f16505g;
            if (str != null) {
                obj = str;
            }
            jsPromptResult.confirm(obj);
            dialogInterface.dismiss();
        }
    }

    public e(Object obj) {
        if (obj instanceof InAppBrowserActivity) {
            this.f16465f = (InAppBrowserActivity) obj;
            this.f16465f.activityResultListeners.add(this);
        } else if (obj instanceof com.pichillilorenzo.flutter_inappwebview.InAppWebView.c) {
            this.f16464e = (com.pichillilorenzo.flutter_inappwebview.InAppWebView.c) obj;
        }
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        this.f16466g = inAppBrowserActivity != null ? inAppBrowserActivity.channel : this.f16464e.f16458f;
        m.d dVar = com.pichillilorenzo.flutter_inappwebview.q.f16639b;
        if (dVar != null) {
            dVar.a(this);
        } else {
            com.pichillilorenzo.flutter_inappwebview.q.f16642e.a(this);
        }
    }

    private Intent d() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        this.f16467h = c("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", this.f16467h);
        return intent;
    }

    private Intent e() {
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        this.f16467h = c("android.media.action.VIDEO_CAPTURE");
        intent.putExtra("output", this.f16467h);
        return intent;
    }

    public void a(WebView webView, String str, JsResult jsResult, String str2, String str3) {
        if (str2 != null && !str2.isEmpty()) {
            str = str2;
        }
        k kVar = new k(this, jsResult);
        Context context = this.f16465f;
        if (context == null) {
            context = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        c.a aVar = new c.a(context, com.pichillilorenzo.flutter_inappwebview.p.Theme_AppCompat_Dialog_Alert);
        aVar.a(str);
        if (str3 != null && !str3.isEmpty()) {
            aVar.b(str3, kVar);
        } else {
            aVar.b(R.string.ok, kVar);
        }
        aVar.a(new l(this, jsResult));
        aVar.a().show();
    }

    public void b(WebView webView, String str, JsResult jsResult, String str2, String str3, String str4) {
        if (str2 != null && !str2.isEmpty()) {
            str = str2;
        }
        n nVar = new n(this, jsResult);
        o oVar = new o(this, jsResult);
        Context context = this.f16465f;
        if (context == null) {
            context = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        c.a aVar = new c.a(context, com.pichillilorenzo.flutter_inappwebview.p.Theme_AppCompat_Dialog_Alert);
        aVar.a(str);
        if (str3 != null && !str3.isEmpty()) {
            aVar.b(str3, nVar);
        } else {
            aVar.b(R.string.ok, nVar);
        }
        if (str4 != null && !str4.isEmpty()) {
            aVar.a(str4, oVar);
        } else {
            aVar.a(R.string.cancel, oVar);
        }
        aVar.a(new p(this, jsResult));
        aVar.a().show();
    }

    protected boolean c() {
        Activity activity = this.f16465f;
        if (activity == null) {
            activity = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        try {
            if (Arrays.asList(activity.getPackageManager().getPackageInfo(activity.getApplicationContext().getPackageName(), 4096).requestedPermissions).contains("android.permission.CAMERA")) {
                if (androidx.core.content.a.a(activity, "android.permission.CAMERA") != 0) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        if (this.f16468i == null) {
            return null;
        }
        Activity activity = this.f16465f;
        if (activity == null) {
            activity = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        return BitmapFactory.decodeResource(activity.getApplicationContext().getResources(), 2130837573);
    }

    @Override // g.a.c.a.m.a
    public boolean onActivityResult(int i2, int i3, Intent intent) {
        Uri data;
        if (com.pichillilorenzo.flutter_inappwebview.g.m == null && com.pichillilorenzo.flutter_inappwebview.g.f16614l == null) {
            return true;
        }
        if (i2 != 1) {
            if (i2 == 3) {
                if (i3 != -1) {
                    data = null;
                } else {
                    data = intent == null ? this.f16467h : intent.getData();
                }
                com.pichillilorenzo.flutter_inappwebview.g.f16614l.onReceiveValue(data);
            }
        } else if (i3 != -1) {
            ValueCallback<Uri[]> valueCallback = com.pichillilorenzo.flutter_inappwebview.g.m;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
        } else {
            Uri[] a2 = a(intent, i3);
            if (a2 != null) {
                com.pichillilorenzo.flutter_inappwebview.g.m.onReceiveValue(a2);
            } else {
                com.pichillilorenzo.flutter_inappwebview.g.m.onReceiveValue(new Uri[]{this.f16467h});
            }
        }
        com.pichillilorenzo.flutter_inappwebview.g.m = null;
        com.pichillilorenzo.flutter_inappwebview.g.f16614l = null;
        this.f16467h = null;
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        this.f16466g.a("onCloseWindow", hashMap);
        super.onCloseWindow(webView);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put("message", consoleMessage.message());
        hashMap.put("messageLevel", Integer.valueOf(consoleMessage.messageLevel().ordinal()));
        this.f16466g.a("onConsoleMessage", hashMap);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        n++;
        int i2 = n;
        String extra = webView.getHitTestResult().getExtra();
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(HummerConstants.URL, extra);
        hashMap.put("windowId", Integer.valueOf(i2));
        hashMap.put("androidIsDialog", Boolean.valueOf(z));
        hashMap.put("androidIsUserGesture", Boolean.valueOf(z2));
        hashMap.put("iosWKNavigationType", null);
        hashMap.put("iosIsForMainFrame", null);
        m.put(Integer.valueOf(i2), message);
        this.f16466g.a("onCreateWindow", hashMap, new g(this, i2));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        this.f16466g.a("onGeolocationPermissionsHidePrompt", hashMap);
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put("origin", str);
        this.f16466g.a("onGeolocationPermissionsShowPrompt", hashMap, new h(this, callback, str));
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        Activity activity = this.f16465f;
        if (activity == null) {
            activity = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        ViewGroup b2 = b();
        ((FrameLayout) b2).removeView(this.f16468i);
        this.f16468i = null;
        b2.setSystemUiVisibility(this.f16471l);
        activity.setRequestedOrientation(this.f16470k);
        this.f16469j.onCustomViewHidden();
        this.f16469j = null;
        activity.getWindow().clearFlags(512);
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        this.f16466g.a("onExitFullscreen", hashMap);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(HummerConstants.URL, str);
        hashMap.put("message", str2);
        hashMap.put("iosIsMainFrame", null);
        this.f16466g.a("onJsAlert", hashMap, new j(jsResult, webView, str2));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(HummerConstants.URL, str);
        hashMap.put("message", str2);
        hashMap.put("iosIsMainFrame", null);
        this.f16466g.a("onJsBeforeUnload", hashMap, new c(jsResult, webView, str2));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(HummerConstants.URL, str);
        hashMap.put("message", str2);
        hashMap.put("iosIsMainFrame", null);
        this.f16466g.a("onJsConfirm", hashMap, new m(jsResult, webView, str2));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(HummerConstants.URL, str);
        hashMap.put("message", str2);
        hashMap.put("defaultValue", str3);
        hashMap.put("iosIsMainFrame", null);
        this.f16466g.a("onJsPrompt", hashMap, new q(jsPromptResult, webView, str2, str3));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(PermissionRequest permissionRequest) {
        if (Build.VERSION.SDK_INT >= 23) {
            HashMap hashMap = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = this.f16465f;
            if (inAppBrowserActivity != null) {
                hashMap.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap.put("origin", permissionRequest.getOrigin().toString());
            hashMap.put("resources", Arrays.asList(permissionRequest.getResources()));
            this.f16466g.a("onPermissionRequest", hashMap, new i(this, permissionRequest));
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i2) {
        ProgressBar progressBar;
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null && (progressBar = inAppBrowserActivity.progressBar) != null) {
            progressBar.setVisibility(0);
            if (Build.VERSION.SDK_INT >= 24) {
                this.f16465f.progressBar.setProgress(i2, true);
            } else {
                this.f16465f.progressBar.setProgress(i2);
            }
            if (i2 == 100) {
                this.f16465f.progressBar.setVisibility(8);
            }
        }
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity2 = this.f16465f;
        if (inAppBrowserActivity2 != null) {
            hashMap.put("uuid", inAppBrowserActivity2.uuid);
        }
        hashMap.put("progress", Integer.valueOf(i2));
        this.f16466g.a("onProgressChanged", hashMap);
        super.onProgressChanged(webView, i2);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedIcon(WebView webView, Bitmap bitmap) {
        super.onReceivedIcon(webView, bitmap);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        try {
            byteArrayOutputStream.close();
        } catch (IOException e2) {
            e2.printStackTrace();
            e2.getMessage();
        }
        bitmap.recycle();
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put("icon", byteArrayOutputStream.toByteArray());
        this.f16466g.a("onReceivedIcon", hashMap);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null && inAppBrowserActivity.actionBar != null && inAppBrowserActivity.options.f16408d.isEmpty()) {
            this.f16465f.actionBar.a(str);
        }
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity2 = this.f16465f;
        if (inAppBrowserActivity2 != null) {
            hashMap.put("uuid", inAppBrowserActivity2.uuid);
        }
        hashMap.put("title", str);
        this.f16466g.a("onTitleChanged", hashMap);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
        super.onReceivedTouchIconUrl(webView, str, z);
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(HummerConstants.URL, str);
        hashMap.put("precomposed", Boolean.valueOf(z));
        this.f16466g.a("onReceivedTouchIconUrl", hashMap);
    }

    @Override // android.webkit.WebChromeClient
    public void onRequestFocus(WebView webView) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        this.f16466g.a("onRequestFocus", hashMap);
        super.onCloseWindow(webView);
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        if (this.f16468i != null) {
            onHideCustomView();
            return;
        }
        Activity activity = this.f16465f;
        if (activity == null) {
            activity = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        ViewGroup b2 = b();
        this.f16468i = view;
        this.f16471l = b2.getSystemUiVisibility();
        this.f16470k = activity.getRequestedOrientation();
        this.f16469j = customViewCallback;
        this.f16468i.setBackgroundColor(-16777216);
        if (Build.VERSION.SDK_INT >= 19) {
            b2.setSystemUiVisibility(7942);
        } else {
            b2.setSystemUiVisibility(1798);
        }
        activity.getWindow().setFlags(512, 512);
        ((FrameLayout) b2).addView(this.f16468i, o);
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16465f;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        this.f16466g.a("onEnterFullscreen", hashMap);
    }

    @Override // android.webkit.WebChromeClient
    @TargetApi(21)
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        return a(valueCallback, fileChooserParams.createIntent(), fileChooserParams.getAcceptTypes(), fileChooserParams.getMode() == 1);
    }

    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    class h implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ GeolocationPermissions.Callback f16482a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f16483b;

        h(e eVar, GeolocationPermissions.Callback callback, String str) {
            this.f16482a = callback;
            this.f16483b = str;
        }

        @Override // g.a.c.a.k.d
        public void a(Object obj) {
            Map map = (Map) obj;
            if (map != null) {
                this.f16482a.invoke((String) map.get("origin"), ((Boolean) map.get("allow")).booleanValue(), ((Boolean) map.get("retain")).booleanValue());
            } else {
                this.f16482a.invoke(this.f16483b, false, false);
            }
        }

        @Override // g.a.c.a.k.d
        public void a(String str, String str2, Object obj) {
            this.f16482a.invoke(this.f16483b, false, false);
        }

        @Override // g.a.c.a.k.d
        public void a() {
            this.f16482a.invoke(this.f16483b, false, false);
        }
    }

    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    class g implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f16481a;

        g(e eVar, int i2) {
            this.f16481a = i2;
        }

        @Override // g.a.c.a.k.d
        public void a(@Nullable Object obj) {
            if ((obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false) || !e.m.containsKey(Integer.valueOf(this.f16481a))) {
                return;
            }
            e.m.remove(Integer.valueOf(this.f16481a));
        }

        @Override // g.a.c.a.k.d
        public void a(String str, @Nullable String str2, @Nullable Object obj) {
            if (e.m.containsKey(Integer.valueOf(this.f16481a))) {
                e.m.remove(Integer.valueOf(this.f16481a));
            }
        }

        @Override // g.a.c.a.k.d
        public void a() {
            if (e.m.containsKey(Integer.valueOf(this.f16481a))) {
                e.m.remove(Integer.valueOf(this.f16481a));
            }
        }
    }

    private Boolean d(String[] strArr) {
        boolean z = false;
        if (strArr.length == 0 || (strArr.length == 1 && strArr[0].length() == 0)) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    private String[] c(String[] strArr) {
        if (d(strArr).booleanValue()) {
            return new String[]{"*/*"};
        }
        String[] strArr2 = new String[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            String str = strArr[i2];
            if (str.matches("\\.\\w+")) {
                strArr2[i2] = b(str.replace(".", ""));
            } else {
                strArr2[i2] = str;
            }
        }
        return strArr2;
    }

    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    class i implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ PermissionRequest f16484a;

        i(e eVar, PermissionRequest permissionRequest) {
            this.f16484a = permissionRequest;
        }

        @Override // g.a.c.a.k.d
        public void a(Object obj) {
            if (obj != null) {
                Map map = (Map) obj;
                Integer num = (Integer) map.get("action");
                List list = (List) map.get("resources");
                if (list == null) {
                    list = new ArrayList();
                }
                String[] strArr = (String[]) list.toArray(new String[list.size()]);
                if (num != null) {
                    if (num.intValue() != 1) {
                        this.f16484a.deny();
                        return;
                    } else {
                        this.f16484a.grant(strArr);
                        return;
                    }
                }
            }
            this.f16484a.deny();
        }

        @Override // g.a.c.a.k.d
        public void a(String str, String str2, Object obj) {
            String str3 = str + ", " + str2;
        }

        @Override // g.a.c.a.k.d
        public void a() {
            this.f16484a.deny();
        }
    }

    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    class j implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ JsResult f16485a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ WebView f16486b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f16487c;

        j(JsResult jsResult, WebView webView, String str) {
            this.f16485a = jsResult;
            this.f16486b = webView;
            this.f16487c = str;
        }

        @Override // g.a.c.a.k.d
        public void a(Object obj) {
            String str;
            String str2;
            if (obj != null) {
                Map map = (Map) obj;
                String str3 = (String) map.get("message");
                String str4 = (String) map.get("confirmButtonTitle");
                Boolean bool = (Boolean) map.get("handledByClient");
                if (bool != null && bool.booleanValue()) {
                    Integer num = (Integer) map.get("action");
                    if (Integer.valueOf(num != null ? num.intValue() : 1).intValue() != 0) {
                        this.f16485a.cancel();
                        return;
                    } else {
                        this.f16485a.confirm();
                        return;
                    }
                }
                str = str3;
                str2 = str4;
            } else {
                str = null;
                str2 = null;
            }
            e.this.a(this.f16486b, this.f16487c, this.f16485a, str, str2);
        }

        @Override // g.a.c.a.k.d
        public void a(String str, String str2, Object obj) {
            String str3 = str + ", " + str2;
            this.f16485a.cancel();
        }

        @Override // g.a.c.a.k.d
        public void a() {
            e.this.a(this.f16486b, this.f16487c, this.f16485a, null, null);
        }
    }

    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    class c implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ JsResult f16474a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ WebView f16475b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f16476c;

        c(JsResult jsResult, WebView webView, String str) {
            this.f16474a = jsResult;
            this.f16475b = webView;
            this.f16476c = str;
        }

        @Override // g.a.c.a.k.d
        public void a(Object obj) {
            String str;
            String str2;
            String str3;
            if (obj != null) {
                Map map = (Map) obj;
                String str4 = (String) map.get("message");
                String str5 = (String) map.get("confirmButtonTitle");
                String str6 = (String) map.get("cancelButtonTitle");
                Boolean bool = (Boolean) map.get("handledByClient");
                if (bool != null && bool.booleanValue()) {
                    Integer num = (Integer) map.get("action");
                    if (Integer.valueOf(num != null ? num.intValue() : 1).intValue() != 0) {
                        this.f16474a.cancel();
                        return;
                    } else {
                        this.f16474a.confirm();
                        return;
                    }
                }
                str = str4;
                str2 = str5;
                str3 = str6;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            e.this.a(this.f16475b, this.f16476c, this.f16474a, str, str2, str3);
        }

        @Override // g.a.c.a.k.d
        public void a(String str, String str2, Object obj) {
            String str3 = str + ", " + str2;
            this.f16474a.cancel();
        }

        @Override // g.a.c.a.k.d
        public void a() {
            e.this.b(this.f16475b, this.f16476c, this.f16474a, null, null, null);
        }
    }

    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    class m implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ JsResult f16491a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ WebView f16492b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f16493c;

        m(JsResult jsResult, WebView webView, String str) {
            this.f16491a = jsResult;
            this.f16492b = webView;
            this.f16493c = str;
        }

        @Override // g.a.c.a.k.d
        public void a(Object obj) {
            String str;
            String str2;
            String str3;
            if (obj != null) {
                Map map = (Map) obj;
                String str4 = (String) map.get("message");
                String str5 = (String) map.get("confirmButtonTitle");
                String str6 = (String) map.get("cancelButtonTitle");
                Boolean bool = (Boolean) map.get("handledByClient");
                if (bool != null && bool.booleanValue()) {
                    Integer num = (Integer) map.get("action");
                    if (Integer.valueOf(num != null ? num.intValue() : 1).intValue() != 0) {
                        this.f16491a.cancel();
                        return;
                    } else {
                        this.f16491a.confirm();
                        return;
                    }
                }
                str = str4;
                str2 = str5;
                str3 = str6;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            e.this.b(this.f16492b, this.f16493c, this.f16491a, str, str2, str3);
        }

        @Override // g.a.c.a.k.d
        public void a(String str, String str2, Object obj) {
            String str3 = str + ", " + str2;
            this.f16491a.cancel();
        }

        @Override // g.a.c.a.k.d
        public void a() {
            e.this.b(this.f16492b, this.f16493c, this.f16491a, null, null, null);
        }
    }

    public void a(WebView webView, String str, String str2, JsPromptResult jsPromptResult, String str3, String str4, String str5, String str6, String str7) {
        FrameLayout frameLayout = new FrameLayout(webView.getContext());
        EditText editText = new EditText(webView.getContext());
        editText.setMaxLines(1);
        if (str4 != null && !str4.isEmpty()) {
            str2 = str4;
        }
        editText.setText(str2);
        editText.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        frameLayout.setPaddingRelative(45, 15, 45, 0);
        frameLayout.addView(editText);
        if (str3 != null && !str3.isEmpty()) {
            str = str3;
        }
        r rVar = new r(this, editText, jsPromptResult, str5);
        a aVar = new a(this, jsPromptResult);
        Context context = this.f16465f;
        if (context == null) {
            context = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        c.a aVar2 = new c.a(context, com.pichillilorenzo.flutter_inappwebview.p.Theme_AppCompat_Dialog_Alert);
        aVar2.a(str);
        if (str7 != null && !str7.isEmpty()) {
            aVar2.b(str7, rVar);
        } else {
            aVar2.b(R.string.ok, rVar);
        }
        if (str6 != null && !str6.isEmpty()) {
            aVar2.a(str6, aVar);
        } else {
            aVar2.a(R.string.cancel, aVar);
        }
        aVar2.a(new b(this, jsPromptResult));
        androidx.appcompat.app.c a2 = aVar2.a();
        a2.a(frameLayout);
        a2.show();
    }

    /* compiled from: InAppWebViewChromeClient.java */
    /* loaded from: classes2.dex */
    class q implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ JsPromptResult f16498a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ WebView f16499b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f16500c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f16501d;

        q(JsPromptResult jsPromptResult, WebView webView, String str, String str2) {
            this.f16498a = jsPromptResult;
            this.f16499b = webView;
            this.f16500c = str;
            this.f16501d = str2;
        }

        @Override // g.a.c.a.k.d
        public void a(Object obj) {
            String str;
            String str2;
            String str3;
            String str4;
            String str5;
            if (obj != null) {
                Map map = (Map) obj;
                String str6 = (String) map.get("message");
                String str7 = (String) map.get("defaultValue");
                String str8 = (String) map.get("confirmButtonTitle");
                String str9 = (String) map.get("cancelButtonTitle");
                String str10 = (String) map.get(HummerConstants.VALUE);
                Boolean bool = (Boolean) map.get("handledByClient");
                if (bool != null && bool.booleanValue()) {
                    Integer num = (Integer) map.get("action");
                    if (Integer.valueOf(num != null ? num.intValue() : 1).intValue() != 0) {
                        this.f16498a.cancel();
                        return;
                    } else {
                        this.f16498a.confirm(str10);
                        return;
                    }
                }
                str = str6;
                str2 = str7;
                str5 = str8;
                str4 = str9;
                str3 = str10;
            } else {
                str = null;
                str2 = null;
                str3 = null;
                str4 = null;
                str5 = null;
            }
            e.this.a(this.f16499b, this.f16500c, this.f16501d, this.f16498a, str, str2, str3, str4, str5);
        }

        @Override // g.a.c.a.k.d
        public void a(String str, String str2, Object obj) {
            String str3 = str + ", " + str2;
            this.f16498a.cancel();
        }

        @Override // g.a.c.a.k.d
        public void a() {
            e.this.a(this.f16499b, this.f16500c, this.f16501d, this.f16498a, null, null, null, null, null);
        }
    }

    private Uri c(String str) {
        File file;
        try {
            file = a(str);
        } catch (IOException e2) {
            e2.printStackTrace();
            file = null;
        }
        if (Build.VERSION.SDK_INT < 23) {
            return Uri.fromFile(file);
        }
        Activity activity = this.f16465f;
        if (activity == null) {
            activity = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        String packageName = activity.getApplicationContext().getPackageName();
        return FileProvider.getUriForFile(activity.getApplicationContext(), packageName + ".flutter_inappwebview.fileprovider", file);
    }

    protected ViewGroup b() {
        Activity activity = this.f16465f;
        if (activity == null) {
            activity = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        return (ViewGroup) activity.findViewById(R.id.content);
    }

    private Boolean b(String[] strArr) {
        String[] c2 = c(strArr);
        return Boolean.valueOf(d(c2).booleanValue() || a(c2, "video").booleanValue());
    }

    private String b(String str) {
        if (str != null) {
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
        }
        return null;
    }

    public void a(WebView webView, String str, JsResult jsResult, String str2, String str3, String str4) {
        if (str2 != null && !str2.isEmpty()) {
            str = str2;
        }
        d dVar = new d(this, jsResult);
        DialogInterfaceOnClickListenerC0172e dialogInterfaceOnClickListenerC0172e = new DialogInterfaceOnClickListenerC0172e(this, jsResult);
        Context context = this.f16465f;
        if (context == null) {
            context = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        c.a aVar = new c.a(context, com.pichillilorenzo.flutter_inappwebview.p.Theme_AppCompat_Dialog_Alert);
        aVar.a(str);
        if (str3 != null && !str3.isEmpty()) {
            aVar.b(str3, dVar);
        } else {
            aVar.b(R.string.ok, dVar);
        }
        if (str4 != null && !str4.isEmpty()) {
            aVar.a(str4, dialogInterfaceOnClickListenerC0172e);
        } else {
            aVar.a(R.string.cancel, dialogInterfaceOnClickListenerC0172e);
        }
        aVar.a(new f(this, jsResult));
        aVar.a().show();
    }

    private Uri[] a(Intent intent, int i2) {
        Uri[] uriArr = null;
        if (intent == null) {
            return null;
        }
        if (intent.getData() != null) {
            if (i2 != -1 || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return WebChromeClient.FileChooserParams.parseResult(i2, intent);
        }
        if (intent.getClipData() != null) {
            int itemCount = intent.getClipData().getItemCount();
            uriArr = new Uri[itemCount];
            for (int i3 = 0; i3 < itemCount; i3++) {
                uriArr[i3] = intent.getClipData().getItemAt(i3).getUri();
            }
        }
        return uriArr;
    }

    @RequiresApi(api = 21)
    public boolean a(ValueCallback<Uri[]> valueCallback, Intent intent, String[] strArr, boolean z) {
        com.pichillilorenzo.flutter_inappwebview.g.m = valueCallback;
        ArrayList arrayList = new ArrayList();
        if (!c()) {
            if (a(strArr).booleanValue()) {
                arrayList.add(d());
            }
            if (b(strArr).booleanValue()) {
                arrayList.add(e());
            }
        }
        Intent a2 = a(strArr, z);
        Intent intent2 = new Intent("android.intent.action.CHOOSER");
        intent2.putExtra("android.intent.extra.INTENT", a2);
        intent2.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
        Activity activity = this.f16465f;
        if (activity == null) {
            activity = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        if (intent2.resolveActivity(activity.getPackageManager()) != null) {
            activity.startActivityForResult(intent2, 1);
        }
        return true;
    }

    @RequiresApi(api = 19)
    private Intent a(String[] strArr, boolean z) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.MIME_TYPES", c(strArr));
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", z);
        return intent;
    }

    private Boolean a(String[] strArr) {
        String[] c2 = c(strArr);
        return Boolean.valueOf(d(c2).booleanValue() || a(c2, "image").booleanValue());
    }

    private Boolean a(String[] strArr, String str) {
        for (String str2 : strArr) {
            if (str2.contains(str)) {
                return true;
            }
        }
        return false;
    }

    private File a(String str) {
        String str2;
        String str3;
        String str4 = "";
        if (str.equals("android.media.action.IMAGE_CAPTURE")) {
            str4 = Environment.DIRECTORY_PICTURES;
            str2 = "image-";
            str3 = ".jpg";
        } else if (str.equals("android.media.action.VIDEO_CAPTURE")) {
            str4 = Environment.DIRECTORY_MOVIES;
            str2 = "video-";
            str3 = ".mp4";
        } else {
            str2 = "";
            str3 = str2;
        }
        String str5 = str2 + String.valueOf(System.currentTimeMillis()) + str3;
        if (Build.VERSION.SDK_INT < 23) {
            return new File(Environment.getExternalStoragePublicDirectory(str4), str5);
        }
        Activity activity = this.f16465f;
        if (activity == null) {
            activity = com.pichillilorenzo.flutter_inappwebview.q.f16643f;
        }
        return File.createTempFile(str5, str3, activity.getApplicationContext().getExternalFilesDir(null));
    }

    public void a() {
        this.f16466g.a((k.c) null);
        io.flutter.embedding.engine.g.c.c cVar = com.pichillilorenzo.flutter_inappwebview.q.f16642e;
        if (cVar != null) {
            cVar.b(this);
        }
        if (this.f16465f != null) {
            this.f16465f = null;
        }
        if (this.f16464e != null) {
            this.f16464e = null;
        }
    }
}
