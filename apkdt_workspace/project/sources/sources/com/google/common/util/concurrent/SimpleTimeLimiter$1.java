package com.google.common.util.concurrent;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
class SimpleTimeLimiter$1 implements InvocationHandler {

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ Object f14221e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ long f14222f;

    /* renamed from: g, reason: collision with root package name */
    final /* synthetic */ TimeUnit f14223g;

    /* renamed from: h, reason: collision with root package name */
    final /* synthetic */ Set f14224h;

    /* renamed from: i, reason: collision with root package name */
    final /* synthetic */ g f14225i;

    /* loaded from: classes.dex */
    class a implements Callable<Object> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Method f14226e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Object[] f14227f;

        a(Method method, Object[] objArr) {
            this.f14226e = method;
            this.f14227f = objArr;
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            try {
                return this.f14226e.invoke(SimpleTimeLimiter$1.this.f14221e, this.f14227f);
            } catch (InvocationTargetException e2) {
                g.a(e2, false);
                throw null;
            }
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        Object a2;
        a2 = this.f14225i.a(new a(method, objArr), this.f14222f, this.f14223g, this.f14224h.contains(method));
        return a2;
    }
}
