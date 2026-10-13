package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsSession;
import java.util.List;

/* compiled from: CustomTabActivityHelper.java */
/* loaded from: classes2.dex */
public class b implements e {

    /* renamed from: a, reason: collision with root package name */
    private CustomTabsSession f16392a;

    /* renamed from: b, reason: collision with root package name */
    private CustomTabsClient f16393b;

    /* renamed from: c, reason: collision with root package name */
    private androidx.browser.customtabs.d f16394c;

    /* renamed from: d, reason: collision with root package name */
    private a f16395d;

    /* renamed from: e, reason: collision with root package name */
    private androidx.browser.customtabs.c f16396e;

    /* compiled from: CustomTabActivityHelper.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a();

        void b();
    }

    public static void a(Activity activity, CustomTabsIntent customTabsIntent, Uri uri, int i2) {
        customTabsIntent.f1498a.setData(uri);
        activity.startActivityForResult(customTabsIntent.f1498a, i2);
    }

    public static boolean c(Activity activity) {
        return c.a(activity) != null;
    }

    public void b(Activity activity) {
        androidx.browser.customtabs.d dVar = this.f16394c;
        if (dVar == null) {
            return;
        }
        activity.unbindService(dVar);
        this.f16393b = null;
        this.f16392a = null;
        this.f16394c = null;
    }

    public void a(a aVar) {
        this.f16395d = aVar;
    }

    public void a(androidx.browser.customtabs.c cVar) {
        this.f16396e = cVar;
    }

    public void a(Activity activity) {
        String a2;
        if (this.f16393b == null && (a2 = c.a(activity)) != null) {
            this.f16394c = new d(this);
            CustomTabsClient.a(activity, a2, this.f16394c);
        }
    }

    public CustomTabsSession b() {
        CustomTabsClient customTabsClient = this.f16393b;
        if (customTabsClient == null) {
            this.f16392a = null;
        } else if (this.f16392a == null) {
            this.f16392a = customTabsClient.a(this.f16396e);
        }
        return this.f16392a;
    }

    public boolean a(Uri uri, Bundle bundle, List<Bundle> list) {
        CustomTabsSession b2;
        if (this.f16393b == null || (b2 = b()) == null) {
            return false;
        }
        return b2.a(uri, bundle, list);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.e
    public void a(CustomTabsClient customTabsClient) {
        this.f16393b = customTabsClient;
        this.f16393b.a(0L);
        a aVar = this.f16395d;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.e
    public void a() {
        this.f16393b = null;
        this.f16392a = null;
        a aVar = this.f16395d;
        if (aVar != null) {
            aVar.a();
        }
    }
}
