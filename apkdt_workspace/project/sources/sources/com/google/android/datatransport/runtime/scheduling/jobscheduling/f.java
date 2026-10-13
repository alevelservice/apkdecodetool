package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;

/* compiled from: JobInfoSchedulerService.java */
/* loaded from: classes.dex */
final /* synthetic */ class f implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final JobInfoSchedulerService f4407e;

    /* renamed from: f, reason: collision with root package name */
    private final JobParameters f4408f;

    private f(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.f4407e = jobInfoSchedulerService;
        this.f4408f = jobParameters;
    }

    public static Runnable a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new f(jobInfoSchedulerService, jobParameters);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4407e.jobFinished(this.f4408f, false);
    }
}
