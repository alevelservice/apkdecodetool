package a.i.k;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
import androidx.annotation.NonNull;

/* compiled from: UserManagerCompat.java */
/* loaded from: classes.dex */
public class c {
    public static boolean a(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
        return true;
    }
}
