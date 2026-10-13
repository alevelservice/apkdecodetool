package com.zoloz.webcontainer.a.a;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.taffy.core.annotation.NotNullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import com.zoloz.webcontainer.q;
import java.util.HashMap;

/* compiled from: ZolozJSBridgeImpl.java */
/* loaded from: classes2.dex */
public class b implements com.zoloz.webcontainer.a.c {

    /* renamed from: a, reason: collision with root package name */
    private boolean f16693a;

    /* renamed from: b, reason: collision with root package name */
    private HashMap<com.zoloz.webcontainer.a.b, com.zoloz.webcontainer.j.b> f16694b = new HashMap<>();

    @Override // com.zoloz.webcontainer.a.c
    public void a(@NotNullable com.zoloz.webcontainer.j.b bVar) {
        com.zoloz.webcontainer.a.b bVar2 = bVar.f16725b;
        if (bVar2 != null) {
            this.f16694b.put(bVar2, bVar);
        }
        com.zoloz.webcontainer.p.b.a(new c(this, bVar));
    }

    @Override // com.zoloz.webcontainer.a.c
    public void b(com.zoloz.webcontainer.r.a aVar, String str) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("msgType", (Object) "call");
        jSONObject.put("func", (Object) str);
        String format = String.format("AlipayJSBridge._invokeJS(%s)", JSON.toJSONString(jSONObject.toJSONString()));
        try {
            com.zoloz.webcontainer.b.a("ZolozJSBridgeImpl", "executeJavascript " + format);
            if (aVar != null) {
                aVar.c().loadUrl("javascript:" + format);
            } else {
                com.zoloz.webcontainer.b.c("ZolozJSBridgeImpl", "error webView is gone");
            }
        } catch (Exception e2) {
            com.zoloz.webcontainer.b.a("ZolozJSBridgeImpl", "executeJavascript exception", e2);
        }
    }

    @Override // com.zoloz.webcontainer.a.c
    public void a(a aVar, JSONObject jSONObject) {
        if (!this.f16693a && jSONObject != null) {
            com.zoloz.webcontainer.j.b bVar = this.f16694b.get(aVar);
            if (bVar == null) {
                return;
            }
            String f2 = bVar.f16724a.f();
            boolean d2 = bVar.f16724a.d();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("clientId", (Object) f2);
            jSONObject2.put("param", (Object) jSONObject);
            jSONObject2.put("msgType", (Object) "callback");
            jSONObject2.put("keepCallback", (Object) Boolean.valueOf(d2));
            String format = String.format("AlipayJSBridge._invokeJS(%s)", JSON.toJSONString(jSONObject2.toJSONString()));
            try {
                com.zoloz.webcontainer.b.a("ZolozJSBridgeImpl", "executeJavascript " + format);
                if (bVar.f16724a.c() != null) {
                    new Handler(Looper.getMainLooper()).post(new d(this, bVar, format));
                } else {
                    com.zoloz.webcontainer.b.c("ZolozJSBridgeImpl", "error webView is gone");
                }
                return;
            } catch (Exception e2) {
                com.zoloz.webcontainer.b.a("ZolozJSBridgeImpl", "executeJavascript exception", e2);
                return;
            }
        }
        com.zoloz.webcontainer.b.a("ZolozJSBridgeImpl", "call Web error info isRelease " + this.f16693a + " event " + jSONObject);
    }

    @Override // com.zoloz.webcontainer.a.c
    public void a(com.zoloz.webcontainer.r.a aVar) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("msgType", (Object) "call");
        jSONObject.put("func", (Object) HummerConstants.HUMMER_BACK);
        String format = String.format("AlipayJSBridge._invokeJS(%s)", JSON.toJSONString(jSONObject.toJSONString()));
        try {
            com.zoloz.webcontainer.b.a("ZolozJSBridgeImpl", "executeJavascript " + format);
            if (aVar != null) {
                aVar.c().loadUrl("javascript:" + format);
            } else {
                com.zoloz.webcontainer.b.c("ZolozJSBridgeImpl", "error webView is gone");
            }
        } catch (Exception e2) {
            com.zoloz.webcontainer.b.a("ZolozJSBridgeImpl", "executeJavascript exception", e2);
        }
    }

    @Override // com.zoloz.webcontainer.a.c
    public void a() {
        this.f16693a = true;
    }

    @Override // com.zoloz.webcontainer.a.c
    public void a(com.zoloz.webcontainer.r.a aVar, String str) {
        if (!this.f16693a && str != null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("msgType", (Object) "call");
            jSONObject.put("func", (Object) "resume");
            String str2 = (String) q.i().g().get("h5_session_pop_param");
            q.i().g().put("h5_session_pop_param", null);
            String str3 = (String) q.i().g().get("h5_session_resume_param");
            q.i().g().put("h5_session_resume_param", null);
            JSONObject jSONObject2 = new JSONObject();
            if (!TextUtils.isEmpty(str2)) {
                jSONObject2.put(Constants$ScionAnalytics$MessageType.DATA_MESSAGE, (Object) com.zoloz.webcontainer.p.b.a(str2));
            }
            if (!TextUtils.isEmpty(str3)) {
                jSONObject2.put("resumeParams", (Object) com.zoloz.webcontainer.p.b.a(str3));
            }
            jSONObject.put("param", (Object) com.zoloz.webcontainer.p.b.a(str2));
            String format = String.format("AlipayJSBridge._invokeJS(%s)", JSON.toJSONString(jSONObject.toJSONString()));
            try {
                com.zoloz.webcontainer.b.a("ZolozJSBridgeImpl", "executeJavascript " + format);
                if (aVar != null) {
                    aVar.c().loadUrl("javascript:" + format);
                } else {
                    com.zoloz.webcontainer.b.c("ZolozJSBridgeImpl", "error webView is gone");
                }
                return;
            } catch (Exception e2) {
                com.zoloz.webcontainer.b.a("ZolozJSBridgeImpl", "executeJavascript exception", e2);
                return;
            }
        }
        com.zoloz.webcontainer.b.a("ZolozJSBridgeImpl", "call Web error info isRelease " + this.f16693a + " onResume " + str);
    }
}
