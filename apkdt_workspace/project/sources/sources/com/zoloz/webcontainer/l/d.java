package com.zoloz.webcontainer.l;

import android.text.TextUtils;
import com.alibaba.taffy.core.annotation.NotNullable;
import com.zoloz.builder.plugin.HummerFoundationLite;
import e.a.a.a.m;
import java.util.HashMap;

/* compiled from: H5PluginManager.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    private static d f16740b;

    /* renamed from: a, reason: collision with root package name */
    private HashMap<String, com.zoloz.webcontainer.n.d> f16741a = new HashMap<>();

    private d() {
    }

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (f16740b == null) {
                f16740b = new d();
            }
            dVar = f16740b;
        }
        return dVar;
    }

    public void a(@NotNullable com.zoloz.webcontainer.n.d dVar) {
        this.f16741a.put(dVar.getJSApiName(), dVar);
    }

    public void a(com.zoloz.webcontainer.j.b bVar) {
        com.zoloz.webcontainer.c.a aVar = bVar.f16724a;
        if (aVar != null) {
            com.zoloz.webcontainer.n.d dVar = this.f16741a.get(aVar.a());
            if (dVar != null) {
                dVar.handleBridgeEvent(bVar.f16724a, bVar.f16725b);
                return;
            }
            if (a(bVar.f16724a.a())) {
                m.a().c(bVar);
                return;
            }
            com.zoloz.webcontainer.b.c("H5PluginManager", "runPlugin error " + bVar.f16724a.a());
        }
    }

    private boolean a(String str) {
        return TextUtils.equals(str, HummerFoundationLite.HUMMER_FOUNDATION_HIDE_LOADING) || TextUtils.equals(str, HummerFoundationLite.HUMMER_FOUNDATION_SHOW_LOADING);
    }
}
