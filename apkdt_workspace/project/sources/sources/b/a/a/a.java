package b.a.a;

import android.content.Context;
import com.android.installreferrer.api.InstallReferrerClient;
import g.a.c.a.k;

/* compiled from: AppInstallReferrerService.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private InstallReferrerClient f3095a;

    /* compiled from: AppInstallReferrerService.java */
    /* renamed from: b.a.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0054a implements com.android.installreferrer.api.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f3096a;

        C0054a(k.d dVar) {
            this.f3096a = dVar;
        }

        @Override // com.android.installreferrer.api.a
        public void a() {
        }

        @Override // com.android.installreferrer.api.a
        public void a(int i2) {
            if (i2 == 0) {
                try {
                    this.f3096a.a(a.this.a().d());
                    return;
                } catch (Exception e2) {
                    this.f3096a.a("", e2.getMessage(), null);
                    return;
                }
            }
            if (i2 == 1) {
                this.f3096a.a("", "SERVICE_UNAVAILABLE", null);
            } else {
                if (i2 != 2) {
                    return;
                }
                this.f3096a.a("", "FEATURE_NOT_SUPPORTED", null);
            }
        }
    }

    public void a(Context context, k.d dVar) {
        this.f3095a = InstallReferrerClient.a(context).a();
        this.f3095a.a(new C0054a(dVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public d a() {
        com.android.installreferrer.api.b b2 = this.f3095a.b();
        String b3 = b2.b();
        long c2 = b2.c();
        long a2 = b2.a();
        this.f3095a.a();
        return new d(b3, Long.valueOf(c2), Long.valueOf(a2));
    }
}
