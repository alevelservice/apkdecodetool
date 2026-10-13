package com.google.android.datatransport.runtime.backends;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

/* compiled from: MetadataBackendRegistry.java */
@Singleton
/* loaded from: classes.dex */
class l implements e {

    /* renamed from: a, reason: collision with root package name */
    private final a f4379a;

    /* renamed from: b, reason: collision with root package name */
    private final j f4380b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, n> f4381c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Inject
    public l(Context context, j jVar) {
        this(new a(context), jVar);
    }

    @Override // com.google.android.datatransport.runtime.backends.e
    @Nullable
    public synchronized n a(String str) {
        if (this.f4381c.containsKey(str)) {
            return this.f4381c.get(str);
        }
        d a2 = this.f4379a.a(str);
        if (a2 == null) {
            return null;
        }
        n create = a2.create(this.f4380b.a(str));
        this.f4381c.put(str, create);
        return create;
    }

    l(a aVar, j jVar) {
        this.f4381c = new HashMap();
        this.f4379a = aVar;
        this.f4380b = jVar;
    }

    /* compiled from: MetadataBackendRegistry.java */
    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        private final Context f4382a;

        /* renamed from: b, reason: collision with root package name */
        private Map<String, String> f4383b = null;

        a(Context context) {
            this.f4382a = context;
        }

        private static Bundle b(Context context) {
            ServiceInfo serviceInfo;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) TransportBackendDiscovery.class), 128)) == null) {
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        @Nullable
        d a(String str) {
            String str2 = a().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (d) Class.forName(str2).asSubclass(d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException unused) {
                String.format("Class %s is not found.", str2);
                return null;
            } catch (IllegalAccessException unused2) {
                String.format("Could not instantiate %s.", str2);
                return null;
            } catch (InstantiationException unused3) {
                String.format("Could not instantiate %s.", str2);
                return null;
            } catch (NoSuchMethodException unused4) {
                String.format("Could not instantiate %s", str2);
                return null;
            } catch (InvocationTargetException unused5) {
                String.format("Could not instantiate %s", str2);
                return null;
            }
        }

        private Map<String, String> a() {
            if (this.f4383b == null) {
                this.f4383b = a(this.f4382a);
            }
            return this.f4383b;
        }

        private Map<String, String> a(Context context) {
            Bundle b2 = b(context);
            if (b2 == null) {
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            for (String str : b2.keySet()) {
                Object obj = b2.get(str);
                if ((obj instanceof String) && str.startsWith("backend:")) {
                    for (String str2 : ((String) obj).split(",", -1)) {
                        String trim = str2.trim();
                        if (!trim.isEmpty()) {
                            hashMap.put(trim, str.substring(8));
                        }
                    }
                }
            }
            return hashMap;
        }
    }
}
