package com.zoloz.dfp;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import java.io.File;
import java.util.UUID;

/* compiled from: DfpGenerator.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: e, reason: collision with root package name */
    private static a f16656e;

    /* renamed from: a, reason: collision with root package name */
    private String f16657a;

    /* renamed from: b, reason: collision with root package name */
    private SharedPreferences f16658b;

    /* renamed from: c, reason: collision with root package name */
    private String f16659c = "/zoloz/temp";

    /* renamed from: d, reason: collision with root package name */
    private boolean f16660d = false;

    private a(Context context) {
        if (context != null) {
            this.f16657a = b(context);
        }
    }

    public static synchronized a a(Context context) {
        a aVar;
        synchronized (a.class) {
            if (f16656e == null) {
                f16656e = new a(context);
            }
            aVar = f16656e;
        }
        return aVar;
    }

    private String b(Context context) {
        this.f16658b = context.getSharedPreferences("dp.xx.zzz.dd", 0);
        String string = this.f16658b.getString("dfp.value.save.key", null);
        if (string == null) {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM + this.f16659c);
            if (externalStoragePublicDirectory.exists()) {
                try {
                    string = b.a(externalStoragePublicDirectory);
                    if (string != null) {
                        a(context, d(string));
                    }
                } catch (Exception e2) {
                    if (this.f16660d) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return string;
    }

    private void c(String str) {
        b.a(str, this.f16659c);
    }

    private String d(String str) {
        try {
            String str2 = new String(Signer.sign(str.getBytes()));
            if (this.f16660d) {
                String str3 = "encriptData " + str2;
            }
            return str2;
        } catch (UnsatisfiedLinkError e2) {
            if (this.f16660d) {
                e2.printStackTrace();
            }
            return str;
        }
    }

    private String e(String str) {
        try {
            byte[] a2 = Signer.a(str.getBytes());
            if (a2 == null) {
                return UUID.randomUUID().toString();
            }
            String str2 = new String(a2);
            if (this.f16660d) {
                String str3 = "deEncriDfp " + str2;
            }
            return str2;
        } catch (UnsatisfiedLinkError e2) {
            if (this.f16660d) {
                e2.printStackTrace();
            }
            return str;
        }
    }

    public static synchronized a c() {
        a aVar;
        synchronized (a.class) {
            if (f16656e == null) {
                f16656e = new a(null);
            }
            aVar = f16656e;
        }
        return aVar;
    }

    private void a(Context context, String str) {
        context.getSharedPreferences("dp.xx.zzz.dd", 0).edit().putString("dfp.value.save.key", d(str)).commit();
    }

    private void a(String str) {
        SharedPreferences sharedPreferences = this.f16658b;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("dfp.value.save.key", str).commit();
        }
    }

    public String a() {
        UUID randomUUID = UUID.randomUUID();
        if (this.f16660d) {
            String str = "generate " + randomUUID;
        }
        return d(randomUUID.toString());
    }

    public String b() {
        if (this.f16657a == null) {
            this.f16657a = a();
            if (this.f16660d) {
                String str = "generate enc " + this.f16657a;
            }
            b(this.f16657a);
        }
        return e(this.f16657a);
    }

    private void b(String str) {
        a(str);
        c(str);
    }
}
