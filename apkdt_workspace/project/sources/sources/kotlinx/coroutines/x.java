package kotlinx.coroutines;

import java.lang.Throwable;
import kotlinx.coroutines.x;
import org.jetbrains.annotations.Nullable;

/* compiled from: Debug.kt */
@ExperimentalCoroutinesApi
/* loaded from: classes2.dex */
public interface x<T extends Throwable & x<T>> {
    @Nullable
    T createCopy();
}
