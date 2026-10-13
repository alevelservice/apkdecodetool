package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.pichillilorenzo.flutter_inappwebview.q;
import g.a.c.a.k;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class ActionBroadcastReceiver extends BroadcastReceiver {
    public static final String KEY_ACTION_ID = "com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ACTION_ID";
    public static final String KEY_ACTION_UUID = "com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ACTION_UUID";
    public static final String KEY_URL_TITLE = "android.intent.extra.SUBJECT";
    protected static final String LOG_TAG = "ActionBroadcastReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String dataString = intent.getDataString();
        if (dataString != null) {
            Bundle extras = intent.getExtras();
            String string = extras.getString(KEY_ACTION_UUID);
            int i2 = extras.getInt(KEY_ACTION_ID);
            String string2 = extras.getString(KEY_URL_TITLE);
            k kVar = new k(q.f16640c, "com.pichillilorenzo/flutter_chromesafaribrowser_" + string);
            HashMap hashMap = new HashMap();
            hashMap.put(HummerConstants.URL, dataString);
            hashMap.put("title", string2);
            hashMap.put("id", Integer.valueOf(i2));
            kVar.a("onChromeSafariBrowserMenuItemActionPerform", hashMap);
        }
    }
}
