package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;

/* compiled from: AlarmManagerScheduler.java */
/* loaded from: classes.dex */
public class a implements s {

    /* renamed from: a, reason: collision with root package name */
    private final Context f4390a;

    /* renamed from: b, reason: collision with root package name */
    private final e.i.b.a.i.w.j.c f4391b;

    /* renamed from: c, reason: collision with root package name */
    private AlarmManager f4392c;

    /* renamed from: d, reason: collision with root package name */
    private final g f4393d;

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f4394e;

    public a(Context context, e.i.b.a.i.w.j.c cVar, com.google.android.datatransport.runtime.time.a aVar, g gVar) {
        this(context, cVar, (AlarmManager) context.getSystemService("alarm"), aVar, gVar);
    }

    @VisibleForTesting
    boolean a(Intent intent) {
        return PendingIntent.getBroadcast(this.f4390a, 0, intent, 536870912) != null;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.s
    public void a(e.i.b.a.i.m mVar, int i2) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", mVar.a());
        builder.appendQueryParameter("priority", String.valueOf(e.i.b.a.i.y.a.a(mVar.c())));
        if (mVar.b() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(mVar.b(), 0));
        }
        Intent intent = new Intent(this.f4390a, (Class<?>) AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i2);
        if (a(intent)) {
            e.i.b.a.i.u.a.a("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", mVar);
            return;
        }
        long b2 = this.f4391b.b(mVar);
        long a2 = this.f4393d.a(mVar.c(), b2, i2);
        e.i.b.a.i.u.a.a("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", mVar, Long.valueOf(a2), Long.valueOf(b2), Integer.valueOf(i2));
        this.f4392c.set(3, this.f4394e.a() + a2, PendingIntent.getBroadcast(this.f4390a, 0, intent, 0));
    }

    @VisibleForTesting
    a(Context context, e.i.b.a.i.w.j.c cVar, AlarmManager alarmManager, com.google.android.datatransport.runtime.time.a aVar, g gVar) {
        this.f4390a = context;
        this.f4391b = cVar;
        this.f4392c = alarmManager;
        this.f4394e = aVar;
        this.f4393d = gVar;
    }
}
