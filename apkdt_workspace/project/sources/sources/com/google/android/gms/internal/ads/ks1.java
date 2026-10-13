package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ks1 {

    /* renamed from: a, reason: collision with root package name */
    private final ps1 f7746a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final pt1 f7747b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f7748c;

    public ks1(ps1 ps1Var) {
        this.f7746a = ps1Var;
        this.f7748c = ((Boolean) mu1.e().a(aw1.I2)).booleanValue();
        this.f7747b = new pt1();
        b();
    }

    public static ks1 a() {
        return new ks1();
    }

    private final synchronized void b(ms1 ms1Var) {
        this.f7747b.f8782d = c();
        xs1 a2 = this.f7746a.a(bd1.a(this.f7747b));
        a2.b(ms1Var.zzab());
        a2.a();
        String valueOf = String.valueOf(Integer.toString(ms1Var.zzab(), 10));
        na.e(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
    }

    private final synchronized void c(ms1 ms1Var) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
            try {
                try {
                    fileOutputStream.write(d(ms1Var).getBytes());
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                        na.e("Could not close Clearcut output stream.");
                    }
                } catch (IOException unused2) {
                    na.e("Could not write Clearcut to file.");
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                        na.e("Could not close Clearcut output stream.");
                    }
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                    na.e("Could not close Clearcut output stream.");
                }
                throw th;
            }
        } catch (FileNotFoundException unused5) {
            na.e("Could not find file for Clearcut");
        }
    }

    private final synchronized String d(ms1 ms1Var) {
        return String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.f7747b.f8781c, Long.valueOf(com.google.android.gms.ads.internal.n.j().c()), Integer.valueOf(ms1Var.zzab()), Base64.encodeToString(bd1.a(this.f7747b), 3));
    }

    public final synchronized void a(ms1 ms1Var) {
        if (this.f7748c) {
            if (((Boolean) mu1.e().a(aw1.J2)).booleanValue()) {
                c(ms1Var);
            } else {
                b(ms1Var);
            }
        }
    }

    private final synchronized void b() {
        this.f7747b.f8784f = new mt1();
        this.f7747b.f8784f.f8231d = new ot1();
        this.f7747b.f8783e = new nt1();
    }

    private ks1() {
        this.f7748c = false;
        this.f7746a = new ps1();
        this.f7747b = new pt1();
        b();
    }

    public final synchronized void a(js1 js1Var) {
        if (this.f7748c) {
            try {
                js1Var.a(this.f7747b);
            } catch (NullPointerException e2) {
                com.google.android.gms.ads.internal.n.g().a(e2, "AdMobClearcutLogger.modify");
            }
        }
    }

    private static long[] c() {
        int i2;
        List<String> b2 = aw1.b();
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = b2.iterator();
        while (true) {
            i2 = 0;
            if (!it.hasNext()) {
                break;
            }
            String[] split = it.next().split(",");
            int length = split.length;
            while (i2 < length) {
                try {
                    arrayList.add(Long.valueOf(split[i2]));
                } catch (NumberFormatException unused) {
                    na.e("Experiment ID is not a number");
                }
                i2++;
            }
        }
        long[] jArr = new long[arrayList.size()];
        int size = arrayList.size();
        int i3 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            jArr[i3] = ((Long) obj).longValue();
            i3++;
        }
        return jArr;
    }
}
