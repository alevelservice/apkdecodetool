package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: FragmentContainer.java */
/* loaded from: classes.dex */
public abstract class c {
    @Nullable
    public abstract View a(@IdRes int i2);

    @NonNull
    @Deprecated
    public Fragment a(@NonNull Context context, @NonNull String str, @Nullable Bundle bundle) {
        return Fragment.instantiate(context, str, bundle);
    }

    public abstract boolean a();
}
