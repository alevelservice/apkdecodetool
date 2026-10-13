package com.google.firebase.components;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: ComponentDiscovery.java */
/* loaded from: classes.dex */
public final class g<T> {

    /* renamed from: a, reason: collision with root package name */
    private final T f14321a;

    /* renamed from: b, reason: collision with root package name */
    private final c<T> f14322b;

    /* compiled from: ComponentDiscovery.java */
    /* loaded from: classes.dex */
    private static class b implements c<Context> {

        /* renamed from: a, reason: collision with root package name */
        private final Class<? extends Service> f14323a;

        private Bundle b(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f14323a), 128);
                if (serviceInfo == null) {
                    String str = this.f14323a + " has no service info.";
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        private b(Class<? extends Service> cls) {
            this.f14323a = cls;
        }

        @Override // com.google.firebase.components.g.c
        public List<String> a(Context context) {
            Bundle b2 = b(context);
            if (b2 == null) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : b2.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(b2.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }
    }

    /* compiled from: ComponentDiscovery.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    interface c<T> {
        List<String> a(T t);
    }

    @VisibleForTesting
    g(T t, c<T> cVar) {
        this.f14321a = t;
        this.f14322b = cVar;
    }

    public static g<Context> a(Context context, Class<? extends Service> cls) {
        return new g<>(context, new b(cls));
    }

    public List<com.google.firebase.p.b<i>> a() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.f14322b.a(this.f14321a).iterator();
        while (it.hasNext()) {
            arrayList.add(f.a(it.next()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static i a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (i.class.isAssignableFrom(cls)) {
                return (i) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new v(String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
        } catch (ClassNotFoundException unused) {
            String.format("Class %s is not an found.", str);
            return null;
        } catch (IllegalAccessException e2) {
            throw new v(String.format("Could not instantiate %s.", str), e2);
        } catch (InstantiationException e3) {
            throw new v(String.format("Could not instantiate %s.", str), e3);
        } catch (NoSuchMethodException e4) {
            throw new v(String.format("Could not instantiate %s", str), e4);
        } catch (InvocationTargetException e5) {
            throw new v(String.format("Could not instantiate %s", str), e5);
        }
    }
}
