package kotlinx.coroutines.internal;

import com.alipay.mobile.security.bio.common.record.MetaRecord;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import org.jetbrains.annotations.NotNull;

/* compiled from: FastServiceLoader.kt */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: b, reason: collision with root package name */
    public static final h f20071b = new h();

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f20070a = u.a("kotlinx.coroutines.fast.service.loader", true);

    private h() {
    }

    @NotNull
    public final <S> List<S> a(@NotNull Class<S> cls, @NotNull ClassLoader classLoader) {
        List<S> a2;
        List<S> a3;
        kotlin.jvm.d.h.b(cls, "service");
        kotlin.jvm.d.h.b(classLoader, "loader");
        if (!f20070a) {
            ServiceLoader load = ServiceLoader.load(cls, classLoader);
            kotlin.jvm.d.h.a((Object) load, "ServiceLoader.load(service, loader)");
            a3 = kotlin.v.r.a((Iterable) load);
            return a3;
        }
        try {
            return b(cls, classLoader);
        } catch (Throwable unused) {
            ServiceLoader load2 = ServiceLoader.load(cls, classLoader);
            kotlin.jvm.d.h.a((Object) load2, "ServiceLoader.load(service, loader)");
            a2 = kotlin.v.r.a((Iterable) load2);
            return a2;
        }
    }

    @NotNull
    public final <S> List<S> b(@NotNull Class<S> cls, @NotNull ClassLoader classLoader) {
        Set c2;
        int a2;
        kotlin.jvm.d.h.b(cls, "service");
        kotlin.jvm.d.h.b(classLoader, "loader");
        Enumeration<URL> resources = classLoader.getResources("META-INF/services/" + cls.getName());
        kotlin.jvm.d.h.a((Object) resources, "urls");
        ArrayList<URL> list = Collections.list(resources);
        kotlin.jvm.d.h.a((Object) list, "java.util.Collections.list(this)");
        ArrayList arrayList = new ArrayList();
        for (URL url : list) {
            h hVar = f20071b;
            kotlin.jvm.d.h.a((Object) url, "it");
            kotlin.v.o.a(arrayList, hVar.a(url));
        }
        c2 = kotlin.v.r.c(arrayList);
        if (!c2.isEmpty()) {
            a2 = kotlin.v.k.a(c2, 10);
            ArrayList arrayList2 = new ArrayList(a2);
            Iterator it = c2.iterator();
            while (it.hasNext()) {
                arrayList2.add(f20071b.a((String) it.next(), classLoader, cls));
            }
            return arrayList2;
        }
        throw new IllegalArgumentException("No providers were loaded with FastServiceLoader".toString());
    }

    private final <S> S a(String str, ClassLoader classLoader, Class<S> cls) {
        Class<?> cls2 = Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        throw new IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
    }

    private final List<String> a(URL url) {
        boolean a2;
        BufferedReader bufferedReader;
        String a3;
        String a4;
        String a5;
        String url2 = url.toString();
        kotlin.jvm.d.h.a((Object) url2, "url.toString()");
        a2 = kotlin.text.l.a(url2, "jar", false, 2, null);
        if (a2) {
            a3 = kotlin.text.m.a(url2, "jar:file:", (String) null, 2, (Object) null);
            a4 = kotlin.text.m.a(a3, '!', (String) null, 2, (Object) null);
            a5 = kotlin.text.m.a(url2, "!/", (String) null, 2, (Object) null);
            JarFile jarFile = new JarFile(a4, false);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(a5)), "UTF-8"));
                try {
                    List<String> a6 = f20071b.a(bufferedReader);
                    kotlin.x.a.a(bufferedReader, null);
                    kotlin.x.a.a(jarFile, null);
                    return a6;
                } finally {
                }
            } finally {
            }
        } else {
            bufferedReader = new BufferedReader(new InputStreamReader(url.openStream()));
            try {
                List<String> a7 = f20071b.a(bufferedReader);
                kotlin.x.a.a(bufferedReader, null);
                return a7;
            } finally {
            }
        }
    }

    private final List<String> a(BufferedReader bufferedReader) {
        List<String> a2;
        String b2;
        CharSequence b3;
        boolean z;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                b2 = kotlin.text.m.b(readLine, MetaRecord.LOG_SEPARATOR, null, 2, null);
                if (b2 == null) {
                    throw new kotlin.r("null cannot be cast to non-null type kotlin.CharSequence");
                }
                b3 = kotlin.text.m.b((CharSequence) b2);
                String obj = b3.toString();
                int i2 = 0;
                while (true) {
                    if (i2 >= obj.length()) {
                        z = true;
                        break;
                    }
                    char charAt = obj.charAt(i2);
                    if (!(charAt == '.' || Character.isJavaIdentifierPart(charAt))) {
                        z = false;
                        break;
                    }
                    i2++;
                }
                if (z) {
                    if (obj.length() > 0) {
                        linkedHashSet.add(obj);
                    }
                } else {
                    throw new IllegalArgumentException(("Illegal service provider class name: " + obj).toString());
                }
            } else {
                a2 = kotlin.v.r.a((Iterable) linkedHashSet);
                return a2;
            }
        }
    }
}
