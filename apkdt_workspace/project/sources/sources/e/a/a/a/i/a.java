package e.a.a.a.i;

import com.alibaba.taffy.bus.annotation.Subscribe;
import e.a.a.a.h;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: AnnotationLookup.java */
/* loaded from: classes.dex */
public class a implements c {

    /* renamed from: a, reason: collision with root package name */
    private final WeakHashMap<Class<?>, Collection<C0176a>> f16816a = new WeakHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnnotationLookup.java */
    /* renamed from: e.a.a.a.i.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0176a {

        /* renamed from: a, reason: collision with root package name */
        public Method f16817a;

        /* renamed from: b, reason: collision with root package name */
        public int f16818b;

        /* renamed from: c, reason: collision with root package name */
        public int f16819c;

        /* renamed from: d, reason: collision with root package name */
        public String f16820d;

        /* renamed from: e, reason: collision with root package name */
        public int f16821e;

        /* renamed from: f, reason: collision with root package name */
        public String f16822f;

        /* renamed from: g, reason: collision with root package name */
        public Class<?> f16823g;

        public C0176a(Class<?> cls, int i2, int i3, Method method, String str, int i4, String str2) {
            this.f16823g = cls;
            this.f16818b = i2;
            this.f16819c = i3;
            this.f16817a = method;
            this.f16820d = str;
            this.f16821e = i4;
            this.f16822f = str2;
        }
    }

    @Override // e.a.a.a.i.c
    public Map<String, Collection<h>> a(Object obj, b bVar) {
        Class<?> cls = obj.getClass();
        Collection<C0176a> collection = this.f16816a.get(cls);
        if (collection == null) {
            return a(obj, cls, bVar);
        }
        return a(obj, collection, bVar);
    }

    private Map<String, Collection<h>> a(Object obj, Collection<C0176a> collection, b bVar) {
        HashMap hashMap = new HashMap();
        for (C0176a c0176a : collection) {
            Collection collection2 = (Collection) hashMap.get(c0176a.f16823g.getName());
            if (collection2 == null) {
                collection2 = new ArrayList();
                hashMap.put(c0176a.f16823g.getName(), collection2);
            }
            collection2.add(a(bVar, c0176a.f16823g, obj, c0176a.f16817a, c0176a.f16819c, c0176a.f16818b, c0176a.f16820d, c0176a.f16821e, c0176a.f16822f));
        }
        return hashMap;
    }

    private Map<String, Collection<h>> a(Object obj, Class<?> cls, b bVar) {
        Subscribe subscribe;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        Method[] declaredMethods = cls.getDeclaredMethods();
        int length = declaredMethods.length;
        char c2 = 0;
        int i2 = 0;
        while (i2 < length) {
            Method method = declaredMethods[i2];
            if (!method.isBridge() && (subscribe = (Subscribe) method.getAnnotation(Subscribe.class)) != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if ((method.getModifiers() & 1) != 0) {
                    if (parameterTypes.length == 1) {
                        Class<?> cls2 = parameterTypes[c2];
                        arrayList.add(new C0176a(cls2, subscribe.thread(), subscribe.priority(), method, subscribe.filter(), subscribe.status(), subscribe.group()));
                        Collection collection = (Collection) hashMap.get(cls2.getName());
                        if (collection == null) {
                            collection = new ArrayList();
                            hashMap.put(cls2.getName(), collection);
                        }
                        collection.add(a(bVar, cls2, obj, method, subscribe.priority(), subscribe.thread(), subscribe.filter(), subscribe.status(), subscribe.group()));
                    } else {
                        throw new e.a.a.a.e.b("the binder listener method [" + method + "] signature is not illegal：must be EventStatus method(Object e)");
                    }
                } else {
                    throw new e.a.a.a.e.b("the binder listener must be public");
                }
            }
            i2++;
            c2 = 0;
        }
        this.f16816a.put(cls, arrayList);
        return hashMap;
    }

    private h a(b bVar, Class cls, Object obj, Method method, int i2, int i3, String str, int i4, String str2) {
        h hVar = new h(-1L, cls.getName(), str, i2, i3, i4, str2, new e.a.a.a.g.a(obj, method, cls));
        if (bVar != null) {
            bVar.a(hVar);
        }
        return hVar;
    }
}
