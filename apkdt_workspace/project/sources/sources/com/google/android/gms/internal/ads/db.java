package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(16)
/* loaded from: classes.dex */
public class db {
    private db() {
    }

    public static boolean b(fi fiVar) {
        if (fiVar == null) {
            return false;
        }
        fiVar.onResume();
        return true;
    }

    public static boolean e() {
        int myUid = Process.myUid();
        return myUid == 0 || myUid == 1000;
    }

    public int a() {
        return 5;
    }

    public String a(Context context) {
        return "";
    }

    public void a(Activity activity) {
    }

    public boolean a(Activity activity, Configuration configuration) {
        return false;
    }

    public boolean a(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    public void b(Context context) {
    }

    public int c() {
        return 1;
    }

    public CookieManager c(Context context) {
        if (e()) {
            return null;
        }
        try {
            CookieSyncManager.createInstance(context);
            return CookieManager.getInstance();
        } catch (Throwable th) {
            qd.b("Failed to obtain CookieManager.", th);
            com.google.android.gms.ads.internal.n.g().a(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    public long d() {
        return -1L;
    }

    public boolean a(final Context context, final WebSettings webSettings) {
        xc.a(context, new Callable(context, webSettings) { // from class: com.google.android.gms.internal.ads.cb

            /* renamed from: e, reason: collision with root package name */
            private final Context f5966e;

            /* renamed from: f, reason: collision with root package name */
            private final WebSettings f5967f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5966e = context;
                this.f5967f = webSettings;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = this.f5966e;
                WebSettings webSettings2 = this.f5967f;
                if (context2.getCacheDir() != null) {
                    webSettings2.setAppCachePath(context2.getCacheDir().getAbsolutePath());
                    webSettings2.setAppCacheMaxSize(0L);
                    webSettings2.setAppCacheEnabled(true);
                }
                webSettings2.setDatabasePath(context2.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
                webSettings2.setDatabaseEnabled(true);
                webSettings2.setDomStorageEnabled(true);
                webSettings2.setDisplayZoomControls(false);
                webSettings2.setBuiltInZoomControls(true);
                webSettings2.setSupportZoom(true);
                webSettings2.setAllowContentAccess(false);
                return true;
            }
        });
        webSettings.setAllowFileAccessFromFileURLs(false);
        webSettings.setAllowUniversalAccessFromFileURLs(false);
        return true;
    }

    public ViewGroup.LayoutParams b() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    public int b(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "airplane_mode_on", 0);
    }

    public static boolean a(fi fiVar) {
        if (fiVar == null) {
            return false;
        }
        fiVar.onPause();
        return true;
    }

    public ii a(fi fiVar, ks1 ks1Var, boolean z) {
        return new hj(fiVar, ks1Var, z);
    }

    public Drawable a(Context context, Bitmap bitmap, boolean z, float f2) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    public bt1 a(Context context, TelephonyManager telephonyManager) {
        return bt1.ENUM_UNKNOWN;
    }

    public int a(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "wifi_on", 0);
    }

    public WebResourceResponse a(String str, String str2, int i2, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }

    public static db a(int i2) {
        if (i2 >= 28) {
            return new kb();
        }
        if (i2 >= 26) {
            return new lb();
        }
        if (i2 >= 24) {
            return new ib();
        }
        if (i2 >= 21) {
            return new jb();
        }
        if (i2 >= 19) {
            return new gb();
        }
        if (i2 >= 18) {
            return new hb();
        }
        if (i2 >= 17) {
            return new eb();
        }
        return new db();
    }
}
