package e.b.b.a.a.d.h;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import com.alipay.iap.android.aplog.core.filter.ConfigChangeBroadCastReceiver;
import e.b.b.a.a.d.i;
import java.io.File;
import java.util.Comparator;

/* compiled from: UploadManager.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: d, reason: collision with root package name */
    public static final Comparator<File> f17028d = new g();

    /* renamed from: e, reason: collision with root package name */
    public static int f17029e = 10485760;

    /* renamed from: f, reason: collision with root package name */
    private static f f17030f;

    /* renamed from: a, reason: collision with root package name */
    private Context f17031a;

    /* renamed from: b, reason: collision with root package name */
    private File f17032b;

    /* renamed from: c, reason: collision with root package name */
    private ConfigChangeBroadCastReceiver f17033c;

    private f(Context context) {
        this.f17031a = context;
        this.f17032b = new File(context.getFilesDir().getAbsolutePath() + "/mdap/upload/");
        if (!this.f17032b.exists()) {
            this.f17032b.mkdirs();
        }
        c();
    }

    public static f a(Context context) {
        if (f17030f == null) {
            f17030f = new f(context);
        }
        return f17030f;
    }

    public static f b() {
        return f17030f;
    }

    private void c() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.alipay.mobile.client.multi.CONFIG_CHANGE");
        this.f17033c = new ConfigChangeBroadCastReceiver();
        Context context = this.f17031a;
        if (context != null) {
            context.registerReceiver(this.f17033c, intentFilter);
        }
    }

    public void a(int i2) {
        f17029e = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x008e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x008f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a() {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.b.a.a.d.h.f.a():void");
    }

    public synchronized void a(String str, String str2, Bundle bundle) {
        if (i.a().t() != null) {
            i.a().t().a(str, str2, bundle);
        } else {
            i.c().c("UploadManager", "http upload logCategory = " + str + " uploadFileDir: " + this.f17032b);
            new b(this.f17032b, this.f17031a).a(str, str2, bundle);
        }
    }
}
