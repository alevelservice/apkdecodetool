package com.google.android.gms.internal.measurement;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.core.content.PermissionChecker;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m1 implements h1 {

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("GservicesLoader.class")
    static m1 f11965b;

    /* renamed from: a, reason: collision with root package name */
    private final Context f11966a;

    private m1(Context context) {
        this.f11966a = context;
        this.f11966a.getContentResolver().registerContentObserver(c1.f11787a, true, new o1(this, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static m1 a(Context context) {
        m1 m1Var;
        synchronized (m1.class) {
            if (f11965b == null) {
                f11965b = PermissionChecker.b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new m1(context) : new m1();
            }
            m1Var = f11965b;
        }
        return m1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.h1
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String a(final String str) {
        if (this.f11966a == null) {
            return null;
        }
        try {
            return (String) k1.a(new j1(this, str) { // from class: com.google.android.gms.internal.measurement.l1

                /* renamed from: a, reason: collision with root package name */
                private final m1 f11954a;

                /* renamed from: b, reason: collision with root package name */
                private final String f11955b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11954a = this;
                    this.f11955b = str;
                }

                @Override // com.google.android.gms.internal.measurement.j1
                public final Object a() {
                    return this.f11954a.b(this.f11955b);
                }
            });
        } catch (SecurityException unused) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Unable to read GServices for: ".concat(valueOf);
            } else {
                new String("Unable to read GServices for: ");
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String b(String str) {
        return c1.a(this.f11966a.getContentResolver(), str, (String) null);
    }

    private m1() {
        this.f11966a = null;
    }
}
