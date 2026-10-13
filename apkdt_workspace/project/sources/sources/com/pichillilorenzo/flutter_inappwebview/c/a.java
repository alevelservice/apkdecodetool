package com.pichillilorenzo.flutter_inappwebview.c;

import java.util.HashMap;
import java.util.Map;

/* compiled from: Credential.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public Long f16585a;

    /* renamed from: b, reason: collision with root package name */
    public String f16586b;

    /* renamed from: c, reason: collision with root package name */
    public String f16587c;

    /* renamed from: d, reason: collision with root package name */
    public Long f16588d;

    public a(Long l2, String str, String str2, Long l3) {
        this.f16585a = l2;
        this.f16586b = str;
        this.f16587c = str2;
        this.f16588d = l3;
    }

    public Map<String, Object> a() {
        HashMap hashMap = new HashMap();
        hashMap.put("username", this.f16586b);
        hashMap.put("password", this.f16587c);
        return hashMap;
    }
}
