package e.a.a.a.g;

import e.a.a.a.f;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: AnnotationEventListener.java */
/* loaded from: classes.dex */
public class a implements b {

    /* renamed from: a, reason: collision with root package name */
    private final Object f16807a;

    /* renamed from: b, reason: collision with root package name */
    private final Method f16808b;

    /* renamed from: c, reason: collision with root package name */
    private final Class<?> f16809c;

    public a(Object obj, Method method, Class<?> cls) {
        e.a.a.b.b.b.a(obj, "target cannot be null.");
        e.a.a.b.b.b.a(method, "method cannot be null.");
        this.f16807a = obj;
        this.f16808b = method;
        this.f16809c = cls;
        method.setAccessible(true);
    }

    @Override // e.a.a.a.g.b
    public f a(e.a.a.a.c.a aVar) {
        Object invoke;
        try {
            if (!this.f16809c.isAssignableFrom(aVar.getClass())) {
                invoke = this.f16808b.invoke(this.f16807a, aVar.c());
            } else {
                invoke = this.f16808b.invoke(this.f16807a, aVar);
            }
            if (invoke instanceof f) {
                return (f) invoke;
            }
            return f.SUCCESS;
        } catch (IllegalAccessException e2) {
            throw new e.a.a.a.e.a(e2);
        } catch (InvocationTargetException e3) {
            throw new e.a.a.a.e.a(e3);
        }
    }
}
