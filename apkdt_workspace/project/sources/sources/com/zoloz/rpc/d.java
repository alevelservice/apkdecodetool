package com.zoloz.rpc;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: SNormalRequest.java */
/* loaded from: classes2.dex */
public class d {
    private List<String> a(HashMap<String, String> hashMap) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(entry.getKey());
            stringBuffer.append("=");
            stringBuffer.append(entry.getValue());
            arrayList.add(stringBuffer.toString());
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public e.o.a.e a(e.o.a.d dVar) {
        if (dVar.f18183b != null && RpcConfig.getInstance().isEncodeParam()) {
            String a2 = e.a(dVar.f18182a, dVar.f18183b);
            List<String> a3 = a(dVar.f18183b);
            a3.add("_aop_signature=" + a2);
            return b.a(dVar.f18182a, a3);
        }
        String str = dVar.f18186e;
        if (str != null) {
            return b.a(dVar.f18182a, str, true);
        }
        return b.a(dVar.f18182a, dVar.f18183b);
    }
}
