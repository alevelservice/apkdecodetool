package com.pichillilorenzo.flutter_inappwebview.c;

import java.util.HashMap;
import java.util.Map;

/* compiled from: ProtectionSpace.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public Long f16595a;

    /* renamed from: b, reason: collision with root package name */
    public String f16596b;

    /* renamed from: c, reason: collision with root package name */
    public String f16597c;

    /* renamed from: d, reason: collision with root package name */
    public String f16598d;

    /* renamed from: e, reason: collision with root package name */
    public Integer f16599e;

    public e(Long l2, String str, String str2, String str3, Integer num) {
        this.f16595a = l2;
        this.f16596b = str;
        this.f16597c = str2;
        this.f16598d = str3;
        this.f16599e = num;
    }

    public Map<String, Object> a() {
        HashMap hashMap = new HashMap();
        hashMap.put("host", this.f16596b);
        hashMap.put("protocol", this.f16597c);
        hashMap.put("realm", this.f16598d);
        hashMap.put("port", this.f16599e);
        return hashMap;
    }
}
