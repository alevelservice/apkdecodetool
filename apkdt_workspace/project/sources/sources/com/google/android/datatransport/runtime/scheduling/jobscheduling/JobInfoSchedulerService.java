package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import e.i.b.a.i.m;

@RequiresApi(api = 21)
/* loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i2 = jobParameters.getExtras().getInt("priority");
        int i3 = jobParameters.getExtras().getInt("attemptNumber");
        e.i.b.a.i.r.a(getApplicationContext());
        m.a d2 = e.i.b.a.i.m.d();
        d2.a(string);
        d2.a(e.i.b.a.i.y.a.a(i2));
        if (string2 != null) {
            d2.a(Base64.decode(string2, 0));
        }
        e.i.b.a.i.r.b().a().a(d2.a(), i3, f.a(this, jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
