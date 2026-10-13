package com.zoloz.builder.service;

import android.text.TextUtils;
import com.alipay.bis.common.service.facade.gw.zim.ZimDispatchJsonGwFacade;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.local.rpc.BioRPCService;
import com.ap.zhubid.endpoint.gateway.facade.EkycGwFacade;
import com.zoloz.builder.EkycGwFacadeV2;
import com.zoloz.builder.ZimDispatchJsonGwFacadeV2;
import com.zoloz.builder.buildconfig.ZolozConfig;
import com.zoloz.rpc.RpcConfig;
import com.zoloz.rpc.c;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class RpcServiceProxy extends BioRPCService {
    public static final String TAG = "RpcServiceProxy";
    private static Map<String, Object> config = new HashMap();
    private static String mRemoteUrl;
    private String customGW = null;
    private InvocationHandler invocationHandler;

    private InvocationHandler buildRpcImpl(Class cls) {
        return new c().a(cls, this.mContext);
    }

    private <T> Class<T> changeRpcOperationType(Class<T> cls) {
        if (cls.getName().contains(EkycGwFacade.class.getName())) {
            return EkycGwFacadeV2.class;
        }
        return cls.getName().equals(ZimDispatchJsonGwFacade.class.getName()) ? ZimDispatchJsonGwFacadeV2.class : cls;
    }

    @Override // com.alipay.mobile.security.bio.service.local.rpc.BioRPCService
    public <T> T getRpcProxy(Class<T> cls) {
        Class<T> changeRpcOperationType = changeRpcOperationType(cls);
        this.invocationHandler = buildRpcImpl(changeRpcOperationType);
        return (T) Proxy.newProxyInstance(changeRpcOperationType.getClassLoader(), new Class[]{changeRpcOperationType}, this.invocationHandler);
    }

    @Override // com.alipay.mobile.security.bio.service.local.LocalService, com.alipay.mobile.security.bio.service.BioService
    public void onCreate(BioServiceManager bioServiceManager) {
        super.onCreate(bioServiceManager);
        this.customGW = ZolozConfig.getInstance().getGwUrl();
        if (!TextUtils.isEmpty(this.customGW)) {
            if (!this.customGW.startsWith("http")) {
                mRemoteUrl = "http://" + this.customGW + ":8080/mgw.htm";
            } else {
                mRemoteUrl = this.customGW;
            }
        }
        RpcConfig.getInstance().setConnectTimeout(e.b.b.a.a.a.c.DEBUG_INT);
        RpcConfig.getInstance().setReadTimeout(e.b.b.a.a.a.c.WARN_INT);
        RpcConfig.getInstance().setAppId("8E6E921251755");
        RpcConfig.getInstance().setWorkspaceId("phtest");
    }

    @Override // com.alipay.mobile.security.bio.service.local.rpc.BioRPCService
    public void setExtProperties(Map<String, Object> map) {
        config.putAll(map);
    }

    @Override // com.alipay.mobile.security.bio.service.local.rpc.BioRPCService
    public void setRemoteUrl(String str) {
        if (this.customGW == null) {
            RpcConfig.getInstance().setRemoteUrl(str);
            return;
        }
        if (str != null) {
            try {
                str = str.replace(new URL(str).getHost(), this.customGW);
            } catch (MalformedURLException e2) {
                e2.printStackTrace();
            }
            RpcConfig.getInstance().setRemoteUrl(str);
            return;
        }
        RpcConfig.getInstance().setRemoteUrl(mRemoteUrl);
    }
}
