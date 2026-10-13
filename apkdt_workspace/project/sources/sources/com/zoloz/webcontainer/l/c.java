package com.zoloz.webcontainer.l;

import java.util.HashMap;

/* compiled from: H5PageManager.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private HashMap<String, com.zoloz.webcontainer.r.a> f16739a = new HashMap<>();

    public void a(String str, com.zoloz.webcontainer.r.a aVar) {
        this.f16739a.put(str, aVar);
    }

    public boolean b(String str) {
        return this.f16739a.get(str) != null;
    }

    public void a(String str) {
        com.zoloz.webcontainer.r.a remove = this.f16739a.remove(str);
        if (remove != null) {
            remove.d();
        }
    }

    public void a() {
        this.f16739a.clear();
    }
}
