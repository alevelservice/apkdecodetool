package com.google.android.gms.internal.clearcut;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.UserManager;
import androidx.core.content.PermissionChecker;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public abstract class e<T> {

    /* renamed from: g */
    private static final Object f11402g = new Object();

    /* renamed from: h */
    @SuppressLint({"StaticFieldLeak"})
    private static Context f11403h;

    /* renamed from: i */
    private static volatile Boolean f11404i;

    /* renamed from: j */
    private static volatile Boolean f11405j;

    /* renamed from: a */
    private final o f11406a;

    /* renamed from: b */
    final String f11407b;

    /* renamed from: c */
    private final String f11408c;

    /* renamed from: d */
    private final T f11409d;

    /* renamed from: e */
    private volatile b f11410e;

    /* renamed from: f */
    private volatile SharedPreferences f11411f;

    private e(o oVar, String str, T t) {
        String str2;
        String str3;
        String str4;
        String str5;
        Uri uri;
        Uri uri2;
        this.f11410e = null;
        this.f11411f = null;
        str2 = oVar.f11515a;
        if (str2 == null) {
            uri2 = oVar.f11516b;
            if (uri2 == null) {
                throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
            }
        }
        str3 = oVar.f11515a;
        if (str3 != null) {
            uri = oVar.f11516b;
            if (uri != null) {
                throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
            }
        }
        this.f11406a = oVar;
        str4 = oVar.f11517c;
        String valueOf = String.valueOf(str4);
        String valueOf2 = String.valueOf(str);
        this.f11408c = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        str5 = oVar.f11518d;
        String valueOf3 = String.valueOf(str5);
        String valueOf4 = String.valueOf(str);
        this.f11407b = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        this.f11409d = t;
    }

    public /* synthetic */ e(o oVar, String str, Object obj, i iVar) {
        this(oVar, str, obj);
    }

    public static <T> e<T> a(o oVar, String str, T t, n<T> nVar) {
        return new l(oVar, str, t, nVar);
    }

    public static e<String> a(o oVar, String str, String str2) {
        return new k(oVar, str, str2);
    }

    public static e<Boolean> a(o oVar, String str, boolean z) {
        return new j(oVar, str, Boolean.valueOf(z));
    }

    private static <V> V a(m<V> mVar) {
        try {
            return mVar.a();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return mVar.a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    public static void a(Context context) {
        Context applicationContext;
        if (f11403h == null) {
            synchronized (f11402g) {
                if ((Build.VERSION.SDK_INT < 24 || !context.isDeviceProtectedStorage()) && (applicationContext = context.getApplicationContext()) != null) {
                    context = applicationContext;
                }
                if (f11403h != context) {
                    f11404i = null;
                }
                f11403h = context;
            }
        }
    }

    public static boolean a(String str, boolean z) {
        boolean z2 = false;
        if (e()) {
            return ((Boolean) a(new m(str, z2) { // from class: com.google.android.gms.internal.clearcut.h

                /* renamed from: a, reason: collision with root package name */
                private final String f11435a;

                /* renamed from: b, reason: collision with root package name */
                private final boolean f11436b = false;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11435a = str;
                }

                @Override // com.google.android.gms.internal.clearcut.m
                public final Object a() {
                    Boolean valueOf;
                    valueOf = Boolean.valueOf(q5.a(e.f11403h.getContentResolver(), this.f11435a, this.f11436b));
                    return valueOf;
                }
            })).booleanValue();
        }
        return false;
    }

    @Nullable
    @TargetApi(24)
    private final T c() {
        Uri uri;
        String str;
        boolean z;
        String str2;
        Uri uri2;
        if (a("gms:phenotype:phenotype_flag:debug_bypass_phenotype", false)) {
            String valueOf = String.valueOf(this.f11407b);
            if (valueOf.length() != 0) {
                "Bypass reading Phenotype values for flag: ".concat(valueOf);
            } else {
                new String("Bypass reading Phenotype values for flag: ");
            }
        } else {
            uri = this.f11406a.f11516b;
            if (uri != null) {
                if (this.f11410e == null) {
                    ContentResolver contentResolver = f11403h.getContentResolver();
                    uri2 = this.f11406a.f11516b;
                    this.f11410e = b.a(contentResolver, uri2);
                }
                String str3 = (String) a(new m(this, this.f11410e) { // from class: com.google.android.gms.internal.clearcut.f

                    /* renamed from: a, reason: collision with root package name */
                    private final e f11417a;

                    /* renamed from: b, reason: collision with root package name */
                    private final b f11418b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f11417a = this;
                        this.f11418b = r2;
                    }

                    @Override // com.google.android.gms.internal.clearcut.m
                    public final Object a() {
                        return this.f11418b.a().get(this.f11417a.f11407b);
                    }
                });
                if (str3 != null) {
                    return a(str3);
                }
            } else {
                str = this.f11406a.f11515a;
                if (str != null) {
                    if (Build.VERSION.SDK_INT < 24 || f11403h.isDeviceProtectedStorage()) {
                        z = true;
                    } else {
                        if (f11405j == null || !f11405j.booleanValue()) {
                            f11405j = Boolean.valueOf(((UserManager) f11403h.getSystemService(UserManager.class)).isUserUnlocked());
                        }
                        z = f11405j.booleanValue();
                    }
                    if (!z) {
                        return null;
                    }
                    if (this.f11411f == null) {
                        Context context = f11403h;
                        str2 = this.f11406a.f11515a;
                        this.f11411f = context.getSharedPreferences(str2, 0);
                    }
                    SharedPreferences sharedPreferences = this.f11411f;
                    if (sharedPreferences.contains(this.f11407b)) {
                        return a(sharedPreferences);
                    }
                }
            }
        }
        return null;
    }

    @Nullable
    private final T d() {
        boolean z;
        String str;
        z = this.f11406a.f11519e;
        if (z || !e() || (str = (String) a(new m(this) { // from class: com.google.android.gms.internal.clearcut.g

            /* renamed from: a, reason: collision with root package name */
            private final e f11426a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11426a = this;
            }

            @Override // com.google.android.gms.internal.clearcut.m
            public final Object a() {
                return this.f11426a.b();
            }
        })) == null) {
            return null;
        }
        return a(str);
    }

    private static boolean e() {
        if (f11404i == null) {
            Context context = f11403h;
            if (context == null) {
                return false;
            }
            f11404i = Boolean.valueOf(PermissionChecker.a(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return f11404i.booleanValue();
    }

    public final T a() {
        boolean z;
        if (f11403h == null) {
            throw new IllegalStateException("Must call PhenotypeFlag.init() first");
        }
        z = this.f11406a.f11520f;
        if (z) {
            T d2 = d();
            if (d2 != null) {
                return d2;
            }
            T c2 = c();
            if (c2 != null) {
                return c2;
            }
        } else {
            T c3 = c();
            if (c3 != null) {
                return c3;
            }
            T d3 = d();
            if (d3 != null) {
                return d3;
            }
        }
        return this.f11409d;
    }

    protected abstract T a(SharedPreferences sharedPreferences);

    protected abstract T a(String str);

    public final /* synthetic */ String b() {
        return q5.a(f11403h.getContentResolver(), this.f11408c, (String) null);
    }
}
