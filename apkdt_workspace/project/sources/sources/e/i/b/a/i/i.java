package e.i.b.a.i;

import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import javax.inject.Singleton;

/* compiled from: ExecutionModule.java */
@Module
/* loaded from: classes.dex */
abstract class i {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static Executor a() {
        return new k(Executors.newSingleThreadExecutor());
    }
}
