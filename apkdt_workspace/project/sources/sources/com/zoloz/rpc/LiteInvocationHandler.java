package com.zoloz.rpc;

import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.f;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.security.bio.service.local.rpc.IRpcException;
import com.alipay.mobile.security.zim.msgchannel.ZimMessageChannel;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class LiteInvocationHandler implements InvocationHandler {

    /* renamed from: f, reason: collision with root package name */
    private static int f16661f;

    /* renamed from: e, reason: collision with root package name */
    public String f16662e;

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        if (RpcConfig.f16663j) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            e.o.a.e eVar = new e.o.a.e();
            new Thread(new a(this, eVar, obj, method, objArr, countDownLatch)).start();
            try {
                countDownLatch.await(30L, TimeUnit.SECONDS);
                if (countDownLatch.getCount() != 1 && eVar.f18189c != 4001) {
                    Object obj2 = eVar.f18188b;
                    if (obj2 != null) {
                        return obj2;
                    }
                    throw new ZolozRpcException((Integer) 6666, "rpc get null result");
                }
                throw new ZolozRpcException((Integer) 4001, "time out of 8s");
            } catch (InterruptedException e2) {
                throw new ZolozRpcException(e2);
            }
        }
        return a(obj, method, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(Object obj, Method method, Object[] objArr) {
        e.o.a.d a2;
        e.o.a.e a3;
        OperationType operationType = (OperationType) method.getAnnotation(OperationType.class);
        if (TextUtils.isEmpty(this.f16662e)) {
            this.f16662e = RpcConfig.getInstance().getRemoteUrl();
        }
        if (operationType != null) {
            if (!TextUtils.isEmpty(this.f16662e)) {
                f16661f++;
                if (("invoke" + objArr) != null) {
                    String str = objArr.length + "";
                }
                try {
                    String encode = URLEncoder.encode(a(objArr), "utf-8");
                    String value = operationType.value();
                    d dVar = new d();
                    HashMap hashMap = new HashMap();
                    hashMap.put("id", String.valueOf(f16661f));
                    hashMap.put("operationType", value);
                    hashMap.put(ZimMessageChannel.K_RPC_REQ, encode);
                    hashMap.put("ts", a());
                    HashMap<String, String> hashMap2 = new HashMap<>();
                    hashMap2.put(HummerConstants.APP_ID_KEY, RpcConfig.getInstance().getAppId());
                    hashMap2.put(HummerConstants.WORKSPACE_ID_KEY, RpcConfig.getInstance().getWorkspaceId());
                    Class<?> returnType = method.getReturnType();
                    String str2 = "return type " + returnType.getName();
                    if (TextUtils.equals(operationType.value(), "com.zoloz.ekyc.init.client")) {
                        a2 = e.o.a.d.a(f16661f, RpcConfig.getInstance().getRemoteInitUrl(), value, JSON.toJSONString(objArr[0]));
                    } else {
                        a2 = e.o.a.d.a(f16661f, this.f16662e, value, (HashMap<String, String>) hashMap);
                    }
                    a2.f18184c = hashMap2;
                    if (RpcConfig.f16664k) {
                        e.o.a.b.a().a(a2);
                    }
                    if (RpcConfig.getInstance().getRpcProxyImpl() != null) {
                        a3 = RpcConfig.getInstance().getRpcProxyImpl().a(a2);
                    } else {
                        a3 = dVar.a(a2);
                    }
                    if (RpcConfig.f16664k) {
                        e.o.a.b.a().a(a2, a3);
                        String str3 = "performRequest " + a3.f18187a;
                    }
                    if (a3.f18189c != 4001) {
                        String str4 = a3.f18187a;
                        if (str4 != null) {
                            try {
                                return a(a2.f18185d, str4, returnType);
                            } catch (f unused) {
                                throw new ZolozRpcException((Integer) 6004, "json format error");
                            } catch (NullPointerException unused2) {
                                throw new ZolozRpcException((Integer) 6004, "json object null");
                            }
                        }
                        throw new ZolozRpcException((Integer) 5000, "null result error");
                    }
                    throw new ZolozRpcException((Integer) 4001, "time out of 10s");
                } catch (UnsupportedEncodingException e2) {
                    throw new ZolozRpcException(e2);
                }
            }
            throw new ZolozRpcException((Integer) 16, "host is null");
        }
        throw new ZolozRpcException(Integer.valueOf(IRpcException.ErrorCode.PRC_OPERATIONTYPE_EMPTY), "operation type is null");
    }

    private Object a(String str, String str2, Class cls) {
        if (TextUtils.equals(str, "com.zoloz.ekyc.init.client")) {
            return JSON.parseObject(str2, cls);
        }
        JSONObject parseObject = JSON.parseObject(str2);
        String string = parseObject.getString("result");
        int intValue = parseObject.getIntValue("resultStatus");
        if (intValue == 1000) {
            return JSON.parseObject(string, cls);
        }
        throw new ZolozRpcException(Integer.valueOf(intValue), "rpc return error");
    }

    private String a() {
        return String.valueOf(System.currentTimeMillis());
    }

    private String a(Object[] objArr) {
        if (objArr == null) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            arrayList.add(JSON.parseObject(JSON.toJSONString(obj)));
        }
        return arrayList.toString();
    }
}
