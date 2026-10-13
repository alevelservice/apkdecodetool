package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import com.pichillilorenzo.flutter_inappwebview.l;
import java.util.Map;

/* compiled from: ChromeCustomTabsOptions.java */
/* loaded from: classes2.dex */
public class a implements l<ChromeCustomTabsActivity> {

    /* renamed from: f, reason: collision with root package name */
    public String f16390f;

    /* renamed from: a, reason: collision with root package name */
    public Boolean f16385a = true;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f16386b = true;

    /* renamed from: c, reason: collision with root package name */
    public String f16387c = "";

    /* renamed from: d, reason: collision with root package name */
    public Boolean f16388d = false;

    /* renamed from: e, reason: collision with root package name */
    public Boolean f16389e = false;

    /* renamed from: g, reason: collision with root package name */
    public Boolean f16391g = false;

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0026. Please report as an issue. */
    public a a(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                char c2 = 65535;
                switch (key.hashCode()) {
                    case -2112880751:
                        if (key.equals("addDefaultShareMenuItem")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case -1913803429:
                        if (key.equals("showTitle")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case -227713574:
                        if (key.equals("toolbarBackgroundColor")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 137483238:
                        if (key.equals("enableUrlBarHiding")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case 472764366:
                        if (key.equals("instantAppsEnabled")) {
                            c2 = 4;
                            break;
                        }
                        break;
                    case 908759025:
                        if (key.equals("packageName")) {
                            c2 = 5;
                            break;
                        }
                        break;
                    case 2126240217:
                        if (key.equals("keepAliveEnabled")) {
                            c2 = 6;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        this.f16385a = Boolean.valueOf(((Boolean) value).booleanValue());
                        break;
                    case 1:
                        this.f16386b = Boolean.valueOf(((Boolean) value).booleanValue());
                        break;
                    case 2:
                        this.f16387c = (String) value;
                        break;
                    case 3:
                        this.f16388d = Boolean.valueOf(((Boolean) value).booleanValue());
                        break;
                    case 4:
                        this.f16389e = Boolean.valueOf(((Boolean) value).booleanValue());
                        break;
                    case 5:
                        this.f16390f = (String) value;
                        break;
                    case 6:
                        this.f16391g = Boolean.valueOf(((Boolean) value).booleanValue());
                        break;
                }
            }
        }
        return this;
    }
}
