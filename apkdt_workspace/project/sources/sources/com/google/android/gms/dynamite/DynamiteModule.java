package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public final class DynamiteModule {

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static Boolean f5453b = null;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static zzj f5454c = null;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static zzl f5455d = null;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static String f5456e = null;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("DynamiteModule.class")
    private static int f5457f = -1;

    /* renamed from: g, reason: collision with root package name */
    private static final ThreadLocal<c> f5458g = new ThreadLocal<>();

    /* renamed from: h, reason: collision with root package name */
    private static final b.InterfaceC0091b f5459h = new com.google.android.gms.dynamite.a();

    /* renamed from: i, reason: collision with root package name */
    @KeepForSdk
    public static final b f5460i = new com.google.android.gms.dynamite.c();

    /* renamed from: j, reason: collision with root package name */
    @KeepForSdk
    public static final b f5461j = new com.google.android.gms.dynamite.b();

    /* renamed from: k, reason: collision with root package name */
    @KeepForSdk
    public static final b f5462k;

    /* renamed from: l, reason: collision with root package name */
    @KeepForSdk
    public static final b f5463l;

    /* renamed from: a, reason: collision with root package name */
    private final Context f5464a;

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    @DynamiteApi
    /* loaded from: classes.dex */
    public static class DynamiteLoaderClassLoader {

        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class a extends Exception {
        private a(String str) {
            super(str);
        }

        private a(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ a(String str, com.google.android.gms.dynamite.a aVar) {
            this(str);
        }

        /* synthetic */ a(String str, Throwable th, com.google.android.gms.dynamite.a aVar) {
            this(str, th);
        }
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* loaded from: classes.dex */
    public interface b {

        /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            public int f5465a = 0;

            /* renamed from: b, reason: collision with root package name */
            public int f5466b = 0;

            /* renamed from: c, reason: collision with root package name */
            public int f5467c = 0;
        }

        /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0091b {
            int a(Context context, String str);

            int a(Context context, String str, boolean z);
        }

        a a(Context context, String str, InterfaceC0091b interfaceC0091b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public Cursor f5468a;

        private c() {
        }

        /* synthetic */ c(com.google.android.gms.dynamite.a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* loaded from: classes.dex */
    public static class d implements b.InterfaceC0091b {

        /* renamed from: a, reason: collision with root package name */
        private final int f5469a;

        public d(int i2, int i3) {
            this.f5469a = i2;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.b.InterfaceC0091b
        public final int a(Context context, String str) {
            return this.f5469a;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.b.InterfaceC0091b
        public final int a(Context context, String str, boolean z) {
            return 0;
        }
    }

    static {
        new e();
        f5462k = new com.google.android.gms.dynamite.d();
        f5463l = new g();
        new f();
    }

    private DynamiteModule(Context context) {
        m.a(context);
        this.f5464a = context;
    }

    @KeepForSdk
    public static DynamiteModule a(Context context, b bVar, String str) {
        c cVar = f5458g.get();
        com.google.android.gms.dynamite.a aVar = null;
        c cVar2 = new c(aVar);
        f5458g.set(cVar2);
        try {
            b.a a2 = bVar.a(context, str, f5459h);
            int i2 = a2.f5465a;
            int i3 = a2.f5466b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length());
            sb.append("Considering local module ");
            sb.append(str);
            sb.append(":");
            sb.append(i2);
            sb.append(" and remote module ");
            sb.append(str);
            sb.append(":");
            sb.append(i3);
            sb.toString();
            if (a2.f5467c != 0 && ((a2.f5467c != -1 || a2.f5465a != 0) && (a2.f5467c != 1 || a2.f5466b != 0))) {
                if (a2.f5467c == -1) {
                    DynamiteModule c2 = c(context, str);
                    Cursor cursor = cVar2.f5468a;
                    if (cursor != null) {
                        cursor.close();
                    }
                    f5458g.set(cVar);
                    return c2;
                }
                if (a2.f5467c == 1) {
                    try {
                        DynamiteModule a3 = a(context, str, a2.f5466b);
                        Cursor cursor2 = cVar2.f5468a;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        f5458g.set(cVar);
                        return a3;
                    } catch (a e2) {
                        String valueOf = String.valueOf(e2.getMessage());
                        if (valueOf.length() != 0) {
                            "Failed to load remote module: ".concat(valueOf);
                        } else {
                            new String("Failed to load remote module: ");
                        }
                        if (a2.f5465a != 0 && bVar.a(context, str, new d(a2.f5465a, 0)).f5467c == -1) {
                            DynamiteModule c3 = c(context, str);
                            Cursor cursor3 = cVar2.f5468a;
                            if (cursor3 != null) {
                                cursor3.close();
                            }
                            f5458g.set(cVar);
                            return c3;
                        }
                        throw new a("Remote load failed. No local fallback found.", e2, aVar);
                    }
                }
                int i4 = a2.f5467c;
                StringBuilder sb2 = new StringBuilder(47);
                sb2.append("VersionPolicy returned invalid code:");
                sb2.append(i4);
                throw new a(sb2.toString(), aVar);
            }
            int i5 = a2.f5465a;
            int i6 = a2.f5466b;
            StringBuilder sb3 = new StringBuilder(91);
            sb3.append("No acceptable module found. Local version is ");
            sb3.append(i5);
            sb3.append(" and remote version is ");
            sb3.append(i6);
            sb3.append(".");
            throw new a(sb3.toString(), aVar);
        } catch (Throwable th) {
            Cursor cursor4 = cVar2.f5468a;
            if (cursor4 != null) {
                cursor4.close();
            }
            f5458g.set(cVar);
            throw th;
        }
    }

    private static int b(Context context, String str, boolean z) {
        zzj a2 = a(context);
        if (a2 == null) {
            return 0;
        }
        try {
            if (a2.zzak() >= 2) {
                return a2.zzb(ObjectWrapper.wrap(context), str, z);
            }
            return a2.zza(ObjectWrapper.wrap(context), str, z);
        } catch (RemoteException e2) {
            String valueOf = String.valueOf(e2.getMessage());
            if (valueOf.length() != 0) {
                "Failed to retrieve remote module version: ".concat(valueOf);
            } else {
                new String("Failed to retrieve remote module version: ");
            }
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int c(android.content.Context r8, java.lang.String r9, boolean r10) {
        /*
            r0 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            if (r10 == 0) goto La
            java.lang.String r8 = "api_force_staging"
            goto Lc
        La:
            java.lang.String r8 = "api"
        Lc:
            int r10 = r8.length()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            int r10 = r10 + 42
            java.lang.String r2 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            int r2 = r2.length()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            int r10 = r10 + r2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            r2.<init>(r10)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            java.lang.String r10 = "content://com.google.android.gms.chimera/"
            r2.append(r10)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            r2.append(r8)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            java.lang.String r8 = "/"
            r2.append(r8)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            r2.append(r9)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            java.lang.String r8 = r2.toString()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            android.net.Uri r2 = android.net.Uri.parse(r8)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            if (r8 == 0) goto L8c
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
            if (r9 == 0) goto L8c
            r9 = 0
            int r9 = r8.getInt(r9)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
            if (r9 <= 0) goto L7d
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule> r10 = com.google.android.gms.dynamite.DynamiteModule.class
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
            r1 = 2
            java.lang.String r1 = r8.getString(r1)     // Catch: java.lang.Throwable -> L7a
            com.google.android.gms.dynamite.DynamiteModule.f5456e = r1     // Catch: java.lang.Throwable -> L7a
            java.lang.String r1 = "loaderVersion"
            int r1 = r8.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L7a
            if (r1 < 0) goto L67
            int r1 = r8.getInt(r1)     // Catch: java.lang.Throwable -> L7a
            com.google.android.gms.dynamite.DynamiteModule.f5457f = r1     // Catch: java.lang.Throwable -> L7a
        L67:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L7a
            java.lang.ThreadLocal<com.google.android.gms.dynamite.DynamiteModule$c> r10 = com.google.android.gms.dynamite.DynamiteModule.f5458g     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
            java.lang.Object r10 = r10.get()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
            com.google.android.gms.dynamite.DynamiteModule$c r10 = (com.google.android.gms.dynamite.DynamiteModule.c) r10     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
            if (r10 == 0) goto L7d
            android.database.Cursor r1 = r10.f5468a     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
            if (r1 != 0) goto L7d
            r10.f5468a = r8     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
            r8 = r0
            goto L7d
        L7a:
            r9 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L7a
            throw r9     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
        L7d:
            if (r8 == 0) goto L82
            r8.close()
        L82:
            return r9
        L83:
            r9 = move-exception
            r0 = r8
            r8 = r9
            goto La7
        L87:
            r9 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
            goto L98
        L8c:
            com.google.android.gms.dynamite.DynamiteModule$a r9 = new com.google.android.gms.dynamite.DynamiteModule$a     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
            java.lang.String r10 = "Failed to connect to dynamite module ContentResolver."
            r9.<init>(r10, r0)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
            throw r9     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L87
        L94:
            r8 = move-exception
            goto La7
        L96:
            r8 = move-exception
            r9 = r0
        L98:
            boolean r10 = r8 instanceof com.google.android.gms.dynamite.DynamiteModule.a     // Catch: java.lang.Throwable -> La5
            if (r10 == 0) goto L9d
            throw r8     // Catch: java.lang.Throwable -> La5
        L9d:
            com.google.android.gms.dynamite.DynamiteModule$a r10 = new com.google.android.gms.dynamite.DynamiteModule$a     // Catch: java.lang.Throwable -> La5
            java.lang.String r1 = "V2 version check failed"
            r10.<init>(r1, r8, r0)     // Catch: java.lang.Throwable -> La5
            throw r10     // Catch: java.lang.Throwable -> La5
        La5:
            r8 = move-exception
            r0 = r9
        La7:
            if (r0 == 0) goto Lac
            r0.close()
        Lac:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.c(android.content.Context, java.lang.String, boolean):int");
    }

    @KeepForSdk
    public static int b(Context context, String str) {
        return a(context, str, false);
    }

    private static DynamiteModule b(Context context, String str, int i2) {
        zzl zzlVar;
        IObjectWrapper zza;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i2);
        sb.toString();
        synchronized (DynamiteModule.class) {
            zzlVar = f5455d;
        }
        com.google.android.gms.dynamite.a aVar = null;
        if (zzlVar != null) {
            c cVar = f5458g.get();
            if (cVar != null && cVar.f5468a != null) {
                Context applicationContext = context.getApplicationContext();
                Cursor cursor = cVar.f5468a;
                ObjectWrapper.wrap(null);
                if (b().booleanValue()) {
                    zza = zzlVar.zzb(ObjectWrapper.wrap(applicationContext), str, i2, ObjectWrapper.wrap(cursor));
                } else {
                    zza = zzlVar.zza(ObjectWrapper.wrap(applicationContext), str, i2, ObjectWrapper.wrap(cursor));
                }
                Context context2 = (Context) ObjectWrapper.unwrap(zza);
                if (context2 != null) {
                    return new DynamiteModule(context2);
                }
                throw new a("Failed to get module context", aVar);
            }
            throw new a("No result cursor", aVar);
        }
        throw new a("DynamiteLoaderV2 was not cached.", aVar);
    }

    private static DynamiteModule c(Context context, String str) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Selected local version of ".concat(valueOf);
        } else {
            new String("Selected local version of ");
        }
        return new DynamiteModule(context.getApplicationContext());
    }

    private static Boolean b() {
        Boolean valueOf;
        synchronized (DynamiteModule.class) {
            valueOf = Boolean.valueOf(f5457f >= 2);
        }
        return valueOf;
    }

    @KeepForSdk
    public static int a(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (!declaredField.get(null).equals(str)) {
                String valueOf = String.valueOf(declaredField.get(null));
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 51 + String.valueOf(str).length());
                sb2.append("Module descriptor id '");
                sb2.append(valueOf);
                sb2.append("' didn't match expected id '");
                sb2.append(str);
                sb2.append("'");
                sb2.toString();
                return 0;
            }
            return declaredField2.getInt(null);
        } catch (ClassNotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            sb3.toString();
            return 0;
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            if (valueOf2.length() != 0) {
                "Failed to load module descriptor class: ".concat(valueOf2);
            } else {
                new String("Failed to load module descriptor class: ");
            }
            return 0;
        }
    }

    public static int a(Context context, String str, boolean z) {
        Class<?> loadClass;
        Field declaredField;
        Boolean bool;
        ClassLoader hVar;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool2 = f5453b;
                if (bool2 == null) {
                    try {
                        loadClass = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName());
                        declaredField = loadClass.getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        String valueOf = String.valueOf(e2);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(valueOf);
                        sb.toString();
                        bool2 = Boolean.FALSE;
                    }
                    synchronized (loadClass) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool = Boolean.FALSE;
                            } else {
                                try {
                                    a(classLoader);
                                } catch (a unused) {
                                }
                                bool = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        } else {
                            try {
                                int c2 = c(context, str, z);
                                if (f5456e != null && !f5456e.isEmpty()) {
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        hVar = new DelegateLastClassLoader(f5456e, ClassLoader.getSystemClassLoader());
                                    } else {
                                        hVar = new h(f5456e, ClassLoader.getSystemClassLoader());
                                    }
                                    a(hVar);
                                    declaredField.set(null, hVar);
                                    f5453b = Boolean.TRUE;
                                    return c2;
                                }
                                return c2;
                            } catch (a unused2) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool = Boolean.FALSE;
                            }
                        }
                        bool2 = bool;
                        f5453b = bool2;
                    }
                }
                if (bool2.booleanValue()) {
                    try {
                        return c(context, str, z);
                    } catch (a e3) {
                        String valueOf2 = String.valueOf(e3.getMessage());
                        if (valueOf2.length() != 0) {
                            "Failed to retrieve remote module version: ".concat(valueOf2);
                            return 0;
                        }
                        new String("Failed to retrieve remote module version: ");
                        return 0;
                    }
                }
                return b(context, str, z);
            }
        } catch (Throwable th) {
            com.google.android.gms.common.util.g.a(context, th);
            throw th;
        }
    }

    private static DynamiteModule a(Context context, String str, int i2) {
        Boolean bool;
        IObjectWrapper zza;
        com.google.android.gms.dynamite.a aVar = null;
        try {
            synchronized (DynamiteModule.class) {
                bool = f5453b;
            }
            if (bool != null) {
                if (bool.booleanValue()) {
                    return b(context, str, i2);
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
                sb.append("Selected remote version of ");
                sb.append(str);
                sb.append(", version >= ");
                sb.append(i2);
                sb.toString();
                zzj a2 = a(context);
                if (a2 != null) {
                    if (a2.zzak() >= 2) {
                        zza = a2.zzb(ObjectWrapper.wrap(context), str, i2);
                    } else {
                        zza = a2.zza(ObjectWrapper.wrap(context), str, i2);
                    }
                    if (ObjectWrapper.unwrap(zza) != null) {
                        return new DynamiteModule((Context) ObjectWrapper.unwrap(zza));
                    }
                    throw new a("Failed to load remote module.", aVar);
                }
                throw new a("Failed to create IDynamiteLoader.", aVar);
            }
            throw new a("Failed to determine which loading route to use.", aVar);
        } catch (RemoteException e2) {
            throw new a("Failed to load remote module.", e2, aVar);
        } catch (a e3) {
            throw e3;
        } catch (Throwable th) {
            com.google.android.gms.common.util.g.a(context, th);
            throw new a("Failed to load remote module.", th, aVar);
        }
    }

    private static zzj a(Context context) {
        zzj zziVar;
        synchronized (DynamiteModule.class) {
            if (f5454c != null) {
                return f5454c;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zziVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    if (queryLocalInterface instanceof zzj) {
                        zziVar = (zzj) queryLocalInterface;
                    } else {
                        zziVar = new zzi(iBinder);
                    }
                }
                if (zziVar != null) {
                    f5454c = zziVar;
                    return zziVar;
                }
            } catch (Exception e2) {
                String valueOf = String.valueOf(e2.getMessage());
                if (valueOf.length() != 0) {
                    "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf);
                } else {
                    new String("Failed to load IDynamiteLoader from GmsCore: ");
                }
            }
            return null;
        }
    }

    @KeepForSdk
    public final Context a() {
        return this.f5464a;
    }

    @GuardedBy("DynamiteModule.class")
    private static void a(ClassLoader classLoader) {
        zzl zzkVar;
        com.google.android.gms.dynamite.a aVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzkVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                if (queryLocalInterface instanceof zzl) {
                    zzkVar = (zzl) queryLocalInterface;
                } else {
                    zzkVar = new zzk(iBinder);
                }
            }
            f5455d = zzkVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            throw new a("Failed to instantiate dynamite loader", e2, aVar);
        }
    }

    @KeepForSdk
    public final IBinder a(String str) {
        try {
            return (IBinder) this.f5464a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            String valueOf = String.valueOf(str);
            throw new a(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e2, null);
        }
    }
}
