package e.i.b.b.b.a;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
public interface b {
    ExecutorService a(ThreadFactory threadFactory, int i2);

    ScheduledExecutorService a(int i2, ThreadFactory threadFactory, int i3);
}
