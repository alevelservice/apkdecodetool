package e.i.b.a.i.w.j;

import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;
import javax.inject.Named;

/* compiled from: EventStoreModule.java */
@Module
/* loaded from: classes.dex */
public abstract class e {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Named("SQLITE_DB_NAME")
    public static String a() {
        return "com.google.android.datatransport.events";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Named("SCHEMA_VERSION")
    public static int b() {
        return h0.f17776g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public static d c() {
        return d.f17768a;
    }
}
