package androidx.databinding;

import android.R;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: DataBindingUtil.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private static d f2066a = new e();

    /* renamed from: b, reason: collision with root package name */
    private static f f2067b = null;

    public static <T extends ViewDataBinding> T a(@NonNull LayoutInflater layoutInflater, int i2, @Nullable ViewGroup viewGroup, boolean z) {
        return (T) a(layoutInflater, i2, viewGroup, z, f2067b);
    }

    public static <T extends ViewDataBinding> T a(@NonNull LayoutInflater layoutInflater, int i2, @Nullable ViewGroup viewGroup, boolean z, @Nullable f fVar) {
        boolean z2 = viewGroup != null && z;
        int childCount = z2 ? viewGroup.getChildCount() : 0;
        View inflate = layoutInflater.inflate(i2, viewGroup, z);
        if (z2) {
            return (T) a(fVar, viewGroup, childCount, i2);
        }
        return (T) a(fVar, inflate, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends ViewDataBinding> T a(f fVar, View[] viewArr, int i2) {
        return (T) f2066a.a(fVar, viewArr, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends ViewDataBinding> T a(f fVar, View view, int i2) {
        return (T) f2066a.a(fVar, view, i2);
    }

    public static <T extends ViewDataBinding> T a(@NonNull Activity activity, int i2) {
        return (T) a(activity, i2, f2067b);
    }

    public static <T extends ViewDataBinding> T a(@NonNull Activity activity, int i2, @Nullable f fVar) {
        activity.setContentView(i2);
        return (T) a(fVar, (ViewGroup) activity.getWindow().getDecorView().findViewById(R.id.content), 0, i2);
    }

    private static <T extends ViewDataBinding> T a(f fVar, ViewGroup viewGroup, int i2, int i3) {
        int childCount = viewGroup.getChildCount();
        int i4 = childCount - i2;
        if (i4 == 1) {
            return (T) a(fVar, viewGroup.getChildAt(childCount - 1), i3);
        }
        View[] viewArr = new View[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            viewArr[i5] = viewGroup.getChildAt(i5 + i2);
        }
        return (T) a(fVar, viewArr, i3);
    }
}
