package e.i.b.a.i.w;

import android.content.Context;
import android.os.Build;
import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import com.google.android.datatransport.runtime.time.Monotonic;

/* compiled from: SchedulingModule.java */
@Module
/* loaded from: classes.dex */
public abstract class h {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public static s a(Context context, e.i.b.a.i.w.j.c cVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.g gVar, @Monotonic com.google.android.datatransport.runtime.time.a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new com.google.android.datatransport.runtime.scheduling.jobscheduling.e(context, cVar, gVar);
        }
        return new com.google.android.datatransport.runtime.scheduling.jobscheduling.a(context, cVar, aVar, gVar);
    }
}
