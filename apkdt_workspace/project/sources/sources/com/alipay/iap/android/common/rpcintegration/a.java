package com.alipay.iap.android.common.rpcintegration;

import e.b.b.a.b.b.c;
import java.util.HashMap;

/* compiled from: RPCProxyHost.java */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3345a = "a";

    static {
        new HashMap();
    }

    public static boolean a() {
        try {
            return Class.forName("com.alipay.imobile.network.quake.rpc.IQuakeRpc") != null;
        } catch (ClassNotFoundException unused) {
            c.b(f3345a, "Quake not in application package.");
            return false;
        }
    }

    public static boolean b() {
        try {
            return Class.forName("com.alipay.mobile.framework.service.common.MpaasRpcServiceFactory") != null;
        } catch (ClassNotFoundException unused) {
            c.b(f3345a, "MPaas RPC not in application package.");
            return false;
        }
    }
}
