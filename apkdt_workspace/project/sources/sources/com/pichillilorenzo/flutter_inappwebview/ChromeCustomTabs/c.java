package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsService;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CustomTabsHelper.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static String f16397a;

    public static void a(Context context, Intent intent) {
        intent.putExtra("android.support.customtabs.extra.KEEP_ALIVE", new Intent().setClassName(context.getPackageName(), KeepAliveService.class.getCanonicalName()));
    }

    private static boolean b(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
            if (queryIntentActivities != null && queryIntentActivities.size() != 0) {
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    IntentFilter intentFilter = resolveInfo.filter;
                    if (intentFilter != null && intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && resolveInfo.activityInfo != null) {
                        return true;
                    }
                }
            }
        } catch (RuntimeException unused) {
        }
        return false;
    }

    public static String a(Context context) {
        String str = f16397a;
        if (str != null) {
            return str;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        String str2 = resolveActivity != null ? resolveActivity.activityInfo.packageName : null;
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            Intent intent2 = new Intent();
            intent2.setAction(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (packageManager.resolveService(intent2, 0) != null) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        if (arrayList.isEmpty()) {
            f16397a = null;
        } else if (arrayList.size() == 1) {
            f16397a = (String) arrayList.get(0);
        } else if (!TextUtils.isEmpty(str2) && !b(context, intent) && arrayList.contains(str2)) {
            f16397a = str2;
        } else if (arrayList.contains("com.android.chrome")) {
            f16397a = "com.android.chrome";
        } else if (arrayList.contains("com.chrome.beta")) {
            f16397a = "com.chrome.beta";
        } else if (arrayList.contains("com.chrome.dev")) {
            f16397a = "com.chrome.dev";
        } else if (arrayList.contains("com.google.android.apps.chrome")) {
            f16397a = "com.google.android.apps.chrome";
        }
        return f16397a;
    }
}
