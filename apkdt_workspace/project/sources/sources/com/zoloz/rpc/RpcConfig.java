package com.zoloz.rpc;

/* loaded from: classes2.dex */
public class RpcConfig {

    /* renamed from: j, reason: collision with root package name */
    public static boolean f16663j = false;

    /* renamed from: k, reason: collision with root package name */
    public static boolean f16664k = false;

    /* renamed from: l, reason: collision with root package name */
    private static RpcConfig f16665l = new RpcConfig();

    /* renamed from: a, reason: collision with root package name */
    private boolean f16666a;

    /* renamed from: b, reason: collision with root package name */
    private String f16667b;

    /* renamed from: c, reason: collision with root package name */
    private String f16668c;

    /* renamed from: d, reason: collision with root package name */
    private String f16669d;

    /* renamed from: e, reason: collision with root package name */
    private int f16670e;

    /* renamed from: f, reason: collision with root package name */
    private int f16671f;

    /* renamed from: g, reason: collision with root package name */
    private e.o.a.a f16672g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f16673h = true;

    /* renamed from: i, reason: collision with root package name */
    private String f16674i;

    public static RpcConfig getInstance() {
        return f16665l;
    }

    public String getAppId() {
        return this.f16669d;
    }

    public int getConnectTimeout() {
        return this.f16671f;
    }

    public int getReadTimeout() {
        return this.f16670e;
    }

    public String getRemoteInitUrl() {
        return this.f16674i;
    }

    public String getRemoteUrl() {
        return this.f16667b;
    }

    public e.o.a.a getRpcProxyImpl() {
        return this.f16672g;
    }

    public String getWorkspaceId() {
        return this.f16668c;
    }

    public boolean isEncodeParam() {
        return this.f16666a;
    }

    public boolean isKeepAlive() {
        return this.f16673h;
    }

    public void registerImpl(e.o.a.a aVar) {
        this.f16672g = aVar;
    }

    public void setAppId(String str) {
        this.f16669d = str;
    }

    public void setConnectTimeout(int i2) {
        this.f16671f = i2;
    }

    public void setEncodeParam(boolean z) {
        this.f16666a = z;
    }

    public void setKeepAlive(boolean z) {
        this.f16673h = z;
    }

    public void setReadTimeout(int i2) {
        this.f16670e = i2;
    }

    public void setRemoteInitUrl(String str) {
        this.f16674i = str;
    }

    public void setRemoteUrl(String str) {
        this.f16667b = str;
    }

    public void setWorkspaceId(String str) {
        this.f16668c = str;
    }
}
