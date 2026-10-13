package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import android.content.ComponentName;
import androidx.browser.customtabs.CustomTabsClient;
import java.lang.ref.WeakReference;

/* compiled from: ServiceConnection.java */
/* loaded from: classes2.dex */
public class d extends androidx.browser.customtabs.d {

    /* renamed from: f, reason: collision with root package name */
    private WeakReference<e> f16398f;

    public d(e eVar) {
        this.f16398f = new WeakReference<>(eVar);
    }

    @Override // androidx.browser.customtabs.d
    public void a(ComponentName componentName, CustomTabsClient customTabsClient) {
        e eVar = this.f16398f.get();
        if (eVar != null) {
            eVar.a(customTabsClient);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        e eVar = this.f16398f.get();
        if (eVar != null) {
            eVar.a();
        }
    }
}
