package e.b.b.a.a.d.h;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import e.b.b.a.a.d.i;

/* compiled from: UploadConstants.java */
/* loaded from: classes.dex */
public class e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        ApplicationInfo applicationInfo;
        try {
            Context a2 = i.a().a();
            applicationInfo = a2.getPackageManager().getApplicationInfo(a2.getPackageName(), 128);
        } catch (Throwable unused) {
            applicationInfo = null;
        }
        if (applicationInfo == null || applicationInfo.metaData == null) {
            return null;
        }
        return applicationInfo.metaData.getString("APPID");
    }
}
