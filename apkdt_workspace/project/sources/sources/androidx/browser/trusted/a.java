package androidx.browser.trusted;

import android.app.NotificationManager;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* compiled from: NotificationApiHelperForM.java */
@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public class a {
    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @RequiresApi(23)
    public static Parcelable[] a(NotificationManager notificationManager) {
        return notificationManager.getActiveNotifications();
    }
}
