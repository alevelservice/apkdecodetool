package com.zoloz.rpc;

import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;

/* compiled from: LiteInvocationHandler.java */
/* loaded from: classes2.dex */
class a implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ e.o.a.e f16675e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ Object f16676f;

    /* renamed from: g, reason: collision with root package name */
    final /* synthetic */ Method f16677g;

    /* renamed from: h, reason: collision with root package name */
    final /* synthetic */ Object[] f16678h;

    /* renamed from: i, reason: collision with root package name */
    final /* synthetic */ CountDownLatch f16679i;

    /* renamed from: j, reason: collision with root package name */
    final /* synthetic */ LiteInvocationHandler f16680j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(LiteInvocationHandler liteInvocationHandler, e.o.a.e eVar, Object obj, Method method, Object[] objArr, CountDownLatch countDownLatch) {
        this.f16680j = liteInvocationHandler;
        this.f16675e = eVar;
        this.f16676f = obj;
        this.f16677g = method;
        this.f16678h = objArr;
        this.f16679i = countDownLatch;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object a2;
        try {
            e.o.a.e eVar = this.f16675e;
            a2 = this.f16680j.a(this.f16676f, this.f16677g, this.f16678h);
            eVar.f18188b = a2;
            this.f16679i.countDown();
        } catch (ZolozRpcException e2) {
            e2.printStackTrace();
            this.f16679i.countDown();
        }
    }
}
