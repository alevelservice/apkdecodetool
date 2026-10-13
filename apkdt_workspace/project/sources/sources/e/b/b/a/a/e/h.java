package e.b.b.a.a.e;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Base64;
import java.util.UUID;

/* compiled from: HybridEncryption.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: g, reason: collision with root package name */
    private static h f17056g;

    /* renamed from: a, reason: collision with root package name */
    private String f17057a;

    /* renamed from: b, reason: collision with root package name */
    private byte[] f17058b;

    /* renamed from: c, reason: collision with root package name */
    private byte[] f17059c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f17060d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f17061e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f17062f;

    static {
        String str = a.class.getName() + m.class.getName() + Base64.class.getName() + j.class.getName() + k.class.getName();
    }

    private h(Context context) {
        this.f17057a = b(context);
    }

    public static synchronized h a(Context context) {
        h hVar;
        synchronized (h.class) {
            if (f17056g == null) {
                f17056g = new h(context);
            }
            hVar = f17056g;
        }
        return hVar;
    }

    public static h b() {
        h hVar = f17056g;
        if (hVar != null) {
            return hVar;
        }
        throw new IllegalStateException("need createInstance befor use");
    }

    private String b(Context context) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (Throwable unused) {
            applicationInfo = null;
        }
        if (applicationInfo == null || applicationInfo.metaData == null) {
            return null;
        }
        return applicationInfo.metaData.getString("setting.logging.encryption.pubkey");
    }

    public byte[] a() {
        return this.f17059c;
    }

    public byte[] a(byte[] bArr, int i2, int i3) {
        byte[] bArr2;
        if (this.f17058b == null || this.f17059c == null) {
            try {
                bArr2 = UUID.randomUUID().toString().getBytes();
            } catch (Throwable unused) {
                if (!this.f17060d) {
                    this.f17060d = true;
                }
                bArr2 = null;
            }
            if (bArr2 == null) {
                try {
                    bArr2 = String.valueOf(System.currentTimeMillis()).getBytes();
                } catch (Throwable unused2) {
                    if (!this.f17061e) {
                        this.f17061e = true;
                    }
                }
            }
            this.f17058b = a.a(bArr2);
            this.f17059c = m.a(this.f17058b, this.f17057a);
        }
        byte[] bArr3 = this.f17058b;
        if (bArr3 != null && this.f17059c != null) {
            try {
                return a.a(bArr3, bArr, i2, i3);
            } catch (Throwable unused3) {
                if (!this.f17062f) {
                    this.f17062f = true;
                }
            }
        }
        return null;
    }
}
