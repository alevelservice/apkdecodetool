package e.i.b.a.i.w;

import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;
import com.google.android.datatransport.runtime.time.WallTime;

/* compiled from: SchedulingConfigModule.java */
@Module
/* loaded from: classes.dex */
public abstract class f {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public static com.google.android.datatransport.runtime.scheduling.jobscheduling.g a(@WallTime com.google.android.datatransport.runtime.time.a aVar) {
        return com.google.android.datatransport.runtime.scheduling.jobscheduling.g.a(aVar);
    }
}
