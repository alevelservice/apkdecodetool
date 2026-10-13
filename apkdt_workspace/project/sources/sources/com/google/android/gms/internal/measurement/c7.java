package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import android.os.UserHandle;
import android.util.Log;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@TargetApi(24)
/* loaded from: classes.dex */
public final class c7 {

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private static final Method f11801b = a();

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private static final Method f11802c = b();

    /* renamed from: a, reason: collision with root package name */
    private final JobScheduler f11803a;

    private c7(JobScheduler jobScheduler) {
        this.f11803a = jobScheduler;
    }

    @Nullable
    private static Method a() {
        if (Build.VERSION.SDK_INT < 24) {
            return null;
        }
        try {
            return JobScheduler.class.getDeclaredMethod("scheduleAsPackage", JobInfo.class, String.class, Integer.TYPE, String.class);
        } catch (NoSuchMethodException unused) {
            Log.isLoggable("JobSchedulerCompat", 6);
            return null;
        }
    }

    @Nullable
    private static Method b() {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                return UserHandle.class.getDeclaredMethod("myUserId", null);
            } catch (NoSuchMethodException unused) {
                Log.isLoggable("JobSchedulerCompat", 6);
            }
        }
        return null;
    }

    private static int c() {
        Method method = f11802c;
        if (method != null) {
            try {
                return ((Integer) method.invoke(null, new Object[0])).intValue();
            } catch (IllegalAccessException | InvocationTargetException unused) {
                Log.isLoggable("JobSchedulerCompat", 6);
            }
        }
        return 0;
    }

    private final int a(JobInfo jobInfo, String str, int i2, String str2) {
        Method method = f11801b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.f11803a, jobInfo, str, Integer.valueOf(i2), str2)).intValue();
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return this.f11803a.schedule(jobInfo);
    }

    public static int a(Context context, JobInfo jobInfo, String str, String str2) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (f11801b != null && context.checkSelfPermission("android.permission.UPDATE_DEVICE_STATS") == 0) {
            return new c7(jobScheduler).a(jobInfo, str, c(), str2);
        }
        return jobScheduler.schedule(jobInfo);
    }
}
