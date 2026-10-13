package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class f6 extends k6 {

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, String> f6567c;

    /* renamed from: d, reason: collision with root package name */
    private final Context f6568d;

    public f6(fi fiVar, Map<String, String> map) {
        super(fiVar, "storePicture");
        this.f6567c = map;
        this.f6568d = fiVar.zzxl();
    }

    public final void a() {
        if (this.f6568d == null) {
            a("Activity context is not available");
            return;
        }
        com.google.android.gms.ads.internal.n.c();
        if (!wa.e(this.f6568d).c()) {
            a("Feature is not supported by the device.");
            return;
        }
        String str = this.f6567c.get("iurl");
        if (TextUtils.isEmpty(str)) {
            a("Image url cannot be empty.");
            return;
        }
        if (!URLUtil.isValidUrl(str)) {
            String valueOf = String.valueOf(str);
            a(valueOf.length() != 0 ? "Invalid image url: ".concat(valueOf) : new String("Invalid image url: "));
            return;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        com.google.android.gms.ads.internal.n.c();
        if (!wa.d(lastPathSegment)) {
            String valueOf2 = String.valueOf(lastPathSegment);
            a(valueOf2.length() != 0 ? "Image type not recognized: ".concat(valueOf2) : new String("Image type not recognized: "));
            return;
        }
        Resources b2 = com.google.android.gms.ads.internal.n.g().b();
        com.google.android.gms.ads.internal.n.c();
        AlertDialog.Builder d2 = wa.d(this.f6568d);
        d2.setTitle(b2 != null ? b2.getString(com.google.android.gms.ads.m.a.s1) : "Save image");
        d2.setMessage(b2 != null ? b2.getString(com.google.android.gms.ads.m.a.s2) : "Allow Ad to store image in Picture gallery?");
        d2.setPositiveButton(b2 != null ? b2.getString(com.google.android.gms.ads.m.a.s3) : "Accept", new e6(this, str, lastPathSegment));
        d2.setNegativeButton(b2 != null ? b2.getString(com.google.android.gms.ads.m.a.s4) : "Decline", new h6(this));
        d2.create().show();
    }
}
