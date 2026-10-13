package com.mapbox.android.telemetry;

import android.app.AlarmManager;
import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SchedulerFlusherFactory.java */
/* loaded from: classes2.dex */
public class a0 {

    /* renamed from: c, reason: collision with root package name */
    static long f15550c = 180000;

    /* renamed from: a, reason: collision with root package name */
    private final Context f15551a;

    /* renamed from: b, reason: collision with root package name */
    private final a f15552b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(Context context, a aVar) {
        this.f15551a = context;
        this.f15552b = aVar;
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z a() {
        Context context = this.f15551a;
        return new b(context, (AlarmManager) context.getSystemService("alarm"), this.f15552b);
    }

    private void a(Context context) {
        if (l0.a(context)) {
            f15550c = 600000L;
        }
    }
}
