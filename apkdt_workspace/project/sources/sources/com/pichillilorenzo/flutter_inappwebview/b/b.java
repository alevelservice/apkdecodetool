package com.pichillilorenzo.flutter_inappwebview.b;

import java.util.Map;

/* compiled from: ContentBlockerAction.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    c f16566a;

    /* renamed from: b, reason: collision with root package name */
    String f16567b;

    b(c cVar, String str) {
        this.f16566a = cVar;
        this.f16566a.equals(c.CSS_DISPLAY_NONE);
        this.f16567b = str;
    }

    public static b a(Map<String, Object> map) {
        return new b(c.fromValue((String) map.get("type")), (String) map.get("selector"));
    }
}
