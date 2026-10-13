package com.zoloz.webcontainer.l;

import android.content.Context;
import android.net.Uri;
import java.util.concurrent.CountDownLatch;

/* compiled from: H5OfflineManager.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private String f16729a;

    /* renamed from: c, reason: collision with root package name */
    private String f16731c;

    /* renamed from: f, reason: collision with root package name */
    private int f16734f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f16735g;

    /* renamed from: h, reason: collision with root package name */
    private String f16736h;

    /* renamed from: b, reason: collision with root package name */
    private String f16730b = "/config/ekyc_web";

    /* renamed from: d, reason: collision with root package name */
    private boolean f16732d = true;

    /* renamed from: e, reason: collision with root package name */
    CountDownLatch f16733e = new CountDownLatch(1);

    private String b(String str) {
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        com.zoloz.webcontainer.b.a("H5OfflineManager", "fileName");
        return lastPathSegment;
    }

    public void a(Context context) {
        if (context == null) {
            this.f16733e.countDown();
            return;
        }
        if (!this.f16732d) {
            com.zoloz.webcontainer.b.c("H5OfflineManager", "isConfigOK is false from ekyc init config");
            this.f16733e.countDown();
        } else {
            if (this.f16735g) {
                return;
            }
            this.f16733e = new CountDownLatch(1);
            new Thread(new b(this, context)).start();
        }
    }

    public void b() {
        this.f16735g = false;
    }

    public String a(String str) {
        if (str == null) {
            return "";
        }
        if (a()) {
            String b2 = b(str);
            String str2 = this.f16729a + "/" + b2;
            if (com.zoloz.webcontainer.p.a.b(str2)) {
                return str2 + str.substring(str.lastIndexOf(b2) + b2.length());
            }
            com.zoloz.webcontainer.b.b("H5OfflineManager", "error local zip don't exist this page " + str2);
            return "";
        }
        com.zoloz.webcontainer.b.a("H5OfflineManager", "don't run offline");
        return "";
    }

    public boolean a() {
        return this.f16732d;
    }

    public void a(int i2) {
        this.f16734f = i2;
    }
}
