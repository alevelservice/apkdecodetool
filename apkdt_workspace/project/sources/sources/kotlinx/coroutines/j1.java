package kotlinx.coroutines;

import org.jetbrains.annotations.Nullable;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public class j1 extends JobSupport implements q {
    public j1(@Nullable Job job) {
        super(true);
        a(job);
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean c() {
        return false;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean d() {
        return true;
    }
}
