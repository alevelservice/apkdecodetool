package e.b.b.a.a.d.a;

import android.os.Bundle;
import android.text.TextUtils;
import java.io.File;

/* compiled from: MdapFileLogAppender.java */
/* loaded from: classes.dex */
public class j extends a {
    protected static final String n = "mdap" + File.separatorChar + "upload";

    /* renamed from: i, reason: collision with root package name */
    protected File f16977i;

    /* renamed from: j, reason: collision with root package name */
    protected int f16978j;

    /* renamed from: k, reason: collision with root package name */
    protected int f16979k;

    /* renamed from: l, reason: collision with root package name */
    protected boolean f16980l;
    protected StringBuffer m;

    public j(e.b.b.a.a.a.d dVar, String str) {
        super(dVar, str);
        this.f16980l = true;
        this.m = new StringBuffer();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.b.b.a.a.d.a.b
    public File a() {
        if (this.f16977i == null && e.b.b.a.a.e.j.b()) {
            File file = null;
            try {
                file = this.f16958c.getExternalFilesDir("mdap");
            } catch (Throwable unused) {
            }
            if (file != null) {
                try {
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    this.f16977i = new File(file, this.f16959d + "_" + this.f16957b);
                } catch (Throwable unused2) {
                }
            }
        }
        e.b.b.a.a.d.i.d().c("MdapFileAppender", "currentMdapFile debug: " + this.f16977i);
        if (this.f16977i == null) {
            File file2 = new File(this.f16958c.getFilesDir(), "mdap");
            try {
                if (!file2.exists()) {
                    file2.mkdirs();
                }
            } catch (Throwable unused3) {
            }
            this.f16977i = new File(file2, this.f16959d + "_" + this.f16957b);
        }
        e.b.b.a.a.d.i.d().c("MdapFileAppender", "currentMdapFile " + this.f16977i);
        return this.f16977i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.b.b.a.a.d.a.b
    public synchronized void b() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("needMove", true);
        a(bundle);
    }

    protected File c() {
        File file = new File(this.f16958c.getFilesDir(), n);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, e.b.b.a.a.e.j.a(a().getName()));
        e.b.b.a.a.d.i.d().c("MdapFileAppender", "file to upload: " + file2.getAbsolutePath());
        return file2;
    }

    private void b(Bundle bundle) {
        File a2;
        if (bundle == null || !bundle.getBoolean("needMove", false)) {
            return;
        }
        try {
            a2 = a();
        } catch (Throwable unused) {
        }
        if (a2.exists()) {
            e.b.b.a.a.e.g.a(a2, c());
            e.b.b.a.a.d.i.d().e("MdapFileAppender", this.f16957b + " appender flush move " + this.f16978j);
            this.f16978j = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // e.b.b.a.a.d.a.b
    public synchronized void b(String str) {
        e.b.b.a.a.d.i.d().c("MdapFileAppender", "write log: " + str);
        if (this.f16980l) {
            e.b.b.a.a.d.i.d().c("MdapFileAppender", " isFirstAppend ");
            this.f16980l = false;
            try {
                String a2 = e.b.b.a.a.e.g.a(a());
                if (!TextUtils.isEmpty(a2)) {
                    this.f16978j = a2.split("\\$\\$").length;
                }
            } catch (Throwable th) {
                String str2 = this.f16957b + " first append: [just check, not a real error] " + th;
            }
        }
        this.m.append(str);
        this.f16979k++;
        if (!e.b.b.a.a.d.i.b().a() || e.b.b.a.a.d.f.a.f17014f || this.f16979k >= 3 || e.b.b.a.a.e.j.b() || e.b.b.a.a.d.i.a().p().a(this.f16957b, this.f16979k)) {
            boolean b2 = com.alipay.iap.android.aplog.core.filter.g.b().b(this.f16957b);
            e.b.b.a.a.d.i.d().c("MdapFileAppender", "isEncrypt " + b2);
            a(this.m.toString(), b2);
            this.f16978j = this.f16978j + this.f16979k;
            this.m.setLength(0);
            this.f16979k = 0;
        }
        if (e.b.b.a.a.d.i.a().p().a(this.f16957b, this.f16978j)) {
            String str3 = "upload: " + this.f16957b;
            Bundle bundle = new Bundle();
            bundle.putString("event", "maxLogCount");
            a((String) null, bundle);
            this.f16978j = 0;
        }
    }

    protected synchronized void a(Bundle bundle) {
        if (this.f16979k > 0) {
            e.b.b.a.a.d.i.d().e("MdapFileAppender", this.f16957b + " appender flush: " + this.f16979k);
        }
        if (this.m.length() == 0) {
            b(bundle);
            return;
        }
        a(this.m.toString(), com.alipay.iap.android.aplog.core.filter.g.b().b(this.f16957b));
        this.m.setLength(0);
        this.f16978j += this.f16979k;
        this.f16979k = 0;
        b(bundle);
    }

    protected void a(String str, Bundle bundle) {
        try {
            if (this.f16978j == 0) {
                return;
            }
            try {
                e.b.b.a.a.d.i.d().c("MdapFileAppender", "move file form: " + a() + " to: " + c());
                e.b.b.a.a.e.g.a(a(), c());
            } catch (Throwable th) {
                e.b.b.a.a.d.i.d().a("MdapFileAppender", th.getMessage());
            }
            this.f16978j = 0;
            this.f16956a.a(this.f16957b, str, bundle);
        } catch (Throwable th2) {
            e.b.b.a.a.d.i.d().b("MdapFileAppender", this.f16957b, th2);
        }
    }
}
