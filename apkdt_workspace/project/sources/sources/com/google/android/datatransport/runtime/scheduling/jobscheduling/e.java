package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;

/* compiled from: JobInfoScheduler.java */
@RequiresApi(api = 21)
/* loaded from: classes.dex */
public class e implements s {

    /* renamed from: a, reason: collision with root package name */
    private final Context f4404a;

    /* renamed from: b, reason: collision with root package name */
    private final e.i.b.a.i.w.j.c f4405b;

    /* renamed from: c, reason: collision with root package name */
    private final g f4406c;

    public e(Context context, e.i.b.a.i.w.j.c cVar, g gVar) {
        this.f4404a = context;
        this.f4405b = cVar;
        this.f4406c = gVar;
    }

    @VisibleForTesting
    int a(e.i.b.a.i.m mVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f4404a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(mVar.a().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(e.i.b.a.i.y.a.a(mVar.c())).array());
        if (mVar.b() != null) {
            adler32.update(mVar.b());
        }
        return (int) adler32.getValue();
    }

    private boolean a(JobScheduler jobScheduler, int i2, int i3) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i4 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i2) {
                return i4 >= i3;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.s
    public void a(e.i.b.a.i.m mVar, int i2) {
        ComponentName componentName = new ComponentName(this.f4404a, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f4404a.getSystemService("jobscheduler");
        int a2 = a(mVar);
        if (a(jobScheduler, a2, i2)) {
            e.i.b.a.i.u.a.a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", mVar);
            return;
        }
        long b2 = this.f4405b.b(mVar);
        g gVar = this.f4406c;
        JobInfo.Builder builder = new JobInfo.Builder(a2, componentName);
        gVar.a(builder, mVar.c(), b2, i2);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i2);
        persistableBundle.putString("backendName", mVar.a());
        persistableBundle.putInt("priority", e.i.b.a.i.y.a.a(mVar.c()));
        if (mVar.b() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(mVar.b(), 0));
        }
        builder.setExtras(persistableBundle);
        e.i.b.a.i.u.a.a("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", mVar, Integer.valueOf(a2), Long.valueOf(this.f4406c.a(mVar.c(), b2, i2)), Long.valueOf(b2), Integer.valueOf(i2));
        jobScheduler.schedule(builder.build());
    }
}
