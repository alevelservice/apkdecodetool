package com.pichillilorenzo.flutter_inappwebview;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.webkit.MimeTypeMap;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity;
import g.a.c.a.c;
import g.a.c.a.k;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: InAppBrowserManager.java */
/* loaded from: classes2.dex */
public class f implements k.c {

    /* renamed from: e, reason: collision with root package name */
    public g.a.c.a.k f16606e;

    public f(c cVar) {
        this.f16606e = new g.a.c.a.k(cVar, "com.pichillilorenzo/flutter_inappbrowser");
        this.f16606e.a(this);
    }

    public static String a(String str) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (fileExtensionFromUrl != null) {
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, k.d dVar) {
        char c2;
        Activity activity = q.f16643f;
        String str = (String) jVar.a("uuid");
        String str2 = jVar.f18223a;
        switch (str2.hashCode()) {
            case -2119567959:
                if (str2.equals("openWithSystemBrowser")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1263203643:
                if (str2.equals("openUrl")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -505129708:
                if (str2.equals("openData")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -505062682:
                if (str2.equals("openFile")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            a(activity, str, (String) jVar.a(HummerConstants.URL), (HashMap) jVar.a("options"), (Map) jVar.a("headers"), (HashMap) jVar.a("contextMenu"), (Integer) jVar.a("windowId"));
            dVar.a(true);
            return;
        }
        if (c2 != 1) {
            if (c2 == 2) {
                a(activity, str, (HashMap) jVar.a("options"), (String) jVar.a(Constants$ScionAnalytics$MessageType.DATA_MESSAGE), (String) jVar.a("mimeType"), (String) jVar.a("encoding"), (String) jVar.a("baseUrl"), (String) jVar.a("historyUrl"), (HashMap) jVar.a("contextMenu"), (Integer) jVar.a("windowId"));
                dVar.a(true);
                return;
            } else if (c2 != 3) {
                dVar.a();
                return;
            } else {
                a(activity, (String) jVar.a(HummerConstants.URL), dVar);
                return;
            }
        }
        String str3 = (String) jVar.a(HummerConstants.URL);
        try {
            a(activity, str, r.b(str3), (HashMap) jVar.a("options"), (Map) jVar.a("headers"), (HashMap) jVar.a("contextMenu"), (Integer) jVar.a("windowId"));
            dVar.a(true);
        } catch (IOException e2) {
            e2.printStackTrace();
            dVar.a("InAppBrowserManager", str3 + " asset file cannot be found!", e2);
        }
    }

    public void a(Activity activity, String str, k.d dVar) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            Uri parse = Uri.parse(str);
            if ("file".equals(parse.getScheme())) {
                intent.setDataAndType(parse, a(str));
            } else {
                intent.setData(parse);
            }
            intent.putExtra("com.android.browser.application_id", activity.getPackageName());
            a(activity, intent);
            dVar.a(true);
        } catch (RuntimeException e2) {
            String str2 = str + " cannot be opened: " + e2.toString();
            dVar.a("InAppBrowserManager", str + " cannot be opened!", null);
        }
    }

    public void a(Activity activity, Intent intent) {
        String packageName = activity.getPackageName();
        List<ResolveInfo> queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            if (packageName.equals(resolveInfo.activityInfo.packageName)) {
                z = true;
            } else {
                Intent intent2 = (Intent) intent.clone();
                intent2.setPackage(resolveInfo.activityInfo.packageName);
                arrayList.add(intent2);
            }
        }
        if (z && arrayList.size() != 0) {
            if (arrayList.size() == 1) {
                activity.startActivity((Intent) arrayList.get(0));
                return;
            } else {
                if (arrayList.size() > 0) {
                    Intent createChooser = Intent.createChooser((Intent) arrayList.remove(arrayList.size() - 1), null);
                    createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
                    activity.startActivity(createChooser);
                    return;
                }
                return;
            }
        }
        activity.startActivity(intent);
    }

    public void a(Activity activity, String str, String str2, HashMap<String, Object> hashMap, Map<String, String> map, HashMap<String, Object> hashMap2, Integer num) {
        Bundle bundle = new Bundle();
        bundle.putString("fromActivity", activity.getClass().getName());
        bundle.putString(HummerConstants.URL, str2);
        bundle.putBoolean("isData", false);
        bundle.putString("uuid", str);
        bundle.putSerializable("options", hashMap);
        bundle.putSerializable("headers", (Serializable) map);
        bundle.putSerializable("contextMenu", hashMap2);
        bundle.putInt("windowId", num != null ? num.intValue() : -1);
        a(activity, bundle);
    }

    public void a(Activity activity, String str, HashMap<String, Object> hashMap, String str2, String str3, String str4, String str5, String str6, HashMap<String, Object> hashMap2, Integer num) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("isData", true);
        bundle.putString("uuid", str);
        bundle.putSerializable("options", hashMap);
        bundle.putString(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, str2);
        bundle.putString("mimeType", str3);
        bundle.putString("encoding", str4);
        bundle.putString("baseUrl", str5);
        bundle.putString("historyUrl", str6);
        bundle.putSerializable("contextMenu", hashMap2);
        bundle.putInt("windowId", num != null ? num.intValue() : -1);
        a(activity, bundle);
    }

    public void a(Activity activity, Bundle bundle) {
        Intent intent = new Intent(activity, (Class<?>) InAppBrowserActivity.class);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        activity.startActivity(intent);
    }

    public void a() {
        this.f16606e.a((k.c) null);
    }
}
