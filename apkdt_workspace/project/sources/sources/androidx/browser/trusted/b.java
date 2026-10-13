package androidx.browser.trusted;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* compiled from: NotificationApiHelperForO.java */
@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    public static boolean a(NotificationManager notificationManager, String str) {
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel(str);
        return notificationChannel == null || notificationChannel.getImportance() != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @RequiresApi(26)
    public static Notification a(Context context, NotificationManager notificationManager, Notification notification, String str, String str2) {
        notificationManager.createNotificationChannel(new NotificationChannel(str, str2, 3));
        if (notificationManager.getNotificationChannel(str).getImportance() == 0) {
            return null;
        }
        Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(context, notification);
        recoverBuilder.setChannelId(str);
        return recoverBuilder.build();
    }
}
