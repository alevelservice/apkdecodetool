package com.google.firebase.crashlytics.d.m;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.d.h.u;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ReportUploader.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: h, reason: collision with root package name */
    private static final short[] f14652h = {10, 20, 30, 60, 120, 300};

    /* renamed from: a, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.m.d.b f14653a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final String f14654b;

    /* renamed from: c, reason: collision with root package name */
    private final String f14655c;

    /* renamed from: d, reason: collision with root package name */
    private final u f14656d;

    /* renamed from: e, reason: collision with root package name */
    private final com.google.firebase.crashlytics.d.m.a f14657e;

    /* renamed from: f, reason: collision with root package name */
    private final a f14658f;

    /* renamed from: g, reason: collision with root package name */
    private Thread f14659g;

    /* compiled from: ReportUploader.java */
    /* loaded from: classes.dex */
    public interface a {
        boolean a();
    }

    /* compiled from: ReportUploader.java */
    /* renamed from: com.google.firebase.crashlytics.d.m.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0118b {
        b a(@NonNull com.google.firebase.crashlytics.d.o.i.b bVar);
    }

    /* compiled from: ReportUploader.java */
    /* loaded from: classes.dex */
    public interface c {
        File[] a();

        File[] b();
    }

    public b(@Nullable String str, String str2, u uVar, com.google.firebase.crashlytics.d.m.a aVar, com.google.firebase.crashlytics.d.m.d.b bVar, a aVar2) {
        if (bVar != null) {
            this.f14653a = bVar;
            this.f14654b = str;
            this.f14655c = str2;
            this.f14656d = uVar;
            this.f14657e = aVar;
            this.f14658f = aVar2;
            return;
        }
        throw new IllegalArgumentException("createReportCall must not be null.");
    }

    /* compiled from: ReportUploader.java */
    /* loaded from: classes.dex */
    private class d extends com.google.firebase.crashlytics.d.h.d {

        /* renamed from: e, reason: collision with root package name */
        private final List<com.google.firebase.crashlytics.d.m.c.c> f14660e;

        /* renamed from: f, reason: collision with root package name */
        private final boolean f14661f;

        /* renamed from: g, reason: collision with root package name */
        private final float f14662g;

        d(List<com.google.firebase.crashlytics.d.m.c.c> list, boolean z, float f2) {
            this.f14660e = list;
            this.f14661f = z;
            this.f14662g = f2;
        }

        @Override // com.google.firebase.crashlytics.d.h.d
        public void a() {
            try {
                a(this.f14660e, this.f14661f);
            } catch (Exception e2) {
                com.google.firebase.crashlytics.d.b.a().b("An unexpected error occurred while attempting to upload crash reports.", e2);
            }
            b.this.f14659g = null;
        }

        private void a(List<com.google.firebase.crashlytics.d.m.c.c> list, boolean z) {
            com.google.firebase.crashlytics.d.b.a().a("Starting report processing in " + this.f14662g + " second(s)...");
            if (this.f14662g > 0.0f) {
                try {
                    Thread.sleep(r0 * 1000.0f);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            if (b.this.f14658f.a()) {
                return;
            }
            int i2 = 0;
            while (list.size() > 0 && !b.this.f14658f.a()) {
                com.google.firebase.crashlytics.d.b.a().a("Attempting to send " + list.size() + " report(s)");
                ArrayList arrayList = new ArrayList();
                for (com.google.firebase.crashlytics.d.m.c.c cVar : list) {
                    if (!b.this.a(cVar, z)) {
                        arrayList.add(cVar);
                    }
                }
                if (arrayList.size() > 0) {
                    int i3 = i2 + 1;
                    long j2 = b.f14652h[Math.min(i2, b.f14652h.length - 1)];
                    com.google.firebase.crashlytics.d.b.a().a("Report submission: scheduling delayed retry in " + j2 + " seconds");
                    try {
                        Thread.sleep(j2 * 1000);
                        i2 = i3;
                    } catch (InterruptedException unused2) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                }
                list = arrayList;
            }
        }
    }

    public synchronized void a(List<com.google.firebase.crashlytics.d.m.c.c> list, boolean z, float f2) {
        if (this.f14659g != null) {
            com.google.firebase.crashlytics.d.b.a().a("Report upload has already been started.");
        } else {
            this.f14659g = new Thread(new d(list, z, f2), "Crashlytics Report Uploader");
            this.f14659g.start();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0060 A[Catch: Exception -> 0x0067, TRY_LEAVE, TryCatch #0 {Exception -> 0x0067, blocks: (B:3:0x0001, B:6:0x0013, B:9:0x0060, B:14:0x001b, B:16:0x0021, B:18:0x0029, B:19:0x0032, B:22:0x004d), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(com.google.firebase.crashlytics.d.m.c.c r7, boolean r8) {
        /*
            r6 = this;
            r0 = 0
            com.google.firebase.crashlytics.d.m.c.a r1 = new com.google.firebase.crashlytics.d.m.c.a     // Catch: java.lang.Exception -> L67
            java.lang.String r2 = r6.f14654b     // Catch: java.lang.Exception -> L67
            java.lang.String r3 = r6.f14655c     // Catch: java.lang.Exception -> L67
            r1.<init>(r2, r3, r7)     // Catch: java.lang.Exception -> L67
            com.google.firebase.crashlytics.d.h.u r2 = r6.f14656d     // Catch: java.lang.Exception -> L67
            com.google.firebase.crashlytics.d.h.u r3 = com.google.firebase.crashlytics.d.h.u.ALL     // Catch: java.lang.Exception -> L67
            java.lang.String r4 = "Report configured to be sent via DataTransport."
            r5 = 1
            if (r2 != r3) goto L1b
            com.google.firebase.crashlytics.d.b r8 = com.google.firebase.crashlytics.d.b.a()     // Catch: java.lang.Exception -> L67
            r8.a(r4)     // Catch: java.lang.Exception -> L67
            goto L30
        L1b:
            com.google.firebase.crashlytics.d.h.u r2 = r6.f14656d     // Catch: java.lang.Exception -> L67
            com.google.firebase.crashlytics.d.h.u r3 = com.google.firebase.crashlytics.d.h.u.JAVA_ONLY     // Catch: java.lang.Exception -> L67
            if (r2 != r3) goto L32
            com.google.firebase.crashlytics.d.m.c.c$a r2 = r7.getType()     // Catch: java.lang.Exception -> L67
            com.google.firebase.crashlytics.d.m.c.c$a r3 = com.google.firebase.crashlytics.d.m.c.c.a.JAVA     // Catch: java.lang.Exception -> L67
            if (r2 != r3) goto L32
            com.google.firebase.crashlytics.d.b r8 = com.google.firebase.crashlytics.d.b.a()     // Catch: java.lang.Exception -> L67
            r8.a(r4)     // Catch: java.lang.Exception -> L67
        L30:
            r8 = 1
            goto L5e
        L32:
            com.google.firebase.crashlytics.d.m.d.b r2 = r6.f14653a     // Catch: java.lang.Exception -> L67
            boolean r8 = r2.a(r1, r8)     // Catch: java.lang.Exception -> L67
            com.google.firebase.crashlytics.d.b r1 = com.google.firebase.crashlytics.d.b.a()     // Catch: java.lang.Exception -> L67
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L67
            r2.<init>()     // Catch: java.lang.Exception -> L67
            java.lang.String r3 = "Crashlytics Reports Endpoint upload "
            r2.append(r3)     // Catch: java.lang.Exception -> L67
            if (r8 == 0) goto L4b
            java.lang.String r3 = "complete: "
            goto L4d
        L4b:
            java.lang.String r3 = "FAILED: "
        L4d:
            r2.append(r3)     // Catch: java.lang.Exception -> L67
            java.lang.String r3 = r7.a()     // Catch: java.lang.Exception -> L67
            r2.append(r3)     // Catch: java.lang.Exception -> L67
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L67
            r1.c(r2)     // Catch: java.lang.Exception -> L67
        L5e:
            if (r8 == 0) goto L80
            com.google.firebase.crashlytics.d.m.a r8 = r6.f14657e     // Catch: java.lang.Exception -> L67
            r8.a(r7)     // Catch: java.lang.Exception -> L67
            r0 = 1
            goto L80
        L67:
            r8 = move-exception
            com.google.firebase.crashlytics.d.b r1 = com.google.firebase.crashlytics.d.b.a()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error occurred sending report "
            r2.append(r3)
            r2.append(r7)
            java.lang.String r7 = r2.toString()
            r1.b(r7, r8)
        L80:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.d.m.b.a(com.google.firebase.crashlytics.d.m.c.c, boolean):boolean");
    }
}
