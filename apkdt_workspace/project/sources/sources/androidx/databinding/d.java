package androidx.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Collections;
import java.util.List;

/* compiled from: DataBinderMapper.java */
@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public abstract class d {
    public abstract ViewDataBinding a(f fVar, View view, int i2);

    public abstract ViewDataBinding a(f fVar, View[] viewArr, int i2);

    @NonNull
    public List<d> a() {
        return Collections.emptyList();
    }
}
