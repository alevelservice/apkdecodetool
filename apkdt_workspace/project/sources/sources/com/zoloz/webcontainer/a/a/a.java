package com.zoloz.webcontainer.a.a;

import com.alibaba.fastjson.JSONObject;

/* compiled from: BridgeCallbackImpl.java */
/* loaded from: classes2.dex */
public class a implements com.zoloz.webcontainer.a.b {

    /* renamed from: a, reason: collision with root package name */
    private final com.zoloz.webcontainer.a.c f16692a;

    public a(com.zoloz.webcontainer.a.c cVar) {
        this.f16692a = cVar;
    }

    @Override // com.zoloz.webcontainer.a.b
    public boolean a(JSONObject jSONObject) {
        com.zoloz.webcontainer.b.a("BridgeCallbackImpl", "sendBridgeResult " + jSONObject.toJSONString());
        if (this.f16692a == null) {
            return false;
        }
        new com.zoloz.webcontainer.j.b().f16724a = new com.zoloz.webcontainer.c.a();
        this.f16692a.a(this, jSONObject);
        return false;
    }
}
