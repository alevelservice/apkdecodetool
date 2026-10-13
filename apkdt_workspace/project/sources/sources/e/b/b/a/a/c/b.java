package e.b.b.a.a.c;

import android.app.Application;
import androidx.annotation.NonNull;
import com.alipay.iap.android.aplog.core.filter.e;
import e.b.b.a.a.d.i;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: APLogConfigFacade.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    private static boolean f16950b = true;

    /* renamed from: c, reason: collision with root package name */
    private static a f16951c;

    /* renamed from: d, reason: collision with root package name */
    private static b f16952d;

    /* renamed from: a, reason: collision with root package name */
    private List<String[]> f16953a = new ArrayList();

    static {
        TimeUnit.MINUTES.toMillis(30L);
        f16952d = new b();
    }

    private void d() {
        i.a().a(new c(this));
    }

    private void e() {
        e.b.b.a.b.c.a.b.a().a(new d(this));
    }

    public static b a() {
        return f16952d;
    }

    public void a(Application application) {
        e();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(@NonNull e eVar) {
        for (String[] strArr : this.f16953a) {
            if (strArr[0].equals(eVar.f3317b)) {
                String[] split = eVar.f3316a.split("\\,");
                int parseInt = Integer.parseInt(strArr[1]);
                if (split.length > parseInt && strArr[2].equals(split[parseInt])) {
                    return true;
                }
            }
        }
        return false;
    }
}
