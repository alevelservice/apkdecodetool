package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@VisibleForTesting
/* loaded from: classes.dex */
public final class w0 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f10009a;

    /* renamed from: b, reason: collision with root package name */
    private final t11 f10010b;

    /* renamed from: c, reason: collision with root package name */
    private final View f10011c;

    public w0(Context context, t11 t11Var, View view) {
        this.f10009a = context;
        this.f10010b = t11Var;
        this.f10011c = view;
    }

    private static Intent a(Uri uri) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    @VisibleForTesting
    private final ResolveInfo a(Intent intent) {
        return a(intent, new ArrayList<>());
    }

    @VisibleForTesting
    private final ResolveInfo a(Intent intent, ArrayList<ResolveInfo> arrayList) {
        PackageManager packageManager;
        ResolveInfo resolveInfo = null;
        try {
            packageManager = this.f10009a.getPackageManager();
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.n.g().a(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
        }
        if (packageManager == null) {
            return null;
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, AntDetector.ACTION_ID_SAMPLE);
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, AntDetector.ACTION_ID_SAMPLE);
        if (queryIntentActivities != null && resolveActivity != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= queryIntentActivities.size()) {
                    break;
                }
                ResolveInfo resolveInfo2 = queryIntentActivities.get(i2);
                if (resolveActivity != null && resolveActivity.activityInfo.name.equals(resolveInfo2.activityInfo.name)) {
                    resolveInfo = resolveActivity;
                    break;
                }
                i2++;
            }
        }
        arrayList.addAll(queryIntentActivities);
        return resolveInfo;
    }

    private static Intent a(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        return intent2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0080  */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.Intent a(java.util.Map<java.lang.String, java.lang.String> r11) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.w0.a(java.util.Map):android.content.Intent");
    }
}
