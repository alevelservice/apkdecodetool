package com.facebook.soloader;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.StrictMode;
import android.text.TextUtils;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes.dex */
public class SoLoader {

    /* renamed from: a, reason: collision with root package name */
    static final boolean f4157a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    static i f4158b;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("sSoSourcesLock")
    @Nullable
    private static l[] f4162f;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("sSoSourcesLock")
    @Nullable
    private static com.facebook.soloader.b f4163g;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("sSoSourcesLock")
    private static int f4168l;

    /* renamed from: c, reason: collision with root package name */
    private static final ReentrantReadWriteLock f4159c = new ReentrantReadWriteLock();

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("sSoSourcesLock")
    @Nullable
    private static j[] f4160d = null;

    /* renamed from: e, reason: collision with root package name */
    private static int f4161e = 0;

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("SoLoader.class")
    private static final HashSet<String> f4164h = new HashSet<>();

    /* renamed from: i, reason: collision with root package name */
    @GuardedBy("SoLoader.class")
    private static final Map<String, Object> f4165i = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    private static final Set<String> f4166j = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    private static k f4167k = null;

    /* JADX INFO: Access modifiers changed from: private */
    @DoNotOptimize
    @TargetApi(14)
    /* loaded from: classes.dex */
    public static class Api14Utils {
        private Api14Utils() {
        }

        public static String a() {
            ClassLoader classLoader = SoLoader.class.getClassLoader();
            if (classLoader instanceof BaseDexClassLoader) {
                try {
                    return (String) BaseDexClassLoader.class.getMethod("getLdLibraryPath", new Class[0]).invoke((BaseDexClassLoader) classLoader, new Object[0]);
                } catch (Exception e2) {
                    throw new RuntimeException("Cannot call getLdLibraryPath", e2);
                }
            }
            throw new IllegalStateException("ClassLoader " + classLoader.getClass().getName() + " should be of type BaseDexClassLoader");
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends UnsatisfiedLinkError {
        b(Throwable th) {
            super("APK was built for a different platform");
            initCause(th);
        }
    }

    static {
        boolean z = false;
        try {
            if (Build.VERSION.SDK_INT >= 18) {
                z = true;
            }
        } catch (NoClassDefFoundError | UnsatisfiedLinkError unused) {
        }
        f4157a = z;
    }

    public static void a(Context context, int i2) {
        a(context, i2, (i) null);
    }

    private static void b(Context context, int i2, @Nullable i iVar) {
        int i3;
        f4159c.writeLock().lock();
        try {
            if (f4160d == null) {
                f4168l = i2;
                ArrayList arrayList = new ArrayList();
                String str = System.getenv("LD_LIBRARY_PATH");
                if (str == null) {
                    str = "/vendor/lib:/system/lib";
                }
                String[] split = str.split(":");
                for (int i4 = 0; i4 < split.length; i4++) {
                    String str2 = "adding system library source: " + split[i4];
                    arrayList.add(new c(new File(split[i4]), 2));
                }
                if (context != null) {
                    if ((i2 & 1) != 0) {
                        f4162f = null;
                        arrayList.add(0, new d(context, "lib-main"));
                    } else {
                        ApplicationInfo applicationInfo = context.getApplicationInfo();
                        if ((applicationInfo.flags & 1) != 0 && (applicationInfo.flags & 128) == 0) {
                            i3 = 0;
                        } else {
                            f4163g = new com.facebook.soloader.b(context, Build.VERSION.SDK_INT <= 17 ? 1 : 0);
                            String str3 = "adding application source: " + f4163g.toString();
                            arrayList.add(0, f4163g);
                            i3 = 1;
                        }
                        if ((f4168l & 8) != 0) {
                            f4162f = null;
                        } else {
                            File file = new File(context.getApplicationInfo().sourceDir);
                            ArrayList arrayList2 = new ArrayList();
                            com.facebook.soloader.a aVar = new com.facebook.soloader.a(context, file, "lib-main", i3);
                            arrayList2.add(aVar);
                            String str4 = "adding backup source from : " + aVar.toString();
                            if (Build.VERSION.SDK_INT >= 21 && context.getApplicationInfo().splitSourceDirs != null) {
                                String[] strArr = context.getApplicationInfo().splitSourceDirs;
                                int length = strArr.length;
                                int i5 = 0;
                                int i6 = 0;
                                while (i5 < length) {
                                    File file2 = new File(strArr[i5]);
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("lib-");
                                    sb.append(i6);
                                    com.facebook.soloader.a aVar2 = new com.facebook.soloader.a(context, file2, sb.toString(), i3);
                                    String str5 = "adding backup source: " + aVar2.toString();
                                    arrayList2.add(aVar2);
                                    i5++;
                                    i6++;
                                }
                            }
                            f4162f = (l[]) arrayList2.toArray(new l[arrayList2.size()]);
                            arrayList.addAll(0, arrayList2);
                        }
                    }
                }
                j[] jVarArr = (j[]) arrayList.toArray(new j[arrayList.size()]);
                int c2 = c();
                int length2 = jVarArr.length;
                while (true) {
                    int i7 = length2 - 1;
                    if (length2 <= 0) {
                        break;
                    }
                    String str6 = "Preparing SO source: " + jVarArr[i7];
                    jVarArr[i7].a(c2);
                    length2 = i7;
                }
                f4160d = jVarArr;
                f4161e++;
                String str7 = "init finish: " + f4160d.length + " SO sources prepared";
            }
        } finally {
            f4159c.writeLock().unlock();
        }
    }

    private static int c() {
        f4159c.writeLock().lock();
        try {
            return (f4168l & 2) != 0 ? 1 : 0;
        } finally {
            f4159c.writeLock().unlock();
        }
    }

    private static void a(Context context, int i2, @Nullable i iVar) {
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            a(iVar);
            b(context, i2, iVar);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
        }
    }

    private static synchronized void a(@Nullable i iVar) {
        synchronized (SoLoader.class) {
            if (iVar != null) {
                f4158b = iVar;
                return;
            }
            Runtime runtime = Runtime.getRuntime();
            Method b2 = b();
            boolean z = b2 != null;
            String a2 = z ? Api14Utils.a() : null;
            f4158b = new a(z, a2, b(a2), runtime, b2);
        }
    }

    public static boolean a(String str) {
        return a(str, 0);
    }

    public static boolean a(String str, int i2) {
        boolean z;
        f4159c.readLock().lock();
        try {
            if (f4160d == null) {
                if ("http://www.android.com/".equals(System.getProperty("java.vendor.url"))) {
                    a();
                } else {
                    synchronized (SoLoader.class) {
                        z = !f4164h.contains(str);
                        if (z) {
                            if (f4167k != null) {
                                f4167k.a(str);
                            } else {
                                System.loadLibrary(str);
                            }
                        }
                    }
                    return z;
                }
            }
            f4159c.readLock().unlock();
            String b2 = g.b(str);
            return a(System.mapLibraryName(b2 != null ? b2 : str), str, b2, i2 | 2, null);
        } finally {
            f4159c.readLock().unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a implements i {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f4169a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f4170b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f4171c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ Runtime f4172d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Method f4173e;

        a(boolean z, String str, String str2, Runtime runtime, Method method) {
            this.f4169a = z;
            this.f4170b = str;
            this.f4171c = str2;
            this.f4172d = runtime;
            this.f4173e = method;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
        
            if (r1 == null) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
        
            r0 = "Error when loading lib: " + r1 + " lib hash: " + a(r9) + " search path is " + r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
        
            return;
         */
        @Override // com.facebook.soloader.i
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(java.lang.String r9, int r10) {
            /*
                r8 = this;
                boolean r0 = r8.f4169a
                if (r0 == 0) goto Laf
                r0 = 4
                r10 = r10 & r0
                r1 = 1
                r2 = 0
                if (r10 != r0) goto Lc
                r10 = 1
                goto Ld
            Lc:
                r10 = 0
            Ld:
                if (r10 == 0) goto L12
                java.lang.String r10 = r8.f4170b
                goto L14
            L12:
                java.lang.String r10 = r8.f4171c
            L14:
                r0 = 0
                java.lang.Runtime r3 = r8.f4172d     // Catch: java.lang.Throwable -> L6a java.lang.reflect.InvocationTargetException -> L6c java.lang.IllegalArgumentException -> L6e java.lang.IllegalAccessException -> L70
                monitor-enter(r3)     // Catch: java.lang.Throwable -> L6a java.lang.reflect.InvocationTargetException -> L6c java.lang.IllegalArgumentException -> L6e java.lang.IllegalAccessException -> L70
                java.lang.reflect.Method r4 = r8.f4173e     // Catch: java.lang.Throwable -> L67
                java.lang.Runtime r5 = r8.f4172d     // Catch: java.lang.Throwable -> L67
                r6 = 3
                java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L67
                r6[r2] = r9     // Catch: java.lang.Throwable -> L67
                java.lang.Class<com.facebook.soloader.SoLoader> r2 = com.facebook.soloader.SoLoader.class
                java.lang.ClassLoader r2 = r2.getClassLoader()     // Catch: java.lang.Throwable -> L67
                r6[r1] = r2     // Catch: java.lang.Throwable -> L67
                r1 = 2
                r6[r1] = r10     // Catch: java.lang.Throwable -> L67
                java.lang.Object r1 = r4.invoke(r5, r6)     // Catch: java.lang.Throwable -> L67
                java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L67
                if (r1 != 0) goto L61
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L5c
                if (r1 == 0) goto Lb2
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r2 = "Error when loading lib: "
                r0.append(r2)
                r0.append(r1)
                java.lang.String r1 = " lib hash: "
                r0.append(r1)
                java.lang.String r9 = r8.a(r9)
                r0.append(r9)
                java.lang.String r9 = " search path is "
                r0.append(r9)
                r0.append(r10)
                r0.toString()
                goto Lb2
            L5c:
                r0 = move-exception
                r7 = r1
                r1 = r0
                r0 = r7
                goto L68
            L61:
                java.lang.UnsatisfiedLinkError r0 = new java.lang.UnsatisfiedLinkError     // Catch: java.lang.Throwable -> L5c
                r0.<init>(r1)     // Catch: java.lang.Throwable -> L5c
                throw r0     // Catch: java.lang.Throwable -> L5c
            L67:
                r1 = move-exception
            L68:
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L67
                throw r1     // Catch: java.lang.Throwable -> L6a java.lang.reflect.InvocationTargetException -> L6c java.lang.IllegalArgumentException -> L6e java.lang.IllegalAccessException -> L70
            L6a:
                r1 = move-exception
                goto L88
            L6c:
                r1 = move-exception
                goto L71
            L6e:
                r1 = move-exception
                goto L71
            L70:
                r1 = move-exception
            L71:
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6a
                r2.<init>()     // Catch: java.lang.Throwable -> L6a
                java.lang.String r3 = "Error: Cannot load "
                r2.append(r3)     // Catch: java.lang.Throwable -> L6a
                r2.append(r9)     // Catch: java.lang.Throwable -> L6a
                java.lang.String r0 = r2.toString()     // Catch: java.lang.Throwable -> L6a
                java.lang.RuntimeException r2 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L6a
                r2.<init>(r0, r1)     // Catch: java.lang.Throwable -> L6a
                throw r2     // Catch: java.lang.Throwable -> L6a
            L88:
                if (r0 == 0) goto Lae
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "Error when loading lib: "
                r2.append(r3)
                r2.append(r0)
                java.lang.String r0 = " lib hash: "
                r2.append(r0)
                java.lang.String r9 = r8.a(r9)
                r2.append(r9)
                java.lang.String r9 = " search path is "
                r2.append(r9)
                r2.append(r10)
                r2.toString()
            Lae:
                throw r1
            Laf:
                java.lang.System.load(r9)
            Lb2:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.SoLoader.a.a(java.lang.String, int):void");
        }

        private String a(String str) {
            try {
                File file = new File(str);
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read > 0) {
                            messageDigest.update(bArr, 0, read);
                        } else {
                            String format = String.format("%32x", new BigInteger(1, messageDigest.digest()));
                            fileInputStream.close();
                            return format;
                        }
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (IOException e2) {
                return e2.toString();
            } catch (SecurityException e3) {
                return e3.toString();
            } catch (NoSuchAlgorithmException e4) {
                return e4.toString();
            }
        }
    }

    private static boolean a(String str, @Nullable String str2, @Nullable String str3, int i2, @Nullable StrictMode.ThreadPolicy threadPolicy) {
        boolean z;
        Object obj;
        boolean z2 = false;
        if (!TextUtils.isEmpty(str2) && f4166j.contains(str2)) {
            return false;
        }
        synchronized (SoLoader.class) {
            if (!f4164h.contains(str)) {
                z = false;
            } else {
                if (str3 == null) {
                    return false;
                }
                z = true;
            }
            if (f4165i.containsKey(str)) {
                obj = f4165i.get(str);
            } else {
                obj = new Object();
                f4165i.put(str, obj);
            }
            synchronized (obj) {
                if (!z) {
                    synchronized (SoLoader.class) {
                        if (f4164h.contains(str)) {
                            if (str3 == null) {
                                return false;
                            }
                            z = true;
                        }
                        if (!z) {
                            try {
                                String str4 = "About to load: " + str;
                                a(str, i2, threadPolicy);
                                synchronized (SoLoader.class) {
                                    String str5 = "Loaded: " + str;
                                    f4164h.add(str);
                                }
                            } catch (IOException e2) {
                                throw new RuntimeException(e2);
                            } catch (UnsatisfiedLinkError e3) {
                                String message = e3.getMessage();
                                if (message != null && message.contains("unexpected e_machine:")) {
                                    throw new b(e3);
                                }
                                throw e3;
                            }
                        }
                    }
                }
                if (!TextUtils.isEmpty(str2) && f4166j.contains(str2)) {
                    z2 = true;
                }
                if (str3 == null || z2) {
                    return !z;
                }
                if (f4157a) {
                    Api18TraceUtils.a("MergedSoMapping.invokeJniOnload[" + str2 + "]");
                }
                try {
                    String str6 = "About to merge: " + str2 + " / " + str;
                    g.a(str2);
                    throw null;
                } catch (Throwable th) {
                    if (f4157a) {
                        Api18TraceUtils.a();
                    }
                    throw th;
                }
            }
        }
    }

    @Nullable
    private static Method b() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23 && i2 <= 27) {
            try {
                Method declaredMethod = Runtime.class.getDeclaredMethod("nativeLoad", String.class, ClassLoader.class, String.class);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (NoSuchMethodException | SecurityException unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str, int i2, StrictMode.ThreadPolicy threadPolicy) {
        a(str, null, null, i2, threadPolicy);
    }

    @Nullable
    public static String b(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(":");
        ArrayList arrayList = new ArrayList(split.length);
        for (String str2 : split) {
            if (!str2.contains("!")) {
                arrayList.add(str2);
            }
        }
        return TextUtils.join(":", arrayList);
    }

    private static void a(String str, int i2, StrictMode.ThreadPolicy threadPolicy) {
        boolean z;
        UnsatisfiedLinkError unsatisfiedLinkError;
        boolean z2;
        f4159c.readLock().lock();
        try {
            if (f4160d != null) {
                f4159c.readLock().unlock();
                if (threadPolicy == null) {
                    threadPolicy = StrictMode.allowThreadDiskReads();
                    z = true;
                } else {
                    z = false;
                }
                if (f4157a) {
                    Api18TraceUtils.a("SoLoader.loadLibrary[" + str + "]");
                }
                int i3 = 0;
                do {
                    try {
                        f4159c.readLock().lock();
                        int i4 = f4161e;
                        int i5 = 0;
                        while (true) {
                            if (i3 != 0) {
                                break;
                            }
                            try {
                                if (i5 < f4160d.length) {
                                    i3 = f4160d[i5].a(str, i2, threadPolicy);
                                    if (i3 == 3 && f4162f != null) {
                                        String str2 = "Trying backup SoSource for " + str;
                                        l[] lVarArr = f4162f;
                                        int length = lVarArr.length;
                                        int i6 = 0;
                                        while (true) {
                                            if (i6 >= length) {
                                                break;
                                            }
                                            l lVar = lVarArr[i6];
                                            lVar.a(str);
                                            int a2 = lVar.a(str, i2, threadPolicy);
                                            if (a2 == 1) {
                                                i3 = a2;
                                                break;
                                            }
                                            i6++;
                                        }
                                    } else {
                                        i5++;
                                    }
                                } else {
                                    break;
                                }
                            } finally {
                            }
                        }
                        f4159c.readLock().unlock();
                        if ((i2 & 2) == 2 && i3 == 0) {
                            f4159c.writeLock().lock();
                            try {
                                if (f4163g != null && f4163g.a()) {
                                    f4161e++;
                                }
                                z2 = f4161e != i4;
                                f4159c.writeLock().unlock();
                            } catch (Throwable th) {
                                f4159c.writeLock().unlock();
                                throw th;
                            }
                        } else {
                            z2 = false;
                        }
                    } finally {
                        if (i3 == 0 || i3 == r5) {
                        }
                    }
                } while (z2);
                if (f4157a) {
                    Api18TraceUtils.a();
                }
                if (z) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                if (i3 == 0 || i3 == 3) {
                    throw new UnsatisfiedLinkError("couldn't find DSO to load: " + str);
                }
                return;
            }
            String str3 = "Could not load: " + str + " because no SO source exists";
            throw new UnsatisfiedLinkError("couldn't find DSO to load: " + str);
        } finally {
        }
    }

    private static void a() {
        f4159c.readLock().lock();
        try {
            if (f4160d != null) {
            } else {
                throw new RuntimeException("SoLoader.init() not yet called");
            }
        } finally {
            f4159c.readLock().unlock();
        }
    }
}
