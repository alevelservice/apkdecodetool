package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z5 extends k6 {

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, String> f10689c;

    /* renamed from: d, reason: collision with root package name */
    private final Context f10690d;

    /* renamed from: e, reason: collision with root package name */
    private String f10691e;

    /* renamed from: f, reason: collision with root package name */
    private long f10692f;

    /* renamed from: g, reason: collision with root package name */
    private long f10693g;

    /* renamed from: h, reason: collision with root package name */
    private String f10694h;

    /* renamed from: i, reason: collision with root package name */
    private String f10695i;

    public z5(fi fiVar, Map<String, String> map) {
        super(fiVar, "createCalendarEvent");
        this.f10689c = map;
        this.f10690d = fiVar.zzxl();
        this.f10691e = d("description");
        this.f10694h = d("summary");
        this.f10692f = e("start_ticks");
        this.f10693g = e("end_ticks");
        this.f10695i = d("location");
    }

    private final String d(String str) {
        return TextUtils.isEmpty(this.f10689c.get(str)) ? "" : this.f10689c.get(str);
    }

    private final long e(String str) {
        String str2 = this.f10689c.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(14)
    public final Intent a() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.f10691e);
        data.putExtra("eventLocation", this.f10695i);
        data.putExtra("description", this.f10694h);
        long j2 = this.f10692f;
        if (j2 > -1) {
            data.putExtra("beginTime", j2);
        }
        long j3 = this.f10693g;
        if (j3 > -1) {
            data.putExtra("endTime", j3);
        }
        data.setFlags(268435456);
        return data;
    }

    public final void b() {
        if (this.f10690d == null) {
            a("Activity context is not available.");
            return;
        }
        com.google.android.gms.ads.internal.n.c();
        if (!wa.e(this.f10690d).d()) {
            a("This feature is not available on the device.");
            return;
        }
        com.google.android.gms.ads.internal.n.c();
        AlertDialog.Builder d2 = wa.d(this.f10690d);
        Resources b2 = com.google.android.gms.ads.internal.n.g().b();
        d2.setTitle(b2 != null ? b2.getString(com.google.android.gms.ads.m.a.s5) : "Create calendar event");
        d2.setMessage(b2 != null ? b2.getString(com.google.android.gms.ads.m.a.s6) : "Allow Ad to create a calendar event?");
        d2.setPositiveButton(b2 != null ? b2.getString(com.google.android.gms.ads.m.a.s3) : "Accept", new y5(this));
        d2.setNegativeButton(b2 != null ? b2.getString(com.google.android.gms.ads.m.a.s4) : "Decline", new b6(this));
        d2.create().show();
    }
}
