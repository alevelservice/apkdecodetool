package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import com.pichillilorenzo.flutter_inappwebview.l;
import java.util.Map;

/* compiled from: ContextMenuOptions.java */
/* loaded from: classes2.dex */
public class a implements l<Object> {

    /* renamed from: a, reason: collision with root package name */
    public Boolean f16453a = false;

    public a a(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                char c2 = 65535;
                if (key.hashCode() == -1069507968 && key.equals("hideDefaultSystemContextMenuItems")) {
                    c2 = 0;
                }
                if (c2 == 0) {
                    this.f16453a = (Boolean) value;
                }
            }
        }
        return this;
    }
}
