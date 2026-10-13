package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.overlay.zze;
import com.zoloz.builder.plugin.HummerFoundationLite;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(11)
/* loaded from: classes.dex */
public final class wh extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    private final fi f10116a;

    public wh(fi fiVar) {
        this.f10116a = fiVar;
    }

    private final boolean a(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        com.google.android.gms.ads.internal.a e2;
        try {
        } catch (WindowManager.BadTokenException e3) {
            qd.c("Fail to display Dialog.", e3);
        }
        if (this.f10116a != null && this.f10116a.zzyy() != null && this.f10116a.zzyy().e() != null && (e2 = this.f10116a.zzyy().e()) != null && !e2.b()) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(str3).length());
            sb.append("window.");
            sb.append(str);
            sb.append("('");
            sb.append(str3);
            sb.append("')");
            e2.a(sb.toString());
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str2);
        if (z) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            TextView textView = new TextView(context);
            textView.setText(str3);
            EditText editText = new EditText(context);
            editText.setText(str4);
            linearLayout.addView(textView);
            linearLayout.addView(editText);
            builder.setView(linearLayout).setPositiveButton(R.string.ok, new di(jsPromptResult, editText)).setNegativeButton(R.string.cancel, new ei(jsPromptResult)).setOnCancelListener(new ai(jsPromptResult)).create().show();
        } else {
            builder.setMessage(str3).setPositiveButton(R.string.ok, new bi(jsResult)).setNegativeButton(R.string.cancel, new yh(jsResult)).setOnCancelListener(new zh(jsResult)).create().show();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof fi)) {
            qd.d("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        zze zzyu = ((fi) webView).zzyu();
        if (zzyu == null) {
            qd.d("Tried to close an AdWebView not associated with an overlay.");
        } else {
            zzyu.close();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String message = consoleMessage.message();
        String sourceId = consoleMessage.sourceId();
        int lineNumber = consoleMessage.lineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 19 + String.valueOf(sourceId).length());
        sb.append("JS: ");
        sb.append(message);
        sb.append(" (");
        sb.append(sourceId);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(")");
        String sb2 = sb.toString();
        if (sb2.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i2 = gi.f6879a[consoleMessage.messageLevel().ordinal()];
        if (i2 == 1) {
            qd.b(sb2);
        } else if (i2 == 2) {
            qd.d(sb2);
        } else if (i2 == 3 || i2 == 4) {
            qd.c(sb2);
        } else if (i2 != 5) {
            qd.c(sb2);
        } else {
            qd.a(sb2);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.f10116a.zzyz() != null) {
            webView2.setWebViewClient(this.f10116a.zzyz());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j2, long j3, long j4, WebStorage.QuotaUpdater quotaUpdater) {
        long j5 = 5242880 - j4;
        if (j5 <= 0) {
            quotaUpdater.updateQuota(j2);
            return;
        }
        if (j2 != 0) {
            if (j3 == 0) {
                j2 = Math.min(j2 + Math.min(131072L, j5), 1048576L);
            } else if (j3 <= Math.min(1048576 - j2, j5)) {
                j2 += j3;
            }
            j3 = j2;
        } else if (j3 > j5 || j3 > 1048576) {
            j3 = 0;
        }
        quotaUpdater.updateQuota(j3);
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        if (callback != null) {
            com.google.android.gms.ads.internal.n.c();
            if (!wa.b(this.f10116a.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                com.google.android.gms.ads.internal.n.c();
                if (!wa.b(this.f10116a.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = false;
                    callback.invoke(str, z, true);
                }
            }
            z = true;
            callback.invoke(str, z, true);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        zze zzyu = this.f10116a.zzyu();
        if (zzyu == null) {
            qd.d("Could not get ad overlay when hiding custom view.");
        } else {
            zzyu.zzsj();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), HummerFoundationLite.HUMMER_FOUNDATION_ALERT, str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return a(a(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    @TargetApi(21)
    public final void onPermissionRequest(PermissionRequest permissionRequest) {
        if (com.google.android.gms.common.util.o.h()) {
            if (!((Boolean) mu1.e().a(aw1.A0)).booleanValue()) {
                fi fiVar = this.f10116a;
                if (fiVar != null && fiVar.zzyy() != null && this.f10116a.zzyy().h() != null) {
                    String[] a2 = this.f10116a.zzyy().h().a(permissionRequest.getResources());
                    if (a2.length > 0) {
                        permissionRequest.grant(a2);
                        return;
                    } else {
                        permissionRequest.deny();
                        return;
                    }
                }
                super.onPermissionRequest(permissionRequest);
                return;
            }
        }
        super.onPermissionRequest(permissionRequest);
    }

    public final void onReachedMaxAppCacheSize(long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        long j4 = j2 + 131072;
        if (5242880 - j3 < j4) {
            quotaUpdater.updateQuota(0L);
        } else {
            quotaUpdater.updateQuota(j4);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public final void onShowCustomView(View view, int i2, WebChromeClient.CustomViewCallback customViewCallback) {
        zze zzyu = this.f10116a.zzyu();
        if (zzyu == null) {
            qd.d("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
        } else {
            zzyu.zza(view, customViewCallback);
            zzyu.setRequestedOrientation(i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Context a(WebView webView) {
        if (!(webView instanceof fi)) {
            return webView.getContext();
        }
        fi fiVar = (fi) webView;
        Activity zzxl = fiVar.zzxl();
        return zzxl != null ? zzxl : fiVar.getContext();
    }
}
