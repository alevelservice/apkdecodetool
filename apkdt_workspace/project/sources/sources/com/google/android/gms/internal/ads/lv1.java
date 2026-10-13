package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lv1 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f7985a;

    public lv1(Context context) {
        com.google.android.gms.common.internal.m.a(context, "Context can not be null");
        this.f7985a = context;
    }

    public final boolean a() {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return a(intent);
    }

    public final boolean b() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return a(intent);
    }

    public final boolean c() {
        return ((Boolean) xc.a(this.f7985a, new kv1())).booleanValue() && com.google.android.gms.common.o.c.a(this.f7985a).a("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    @TargetApi(14)
    public final boolean d() {
        return a(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }

    private final boolean a(Intent intent) {
        com.google.android.gms.common.internal.m.a(intent, "Intent can not be null");
        return !this.f7985a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }
}
