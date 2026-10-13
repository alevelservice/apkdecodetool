package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class JobIntentService extends Service {
    static final boolean DEBUG = false;
    static final String TAG = "JobIntentService";
    final ArrayList<d> mCompatQueue;
    h mCompatWorkEnqueuer;
    a mCurProcessor;
    b mJobImpl;
    static final Object sLock = new Object();
    static final HashMap<ComponentName, h> sClassWorkEnqueuer = new HashMap<>();
    boolean mInterruptIfStopped = false;
    boolean mStopped = false;
    boolean mDestroyed = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b {
        IBinder a();

        e b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class d implements e {

        /* renamed from: a, reason: collision with root package name */
        final Intent f1646a;

        /* renamed from: b, reason: collision with root package name */
        final int f1647b;

        d(Intent intent, int i2) {
            this.f1646a = intent;
            this.f1647b = i2;
        }

        @Override // androidx.core.app.JobIntentService.e
        public void a() {
            JobIntentService.this.stopSelf(this.f1647b);
        }

        @Override // androidx.core.app.JobIntentService.e
        public Intent getIntent() {
            return this.f1646a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface e {
        void a();

        Intent getIntent();
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    static final class f extends JobServiceEngine implements b {

        /* renamed from: a, reason: collision with root package name */
        final JobIntentService f1649a;

        /* renamed from: b, reason: collision with root package name */
        final Object f1650b;

        /* renamed from: c, reason: collision with root package name */
        JobParameters f1651c;

        /* loaded from: classes.dex */
        final class a implements e {

            /* renamed from: a, reason: collision with root package name */
            final JobWorkItem f1652a;

            a(JobWorkItem jobWorkItem) {
                this.f1652a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.e
            public void a() {
                synchronized (f.this.f1650b) {
                    if (f.this.f1651c != null) {
                        f.this.f1651c.completeWork(this.f1652a);
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.e
            public Intent getIntent() {
                return this.f1652a.getIntent();
            }
        }

        f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f1650b = new Object();
            this.f1649a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.b
        public IBinder a() {
            return getBinder();
        }

        @Override // androidx.core.app.JobIntentService.b
        public e b() {
            synchronized (this.f1650b) {
                if (this.f1651c == null) {
                    return null;
                }
                JobWorkItem dequeueWork = this.f1651c.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                dequeueWork.getIntent().setExtrasClassLoader(this.f1649a.getClassLoader());
                return new a(dequeueWork);
            }
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f1651c = jobParameters;
            this.f1649a.ensureProcessorRunningLocked(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean doStopCurrentWork = this.f1649a.doStopCurrentWork();
            synchronized (this.f1650b) {
                this.f1651c = null;
            }
            return doStopCurrentWork;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static final class g extends h {

        /* renamed from: d, reason: collision with root package name */
        private final JobInfo f1654d;

        /* renamed from: e, reason: collision with root package name */
        private final JobScheduler f1655e;

        g(Context context, ComponentName componentName, int i2) {
            super(componentName);
            a(i2);
            this.f1654d = new JobInfo.Builder(i2, this.f1656a).setOverrideDeadline(0L).build();
            this.f1655e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // androidx.core.app.JobIntentService.h
        void a(Intent intent) {
            this.f1655e.enqueue(this.f1654d, new JobWorkItem(intent));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class h {

        /* renamed from: a, reason: collision with root package name */
        final ComponentName f1656a;

        /* renamed from: b, reason: collision with root package name */
        boolean f1657b;

        /* renamed from: c, reason: collision with root package name */
        int f1658c;

        h(ComponentName componentName) {
            this.f1656a = componentName;
        }

        public void a() {
        }

        void a(int i2) {
            if (!this.f1657b) {
                this.f1657b = true;
                this.f1658c = i2;
            } else {
                if (this.f1658c == i2) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i2 + " is different than previous " + this.f1658c);
            }
        }

        abstract void a(Intent intent);

        public void b() {
        }

        public void c() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mCompatQueue = null;
        } else {
            this.mCompatQueue = new ArrayList<>();
        }
    }

    public static void enqueueWork(@NonNull Context context, @NonNull Class<?> cls, int i2, @NonNull Intent intent) {
        enqueueWork(context, new ComponentName(context, cls), i2, intent);
    }

    static h getWorkEnqueuer(Context context, ComponentName componentName, boolean z, int i2) {
        h cVar;
        h hVar = sClassWorkEnqueuer.get(componentName);
        if (hVar != null) {
            return hVar;
        }
        if (Build.VERSION.SDK_INT < 26) {
            cVar = new c(context, componentName);
        } else if (z) {
            cVar = new g(context, componentName, i2);
        } else {
            throw new IllegalArgumentException("Can't be here without a job id");
        }
        h hVar2 = cVar;
        sClassWorkEnqueuer.put(componentName, hVar2);
        return hVar2;
    }

    e dequeueWork() {
        b bVar = this.mJobImpl;
        if (bVar != null) {
            return bVar.b();
        }
        synchronized (this.mCompatQueue) {
            if (this.mCompatQueue.size() <= 0) {
                return null;
            }
            return this.mCompatQueue.remove(0);
        }
    }

    boolean doStopCurrentWork() {
        a aVar = this.mCurProcessor;
        if (aVar != null) {
            aVar.cancel(this.mInterruptIfStopped);
        }
        this.mStopped = true;
        return onStopCurrentWork();
    }

    void ensureProcessorRunningLocked(boolean z) {
        if (this.mCurProcessor == null) {
            this.mCurProcessor = new a();
            h hVar = this.mCompatWorkEnqueuer;
            if (hVar != null && z) {
                hVar.b();
            }
            this.mCurProcessor.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public boolean isStopped() {
        return this.mStopped;
    }

    @Override // android.app.Service
    public IBinder onBind(@NonNull Intent intent) {
        b bVar = this.mJobImpl;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.mJobImpl = new f(this);
            this.mCompatWorkEnqueuer = null;
        } else {
            this.mJobImpl = null;
            this.mCompatWorkEnqueuer = getWorkEnqueuer(this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<d> arrayList = this.mCompatQueue;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.mDestroyed = true;
                this.mCompatWorkEnqueuer.a();
            }
        }
    }

    protected abstract void onHandleWork(@NonNull Intent intent);

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i2, int i3) {
        if (this.mCompatQueue == null) {
            return 2;
        }
        this.mCompatWorkEnqueuer.c();
        synchronized (this.mCompatQueue) {
            ArrayList<d> arrayList = this.mCompatQueue;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i3));
            ensureProcessorRunningLocked(true);
        }
        return 3;
    }

    public boolean onStopCurrentWork() {
        return true;
    }

    void processorFinished() {
        ArrayList<d> arrayList = this.mCompatQueue;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.mCurProcessor = null;
                if (this.mCompatQueue != null && this.mCompatQueue.size() > 0) {
                    ensureProcessorRunningLocked(false);
                } else if (!this.mDestroyed) {
                    this.mCompatWorkEnqueuer.a();
                }
            }
        }
    }

    public void setInterruptIfStopped(boolean z) {
        this.mInterruptIfStopped = z;
    }

    public static void enqueueWork(@NonNull Context context, @NonNull ComponentName componentName, int i2, @NonNull Intent intent) {
        if (intent != null) {
            synchronized (sLock) {
                h workEnqueuer = getWorkEnqueuer(context, componentName, true, i2);
                workEnqueuer.a(i2);
                workEnqueuer.a(intent);
            }
            return;
        }
        throw new IllegalArgumentException("work must not be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class a extends AsyncTask<Void, Void, Void> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                e dequeueWork = JobIntentService.this.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                JobIntentService.this.onHandleWork(dequeueWork.getIntent());
                dequeueWork.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r1) {
            JobIntentService.this.processorFinished();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r1) {
            JobIntentService.this.processorFinished();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends h {

        /* renamed from: d, reason: collision with root package name */
        private final Context f1641d;

        /* renamed from: e, reason: collision with root package name */
        private final PowerManager.WakeLock f1642e;

        /* renamed from: f, reason: collision with root package name */
        private final PowerManager.WakeLock f1643f;

        /* renamed from: g, reason: collision with root package name */
        boolean f1644g;

        /* renamed from: h, reason: collision with root package name */
        boolean f1645h;

        c(Context context, ComponentName componentName) {
            super(componentName);
            this.f1641d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            this.f1642e = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f1642e.setReferenceCounted(false);
            this.f1643f = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f1643f.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.h
        void a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f1656a);
            if (this.f1641d.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f1644g) {
                        this.f1644g = true;
                        if (!this.f1645h) {
                            this.f1642e.acquire(60000L);
                        }
                    }
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public void b() {
            synchronized (this) {
                if (!this.f1645h) {
                    this.f1645h = true;
                    this.f1643f.acquire(600000L);
                    this.f1642e.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public void c() {
            synchronized (this) {
                this.f1644g = false;
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public void a() {
            synchronized (this) {
                if (this.f1645h) {
                    if (this.f1644g) {
                        this.f1642e.acquire(60000L);
                    }
                    this.f1645h = false;
                    this.f1643f.release();
                }
            }
        }
    }
}
