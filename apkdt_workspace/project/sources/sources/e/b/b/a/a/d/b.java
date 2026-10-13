package e.b.b.a.a.d;

import android.content.Context;
import android.content.pm.PackageInfo;

/* compiled from: ContextInfo.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private Context f16981a;

    /* renamed from: b, reason: collision with root package name */
    private String f16982b;

    public b(Context context) {
        this.f16981a = context;
        b();
    }

    private void b() {
        if (this.f16982b == null) {
            PackageInfo packageInfo = null;
            try {
                if (this.f16981a != null) {
                    packageInfo = this.f16981a.getPackageManager().getPackageInfo(this.f16981a.getPackageName(), 0);
                }
            } catch (Throwable unused) {
            }
            if (packageInfo != null) {
                this.f16982b = packageInfo.versionName;
            }
        }
    }

    public String a() {
        return this.f16982b;
    }
}
