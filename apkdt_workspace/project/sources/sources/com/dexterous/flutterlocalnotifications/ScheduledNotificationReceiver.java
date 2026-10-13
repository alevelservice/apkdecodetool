package com.dexterous.flutterlocalnotifications;

import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.Keep;
import androidx.core.app.j;
import com.dexterous.flutterlocalnotifications.models.NotificationDetails;
import com.dexterous.flutterlocalnotifications.utils.StringUtils;

@Keep
/* loaded from: classes.dex */
public class ScheduledNotificationReceiver extends BroadcastReceiver {

    /* loaded from: classes.dex */
    class a extends com.google.gson.q.a<NotificationDetails> {
        a(ScheduledNotificationReceiver scheduledNotificationReceiver) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(FlutterLocalNotificationsPlugin.NOTIFICATION_DETAILS);
        if (StringUtils.isNullOrEmpty(stringExtra).booleanValue()) {
            Notification notification = (Notification) intent.getParcelableExtra("notification");
            notification.when = System.currentTimeMillis();
            int intExtra = intent.getIntExtra("notification_id", 0);
            j.a(context).a(intExtra, notification);
            if (intent.getBooleanExtra("repeat", false)) {
                return;
            }
            FlutterLocalNotificationsPlugin.removeNotificationFromCache(context, Integer.valueOf(intExtra));
            return;
        }
        NotificationDetails notificationDetails = (NotificationDetails) FlutterLocalNotificationsPlugin.buildGson().a(stringExtra, new a(this).getType());
        FlutterLocalNotificationsPlugin.showNotification(context, notificationDetails);
        if (notificationDetails.scheduledNotificationRepeatFrequency != null) {
            FlutterLocalNotificationsPlugin.zonedScheduleNextNotification(context, notificationDetails);
            return;
        }
        if (notificationDetails.matchDateTimeComponents != null) {
            FlutterLocalNotificationsPlugin.zonedScheduleNextNotificationMatchingDateComponents(context, notificationDetails);
        } else if (notificationDetails.repeatInterval != null) {
            FlutterLocalNotificationsPlugin.scheduleNextRepeatingNotification(context, notificationDetails);
        } else {
            FlutterLocalNotificationsPlugin.removeNotificationFromCache(context, notificationDetails.id);
        }
    }
}
