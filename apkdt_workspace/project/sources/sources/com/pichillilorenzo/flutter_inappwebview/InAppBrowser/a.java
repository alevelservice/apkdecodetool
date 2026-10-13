package com.pichillilorenzo.flutter_inappwebview.InAppBrowser;

import com.pichillilorenzo.flutter_inappwebview.l;
import java.util.HashMap;
import java.util.Map;

/* compiled from: InAppBrowserOptions.java */
/* loaded from: classes2.dex */
public class a implements l<InAppBrowserActivity> {

    /* renamed from: a, reason: collision with root package name */
    public Boolean f16405a = false;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f16406b = true;

    /* renamed from: c, reason: collision with root package name */
    public String f16407c = "";

    /* renamed from: d, reason: collision with root package name */
    public String f16408d = "";

    /* renamed from: e, reason: collision with root package name */
    public Boolean f16409e = false;

    /* renamed from: f, reason: collision with root package name */
    public Boolean f16410f = false;

    /* renamed from: g, reason: collision with root package name */
    public Boolean f16411g = true;

    /* renamed from: h, reason: collision with root package name */
    public Boolean f16412h = true;

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0026. Please report as an issue. */
    public a a(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                char c2 = 65535;
                switch (key.hashCode()) {
                    case -1307803139:
                        if (key.equals("hideTitleBar")) {
                            c2 = 5;
                            break;
                        }
                        break;
                    case -1217487446:
                        if (key.equals("hidden")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case -118493506:
                        if (key.equals("toolbarTopFixedTitle")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case 58574810:
                        if (key.equals("toolbarTop")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 90270825:
                        if (key.equals("closeOnCannotGoBack")) {
                            c2 = 6;
                            break;
                        }
                        break;
                    case 406250502:
                        if (key.equals("hideUrlBar")) {
                            c2 = 4;
                            break;
                        }
                        break;
                    case 1131509414:
                        if (key.equals("progressBar")) {
                            c2 = 7;
                            break;
                        }
                        break;
                    case 2111633307:
                        if (key.equals("toolbarTopBackgroundColor")) {
                            c2 = 2;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        this.f16405a = (Boolean) value;
                        break;
                    case 1:
                        this.f16406b = (Boolean) value;
                        break;
                    case 2:
                        this.f16407c = (String) value;
                        break;
                    case 3:
                        this.f16408d = (String) value;
                        break;
                    case 4:
                        this.f16409e = (Boolean) value;
                        break;
                    case 5:
                        this.f16410f = (Boolean) value;
                        break;
                    case 6:
                        this.f16411g = (Boolean) value;
                        break;
                    case 7:
                        this.f16412h = (Boolean) value;
                        break;
                }
            }
        }
        return this;
    }

    public Map<String, Object> a() {
        HashMap hashMap = new HashMap();
        hashMap.put("hidden", this.f16405a);
        hashMap.put("toolbarTop", this.f16406b);
        hashMap.put("toolbarTopBackgroundColor", this.f16407c);
        hashMap.put("toolbarTopFixedTitle", this.f16408d);
        hashMap.put("hideUrlBar", this.f16409e);
        hashMap.put("hideTitleBar", this.f16410f);
        hashMap.put("closeOnCannotGoBack", this.f16411g);
        hashMap.put("progressBar", this.f16412h);
        return hashMap;
    }

    public Map<String, Object> a(InAppBrowserActivity inAppBrowserActivity) {
        return a();
    }
}
