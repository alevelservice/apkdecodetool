package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsSession;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.b;
import com.pichillilorenzo.flutter_inappwebview.n;
import com.pichillilorenzo.flutter_inappwebview.q;
import g.a.c.a.j;
import g.a.c.a.k;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class ChromeCustomTabsActivity extends Activity implements k.c {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected static final String LOG_TAG = "CustomTabsActivity";
    public CustomTabsIntent.a builder;
    public k channel;
    public com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.b customTabActivityHelper;
    public CustomTabsSession customTabsSession;
    public com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.a options;
    public String uuid;
    protected final int CHROME_CUSTOM_TAB_REQUEST_CODE = 100;
    protected boolean onChromeSafariBrowserOpened = false;
    protected boolean onChromeSafariBrowserCompletedInitialLoad = false;

    /* loaded from: classes2.dex */
    class a implements b.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f16379a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f16380b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ChromeCustomTabsActivity f16381c;

        a(String str, List list, ChromeCustomTabsActivity chromeCustomTabsActivity) {
            this.f16379a = str;
            this.f16380b = list;
            this.f16381c = chromeCustomTabsActivity;
        }

        @Override // com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.b.a
        public void a() {
            this.f16381c.close();
        }

        @Override // com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.b.a
        public void b() {
            ChromeCustomTabsActivity chromeCustomTabsActivity = ChromeCustomTabsActivity.this;
            chromeCustomTabsActivity.customTabsSession = chromeCustomTabsActivity.customTabActivityHelper.b();
            Uri parse = Uri.parse(this.f16379a);
            ChromeCustomTabsActivity.this.customTabActivityHelper.a(parse, null, null);
            ChromeCustomTabsActivity chromeCustomTabsActivity2 = ChromeCustomTabsActivity.this;
            chromeCustomTabsActivity2.builder = new CustomTabsIntent.a(chromeCustomTabsActivity2.customTabsSession);
            ChromeCustomTabsActivity.this.a((List<HashMap<String, Object>>) this.f16380b);
            CustomTabsIntent b2 = ChromeCustomTabsActivity.this.builder.b();
            ChromeCustomTabsActivity.this.a(b2);
            com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.b.a(this.f16381c, b2, parse, 100);
        }
    }

    /* loaded from: classes2.dex */
    class b extends androidx.browser.customtabs.c {
        b() {
        }

        @Override // androidx.browser.customtabs.c
        public void a(int i2, Uri uri, boolean z, Bundle bundle) {
        }

        @Override // androidx.browser.customtabs.c
        public void a(int i2, Bundle bundle) {
            if (i2 == 5) {
                ChromeCustomTabsActivity chromeCustomTabsActivity = ChromeCustomTabsActivity.this;
                if (!chromeCustomTabsActivity.onChromeSafariBrowserOpened) {
                    chromeCustomTabsActivity.onChromeSafariBrowserOpened = true;
                    HashMap hashMap = new HashMap();
                    hashMap.put("uuid", ChromeCustomTabsActivity.this.uuid);
                    ChromeCustomTabsActivity.this.channel.a("onChromeSafariBrowserOpened", hashMap);
                }
            }
            if (i2 == 2) {
                ChromeCustomTabsActivity chromeCustomTabsActivity2 = ChromeCustomTabsActivity.this;
                if (chromeCustomTabsActivity2.onChromeSafariBrowserCompletedInitialLoad) {
                    return;
                }
                chromeCustomTabsActivity2.onChromeSafariBrowserCompletedInitialLoad = true;
                HashMap hashMap2 = new HashMap();
                hashMap2.put("uuid", ChromeCustomTabsActivity.this.uuid);
                ChromeCustomTabsActivity.this.channel.a("onChromeSafariBrowserCompletedInitialLoad", hashMap2);
            }
        }

        @Override // androidx.browser.customtabs.c
        public void a(Bundle bundle) {
        }

        @Override // androidx.browser.customtabs.c
        public void a(String str, Bundle bundle) {
        }

        @Override // androidx.browser.customtabs.c
        public void c(String str, Bundle bundle) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<HashMap<String, Object>> list) {
        if (this.options.f16385a.booleanValue()) {
            this.builder.a();
        }
        if (!this.options.f16387c.isEmpty()) {
            this.builder.a(Color.parseColor(this.options.f16387c));
        }
        this.builder.b(this.options.f16386b.booleanValue());
        if (this.options.f16388d.booleanValue()) {
            this.builder.c();
        }
        this.builder.a(this.options.f16389e.booleanValue());
        for (HashMap<String, Object> hashMap : list) {
            int intValue = ((Integer) hashMap.get("id")).intValue();
            this.builder.a((String) hashMap.get("label"), a(intValue));
        }
    }

    public void close() {
        this.customTabsSession = null;
        finish();
        HashMap hashMap = new HashMap();
        hashMap.put("uuid", this.uuid);
        this.channel.a("onChromeSafariBrowserClosed", hashMap);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i3, Intent intent) {
        if (i2 == 100) {
            close();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(n.chrome_custom_tabs_layout);
        Bundle extras = getIntent().getExtras();
        this.uuid = extras.getString("uuid");
        this.channel = new k(q.f16640c, "com.pichillilorenzo/flutter_chromesafaribrowser_" + this.uuid);
        this.channel.a(this);
        String string = extras.getString(HummerConstants.URL);
        this.options = new com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.a();
        this.options.a((HashMap) extras.getSerializable("options"));
        List list = (List) extras.getSerializable("menuItemList");
        this.customTabActivityHelper = new com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.b();
        this.customTabActivityHelper.a(new a(string, list, this));
        this.customTabActivityHelper.a(new b());
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        String str = jVar.f18223a;
        if (((str.hashCode() == 94756344 && str.equals("close")) ? (char) 0 : (char) 65535) != 0) {
            dVar.a();
            return;
        }
        onStop();
        onDestroy();
        close();
        Activity activity = q.f16643f;
        Intent intent = new Intent(activity, activity.getClass());
        intent.addFlags(67108864);
        intent.addFlags(536870912);
        q.f16643f.startActivity(intent);
        dVar.a(true);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.customTabActivityHelper.a(this);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.customTabActivityHelper.b(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CustomTabsIntent customTabsIntent) {
        String str = this.options.f16390f;
        if (str != null) {
            customTabsIntent.f1498a.setPackage(str);
        } else {
            customTabsIntent.f1498a.setPackage(c.a(this));
        }
        if (this.options.f16391g.booleanValue()) {
            c.a(this, customTabsIntent.f1498a);
        }
    }

    private PendingIntent a(int i2) {
        Intent intent = new Intent(this, (Class<?>) ActionBroadcastReceiver.class);
        Bundle bundle = new Bundle();
        bundle.putInt(ActionBroadcastReceiver.KEY_ACTION_ID, i2);
        bundle.putString(ActionBroadcastReceiver.KEY_ACTION_UUID, this.uuid);
        intent.putExtras(bundle);
        return PendingIntent.getBroadcast(this, i2, intent, 0);
    }
}
