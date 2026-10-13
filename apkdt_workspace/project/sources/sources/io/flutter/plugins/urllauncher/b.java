package io.flutter.plugins.urllauncher;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;

/* compiled from: UrlLauncher.java */
/* loaded from: classes2.dex */
class b {

    /* renamed from: a, reason: collision with root package name */
    private final Context f19519a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private Activity f19520b;

    /* compiled from: UrlLauncher.java */
    /* loaded from: classes2.dex */
    enum a {
        OK,
        NO_ACTIVITY,
        ACTIVITY_NOT_FOUND
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, @Nullable Activity activity) {
        this.f19519a = context;
        this.f19520b = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable Activity activity) {
        this.f19520b = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        ComponentName resolveActivity = intent.resolveActivity(this.f19519a.getPackageManager());
        return (resolveActivity == null || "{com.android.fallback/com.android.fallback.Fallback}".equals(resolveActivity.toShortString())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a a(String str, Bundle bundle, boolean z, boolean z2, boolean z3) {
        Intent putExtra;
        Activity activity = this.f19520b;
        if (activity == null) {
            return a.NO_ACTIVITY;
        }
        if (z) {
            putExtra = WebViewActivity.createIntent(activity, str, z2, z3, bundle);
        } else {
            putExtra = new Intent("android.intent.action.VIEW").setData(Uri.parse(str)).putExtra("com.android.browser.headers", bundle);
        }
        try {
            this.f19520b.startActivity(putExtra);
            return a.OK;
        } catch (ActivityNotFoundException unused) {
            return a.ACTIVITY_NOT_FOUND;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f19519a.sendBroadcast(new Intent(WebViewActivity.ACTION_CLOSE));
    }
}
