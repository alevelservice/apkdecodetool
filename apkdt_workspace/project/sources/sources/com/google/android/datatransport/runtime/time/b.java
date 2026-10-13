package com.google.android.datatransport.runtime.time;

import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;

/* compiled from: TimeModule.java */
@Module
/* loaded from: classes.dex */
public abstract class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @WallTime
    public static a a() {
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Monotonic
    public static a b() {
        return new e();
    }
}
