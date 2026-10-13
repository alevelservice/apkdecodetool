package com.dexterous.flutterlocalnotifications;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.AudioAttributes;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.service.notification.StatusBarNotification;
import android.text.Html;
import android.text.Spanned;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.core.app.k;
import androidx.core.graphics.drawable.IconCompat;
import com.dexterous.flutterlocalnotifications.models.DateTimeComponents;
import com.dexterous.flutterlocalnotifications.models.IconSource;
import com.dexterous.flutterlocalnotifications.models.MessageDetails;
import com.dexterous.flutterlocalnotifications.models.NotificationChannelAction;
import com.dexterous.flutterlocalnotifications.models.NotificationChannelDetails;
import com.dexterous.flutterlocalnotifications.models.NotificationChannelGroupDetails;
import com.dexterous.flutterlocalnotifications.models.NotificationDetails;
import com.dexterous.flutterlocalnotifications.models.PersonDetails;
import com.dexterous.flutterlocalnotifications.models.ScheduledNotificationRepeatFrequency;
import com.dexterous.flutterlocalnotifications.models.styles.BigPictureStyleInformation;
import com.dexterous.flutterlocalnotifications.models.styles.BigTextStyleInformation;
import com.dexterous.flutterlocalnotifications.models.styles.DefaultStyleInformation;
import com.dexterous.flutterlocalnotifications.models.styles.InboxStyleInformation;
import com.dexterous.flutterlocalnotifications.models.styles.MessagingStyleInformation;
import com.dexterous.flutterlocalnotifications.models.styles.StyleInformation;
import com.dexterous.flutterlocalnotifications.utils.BooleanUtils;
import com.dexterous.flutterlocalnotifications.utils.StringUtils;
import com.google.gson.Gson;
import com.google.gson.e;
import g.a.c.a.c;
import g.a.c.a.j;
import g.a.c.a.k;
import g.a.c.a.m;
import io.flutter.embedding.engine.g.a;
import io.flutter.view.d;
import java.io.FileInputStream;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import k.b.a.g;
import k.b.a.q;
import k.b.a.t;

@Keep
/* loaded from: classes.dex */
public class FlutterLocalNotificationsPlugin implements k.c, m.b, io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {
    private static final String CANCEL_ALL_METHOD = "cancelAll";
    private static final String CANCEL_METHOD = "cancel";
    private static final String CREATE_NOTIFICATION_CHANNEL_GROUP_METHOD = "createNotificationChannelGroup";
    private static final String CREATE_NOTIFICATION_CHANNEL_METHOD = "createNotificationChannel";
    private static final String DEFAULT_ICON = "defaultIcon";
    private static final String DELETE_NOTIFICATION_CHANNEL_GROUP_METHOD = "deleteNotificationChannelGroup";
    private static final String DELETE_NOTIFICATION_CHANNEL_METHOD = "deleteNotificationChannel";
    private static final String DRAWABLE = "drawable";
    private static final String GET_ACTIVE_NOTIFICATIONS_ERROR_CODE = "GET_ACTIVE_NOTIFICATIONS_ERROR_CODE";
    private static final String GET_ACTIVE_NOTIFICATIONS_ERROR_MESSAGE = "Android version must be 6.0 or newer to use getActiveNotifications";
    private static final String GET_ACTIVE_NOTIFICATIONS_METHOD = "getActiveNotifications";
    private static final String GET_NOTIFICATION_APP_LAUNCH_DETAILS_METHOD = "getNotificationAppLaunchDetails";
    private static final String INITIALIZE_METHOD = "initialize";
    private static final String INVALID_BIG_PICTURE_ERROR_CODE = "INVALID_BIG_PICTURE";
    private static final String INVALID_DRAWABLE_RESOURCE_ERROR_MESSAGE = "The resource %s could not be found. Please make sure it has been added as a drawable resource to your Android head project.";
    private static final String INVALID_ICON_ERROR_CODE = "INVALID_ICON";
    private static final String INVALID_LARGE_ICON_ERROR_CODE = "INVALID_LARGE_ICON";
    private static final String INVALID_LED_DETAILS_ERROR_CODE = "INVALID_LED_DETAILS";
    private static final String INVALID_LED_DETAILS_ERROR_MESSAGE = "Must specify both ledOnMs and ledOffMs to configure the blink cycle on older versions of Android before Oreo";
    private static final String INVALID_RAW_RESOURCE_ERROR_MESSAGE = "The resource %s could not be found. Please make sure it has been added as a raw resource to your Android head project.";
    private static final String INVALID_SOUND_ERROR_CODE = "INVALID_SOUND";
    private static final String METHOD_CHANNEL = "dexterous.com/flutter/local_notifications";
    static String NOTIFICATION_DETAILS = "notificationDetails";
    private static final String NOTIFICATION_LAUNCHED_APP = "notificationLaunchedApp";
    private static final String PAYLOAD = "payload";
    private static final String PENDING_NOTIFICATION_REQUESTS_METHOD = "pendingNotificationRequests";
    private static final String PERIODICALLY_SHOW_METHOD = "periodicallyShow";
    private static final String SCHEDULED_NOTIFICATIONS = "scheduled_notifications";
    private static final String SCHEDULE_METHOD = "schedule";
    private static final String SELECT_NOTIFICATION = "SELECT_NOTIFICATION";
    private static final String SHARED_PREFERENCES_KEY = "notification_plugin_cache";
    private static final String SHOW_DAILY_AT_TIME_METHOD = "showDailyAtTime";
    private static final String SHOW_METHOD = "show";
    private static final String SHOW_WEEKLY_AT_DAY_AND_TIME_METHOD = "showWeeklyAtDayAndTime";
    private static final String ZONED_SCHEDULE_METHOD = "zonedSchedule";
    static Gson gson;
    private Context applicationContext;
    private k channel;
    private Intent launchIntent;
    private Activity mainActivity;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a extends com.google.gson.q.a<ArrayList<NotificationDetails>> {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3411a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f3412b;

        /* renamed from: c, reason: collision with root package name */
        static final /* synthetic */ int[] f3413c = new int[NotificationStyle.values().length];

        static {
            try {
                f3413c[NotificationStyle.BigPicture.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3413c[NotificationStyle.BigText.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3413c[NotificationStyle.Inbox.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3413c[NotificationStyle.Messaging.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3413c[NotificationStyle.Media.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f3412b = new int[IconSource.values().length];
            try {
                f3412b[IconSource.DrawableResource.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3412b[IconSource.BitmapFilePath.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3412b[IconSource.ContentUri.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3412b[IconSource.FlutterBitmapAsset.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            f3411a = new int[RepeatInterval.values().length];
            try {
                f3411a[RepeatInterval.EveryMinute.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f3411a[RepeatInterval.Hourly.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f3411a[RepeatInterval.Daily.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f3411a[RepeatInterval.Weekly.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    private static void applyGrouping(NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        boolean z;
        if (StringUtils.isNullOrEmpty(notificationDetails.groupKey).booleanValue()) {
            z = false;
        } else {
            dVar.c(notificationDetails.groupKey);
            z = true;
        }
        if (z) {
            if (BooleanUtils.getValue(notificationDetails.setAsGroupSummary)) {
                dVar.b(true);
            }
            dVar.c(notificationDetails.groupAlertBehavior.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Gson buildGson() {
        if (gson == null) {
            RuntimeTypeAdapterFactory registerSubtype = RuntimeTypeAdapterFactory.of(StyleInformation.class).registerSubtype(DefaultStyleInformation.class).registerSubtype(BigTextStyleInformation.class).registerSubtype(BigPictureStyleInformation.class).registerSubtype(InboxStyleInformation.class).registerSubtype(MessagingStyleInformation.class);
            e eVar = new e();
            eVar.a(registerSubtype);
            gson = eVar.a();
        }
        return gson;
    }

    private static androidx.core.app.k buildPerson(Context context, PersonDetails personDetails) {
        IconSource iconSource;
        if (personDetails == null) {
            return null;
        }
        k.a aVar = new k.a();
        aVar.a(BooleanUtils.getValue(personDetails.bot));
        String str = personDetails.icon;
        if (str != null && (iconSource = personDetails.iconBitmapSource) != null) {
            aVar.a(getIconFromSource(context, str, iconSource));
        }
        aVar.b(BooleanUtils.getValue(personDetails.important));
        String str2 = personDetails.key;
        if (str2 != null) {
            aVar.a(str2);
        }
        String str3 = personDetails.name;
        if (str3 != null) {
            aVar.a((CharSequence) str3);
        }
        String str4 = personDetails.uri;
        if (str4 != null) {
            aVar.b(str4);
        }
        return aVar.a();
    }

    private static long calculateNextNotificationTrigger(long j2, long j3) {
        while (j2 < System.currentTimeMillis()) {
            j2 += j3;
        }
        return j2;
    }

    private static long calculateRepeatIntervalMilliseconds(NotificationDetails notificationDetails) {
        int i2 = b.f3411a[notificationDetails.repeatInterval.ordinal()];
        if (i2 == 1) {
            return 60000L;
        }
        if (i2 == 2) {
            return 3600000L;
        }
        if (i2 != 3) {
            return i2 != 4 ? 0L : 604800000L;
        }
        return 86400000L;
    }

    private void cancel(j jVar, k.d dVar) {
        cancelNotification((Integer) jVar.a());
        dVar.a(null);
    }

    private void cancelAllNotifications(k.d dVar) {
        getNotificationManager(this.applicationContext).b();
        ArrayList<NotificationDetails> loadScheduledNotifications = loadScheduledNotifications(this.applicationContext);
        if (loadScheduledNotifications != null && !loadScheduledNotifications.isEmpty()) {
            Intent intent = new Intent(this.applicationContext, (Class<?>) ScheduledNotificationReceiver.class);
            Iterator<NotificationDetails> it = loadScheduledNotifications.iterator();
            while (it.hasNext()) {
                getAlarmManager(this.applicationContext).cancel(PendingIntent.getBroadcast(this.applicationContext, it.next().id.intValue(), intent, 134217728));
            }
            saveScheduledNotifications(this.applicationContext, new ArrayList());
            dVar.a(null);
            return;
        }
        dVar.a(null);
    }

    private void cancelNotification(Integer num) {
        getAlarmManager(this.applicationContext).cancel(PendingIntent.getBroadcast(this.applicationContext, num.intValue(), new Intent(this.applicationContext, (Class<?>) ScheduledNotificationReceiver.class), 134217728));
        getNotificationManager(this.applicationContext).a(num.intValue());
        removeNotificationFromCache(this.applicationContext, num);
    }

    private static NotificationCompat.f.a createMessage(Context context, MessageDetails messageDetails) {
        String str;
        NotificationCompat.f.a aVar = new NotificationCompat.f.a(messageDetails.text, messageDetails.timestamp.longValue(), buildPerson(context, messageDetails.person));
        String str2 = messageDetails.dataUri;
        if (str2 != null && (str = messageDetails.dataMimeType) != null) {
            aVar.a(str, Uri.parse(str2));
        }
        return aVar;
    }

    private static Notification createNotification(Context context, NotificationDetails notificationDetails) {
        setupNotificationChannel(context, NotificationChannelDetails.fromNotificationDetails(notificationDetails));
        Intent launchIntent = getLaunchIntent(context);
        launchIntent.setAction(SELECT_NOTIFICATION);
        launchIntent.putExtra("payload", notificationDetails.payload);
        PendingIntent activity = PendingIntent.getActivity(context, notificationDetails.id.intValue(), launchIntent, 134217728);
        DefaultStyleInformation defaultStyleInformation = (DefaultStyleInformation) notificationDetails.styleInformation;
        NotificationCompat.d dVar = new NotificationCompat.d(context, notificationDetails.channelId);
        dVar.b(defaultStyleInformation.htmlFormatTitle.booleanValue() ? fromHtml(notificationDetails.title) : notificationDetails.title);
        dVar.a(defaultStyleInformation.htmlFormatBody.booleanValue() ? fromHtml(notificationDetails.body) : notificationDetails.body);
        dVar.d((CharSequence) notificationDetails.ticker);
        dVar.a(BooleanUtils.getValue(notificationDetails.autoCancel));
        dVar.a(activity);
        dVar.e(notificationDetails.priority.intValue());
        dVar.d(BooleanUtils.getValue(notificationDetails.ongoing));
        dVar.e(BooleanUtils.getValue(notificationDetails.onlyAlertOnce));
        setSmallIcon(context, notificationDetails, dVar);
        if (!StringUtils.isNullOrEmpty(notificationDetails.largeIcon).booleanValue()) {
            dVar.a(getBitmapFromSource(context, notificationDetails.largeIcon, notificationDetails.largeIconBitmapSource));
        }
        Integer num = notificationDetails.color;
        if (num != null) {
            dVar.a(num.intValue());
        }
        Boolean bool = notificationDetails.showWhen;
        if (bool != null) {
            dVar.f(BooleanUtils.getValue(bool));
        }
        Long l2 = notificationDetails.when;
        if (l2 != null) {
            dVar.b(l2.longValue());
        }
        Boolean bool2 = notificationDetails.usesChronometer;
        if (bool2 != null) {
            dVar.g(bool2.booleanValue());
        }
        if (BooleanUtils.getValue(notificationDetails.fullScreenIntent)) {
            dVar.a(activity, true);
        }
        if (!StringUtils.isNullOrEmpty(notificationDetails.shortcutId).booleanValue()) {
            dVar.d(notificationDetails.shortcutId);
        }
        if (!StringUtils.isNullOrEmpty(notificationDetails.subText).booleanValue()) {
            dVar.c((CharSequence) notificationDetails.subText);
        }
        setVisibility(notificationDetails, dVar);
        applyGrouping(notificationDetails, dVar);
        setSound(context, notificationDetails, dVar);
        setVibrationPattern(notificationDetails, dVar);
        setLights(notificationDetails, dVar);
        setStyle(context, notificationDetails, dVar);
        setProgress(notificationDetails, dVar);
        setCategory(notificationDetails, dVar);
        setTimeoutAfter(notificationDetails, dVar);
        Notification a2 = dVar.a();
        int[] iArr = notificationDetails.additionalFlags;
        if (iArr != null && iArr.length > 0) {
            for (int i2 : iArr) {
                a2.flags = i2 | a2.flags;
            }
        }
        return a2;
    }

    private void createNotificationChannel(j jVar, k.d dVar) {
        setupNotificationChannel(this.applicationContext, NotificationChannelDetails.from((Map) jVar.a()));
        dVar.a(null);
    }

    private void createNotificationChannelGroup(j jVar, k.d dVar) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannelGroupDetails from = NotificationChannelGroupDetails.from((Map) jVar.a());
            NotificationManager notificationManager = (NotificationManager) this.applicationContext.getSystemService("notification");
            NotificationChannelGroup notificationChannelGroup = new NotificationChannelGroup(from.id, from.name);
            if (Build.VERSION.SDK_INT >= 28) {
                notificationChannelGroup.setDescription(from.description);
            }
            notificationManager.createNotificationChannelGroup(notificationChannelGroup);
        }
        dVar.a(null);
    }

    private void deleteNotificationChannel(j jVar, k.d dVar) {
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) this.applicationContext.getSystemService("notification")).deleteNotificationChannel((String) jVar.a());
        }
        dVar.a(null);
    }

    private void deleteNotificationChannelGroup(j jVar, k.d dVar) {
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) this.applicationContext.getSystemService("notification")).deleteNotificationChannelGroup((String) jVar.a());
        }
        dVar.a(null);
    }

    private NotificationDetails extractNotificationDetails(k.d dVar, Map<String, Object> map) {
        NotificationDetails from = NotificationDetails.from(map);
        if (hasInvalidIcon(dVar, from.icon) || hasInvalidLargeIcon(dVar, from.largeIcon, from.largeIconBitmapSource) || hasInvalidBigPictureResources(dVar, from) || hasInvalidRawSoundResource(dVar, from) || hasInvalidLedDetails(dVar, from)) {
            return null;
        }
        return from;
    }

    private static Spanned fromHtml(String str) {
        if (str == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return Html.fromHtml(str, 0);
        }
        return Html.fromHtml(str);
    }

    private void getActiveNotifications(k.d dVar) {
        if (Build.VERSION.SDK_INT < 23) {
            dVar.a(GET_ACTIVE_NOTIFICATIONS_ERROR_CODE, GET_ACTIVE_NOTIFICATIONS_ERROR_MESSAGE, null);
            return;
        }
        try {
            StatusBarNotification[] activeNotifications = ((NotificationManager) this.applicationContext.getSystemService("notification")).getActiveNotifications();
            ArrayList arrayList = new ArrayList();
            for (StatusBarNotification statusBarNotification : activeNotifications) {
                HashMap hashMap = new HashMap();
                hashMap.put("id", Integer.valueOf(statusBarNotification.getId()));
                Notification notification = statusBarNotification.getNotification();
                if (Build.VERSION.SDK_INT >= 26) {
                    hashMap.put("channelId", notification.getChannelId());
                }
                hashMap.put("title", notification.extras.getString("android.title"));
                hashMap.put("body", notification.extras.getString("android.text"));
                arrayList.add(hashMap);
            }
            dVar.a(arrayList);
        } catch (Throwable th) {
            dVar.a(GET_ACTIVE_NOTIFICATIONS_ERROR_CODE, th.getMessage(), th.getStackTrace());
        }
    }

    private static AlarmManager getAlarmManager(Context context) {
        return (AlarmManager) context.getSystemService("alarm");
    }

    private static Bitmap getBitmapFromSource(Context context, String str, BitmapSource bitmapSource) {
        if (bitmapSource == BitmapSource.DrawableResource) {
            return BitmapFactory.decodeResource(context.getResources(), getDrawableResourceId(context, str));
        }
        if (bitmapSource == BitmapSource.FilePath) {
            return BitmapFactory.decodeFile(str);
        }
        return null;
    }

    private static int getDrawableResourceId(Context context, String str) {
        return context.getResources().getIdentifier(str, DRAWABLE, context.getPackageName());
    }

    private static IconCompat getIconFromSource(Context context, String str, IconSource iconSource) {
        int i2 = b.f3412b[iconSource.ordinal()];
        if (i2 == 1) {
            return IconCompat.a(context, getDrawableResourceId(context, str));
        }
        if (i2 == 2) {
            return IconCompat.a(BitmapFactory.decodeFile(str));
        }
        if (i2 == 3) {
            return IconCompat.a(str);
        }
        if (i2 != 4) {
            return null;
        }
        try {
            AssetFileDescriptor openFd = context.getAssets().openFd(d.a(str));
            FileInputStream createInputStream = openFd.createInputStream();
            IconCompat a2 = IconCompat.a(BitmapFactory.decodeStream(createInputStream));
            createInputStream.close();
            openFd.close();
            return a2;
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static Intent getLaunchIntent(Context context) {
        return context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
    }

    static String getNextFireDate(NotificationDetails notificationDetails) {
        if (Build.VERSION.SDK_INT >= 26) {
            ScheduledNotificationRepeatFrequency scheduledNotificationRepeatFrequency = notificationDetails.scheduledNotificationRepeatFrequency;
            if (scheduledNotificationRepeatFrequency == ScheduledNotificationRepeatFrequency.Daily) {
                return DateTimeFormatter.ISO_LOCAL_DATE_TIME.format(LocalDateTime.parse(notificationDetails.scheduledDateTime).plusDays(1L));
            }
            if (scheduledNotificationRepeatFrequency != ScheduledNotificationRepeatFrequency.Weekly) {
                return null;
            }
            return DateTimeFormatter.ISO_LOCAL_DATE_TIME.format(LocalDateTime.parse(notificationDetails.scheduledDateTime).plusWeeks(1L));
        }
        ScheduledNotificationRepeatFrequency scheduledNotificationRepeatFrequency2 = notificationDetails.scheduledNotificationRepeatFrequency;
        if (scheduledNotificationRepeatFrequency2 == ScheduledNotificationRepeatFrequency.Daily) {
            return k.b.a.v.b.f19776k.a(g.parse(notificationDetails.scheduledDateTime).plusDays(1L));
        }
        if (scheduledNotificationRepeatFrequency2 != ScheduledNotificationRepeatFrequency.Weekly) {
            return null;
        }
        return k.b.a.v.b.f19776k.a(g.parse(notificationDetails.scheduledDateTime).plusWeeks(1L));
    }

    static String getNextFireDateMatchingDateTimeComponents(NotificationDetails notificationDetails) {
        if (Build.VERSION.SDK_INT >= 26) {
            ZoneId of = ZoneId.of(notificationDetails.timeZoneName);
            ZonedDateTime of2 = ZonedDateTime.of(LocalDateTime.parse(notificationDetails.scheduledDateTime), of);
            ZonedDateTime now = ZonedDateTime.now(of);
            ZonedDateTime of3 = ZonedDateTime.of(now.getYear(), now.getMonthValue(), now.getDayOfMonth(), of2.getHour(), of2.getMinute(), of2.getSecond(), of2.getNano(), of);
            while (of3.isBefore(now)) {
                of3 = of3.plusDays(1L);
            }
            DateTimeComponents dateTimeComponents = notificationDetails.matchDateTimeComponents;
            if (dateTimeComponents == DateTimeComponents.Time) {
                return DateTimeFormatter.ISO_LOCAL_DATE_TIME.format(of3);
            }
            if (dateTimeComponents != DateTimeComponents.DayOfWeekAndTime) {
                return null;
            }
            while (of3.getDayOfWeek() != of2.getDayOfWeek()) {
                of3 = of3.plusDays(1L);
            }
            return DateTimeFormatter.ISO_LOCAL_DATE_TIME.format(of3);
        }
        q of4 = q.of(notificationDetails.timeZoneName);
        t of5 = t.of(g.parse(notificationDetails.scheduledDateTime), of4);
        t now2 = t.now(of4);
        t of6 = t.of(now2.getYear(), now2.getMonthValue(), now2.getDayOfMonth(), of5.getHour(), of5.getMinute(), of5.getSecond(), of5.getNano(), of4);
        while (of6.isBefore(now2)) {
            of6 = of6.plusDays(1L);
        }
        DateTimeComponents dateTimeComponents2 = notificationDetails.matchDateTimeComponents;
        if (dateTimeComponents2 == DateTimeComponents.Time) {
            return k.b.a.v.b.f19776k.a(of6);
        }
        if (dateTimeComponents2 != DateTimeComponents.DayOfWeekAndTime) {
            return null;
        }
        while (of6.getDayOfWeek() != of5.getDayOfWeek()) {
            of6 = of6.plusDays(1L);
        }
        return k.b.a.v.b.f19776k.a(of6);
    }

    private void getNotificationAppLaunchDetails(k.d dVar) {
        HashMap hashMap = new HashMap();
        Activity activity = this.mainActivity;
        Boolean valueOf = Boolean.valueOf((activity == null || !SELECT_NOTIFICATION.equals(activity.getIntent().getAction()) || launchedActivityFromHistory(this.mainActivity.getIntent())) ? false : true);
        hashMap.put(NOTIFICATION_LAUNCHED_APP, valueOf);
        hashMap.put("payload", valueOf.booleanValue() ? this.launchIntent.getStringExtra("payload") : null);
        dVar.a(hashMap);
    }

    private static androidx.core.app.j getNotificationManager(Context context) {
        return androidx.core.app.j.a(context);
    }

    private boolean hasInvalidBigPictureResources(k.d dVar, NotificationDetails notificationDetails) {
        if (notificationDetails.style != NotificationStyle.BigPicture) {
            return false;
        }
        BigPictureStyleInformation bigPictureStyleInformation = (BigPictureStyleInformation) notificationDetails.styleInformation;
        if (hasInvalidLargeIcon(dVar, bigPictureStyleInformation.largeIcon, bigPictureStyleInformation.largeIconBitmapSource)) {
            return true;
        }
        return bigPictureStyleInformation.bigPictureBitmapSource == BitmapSource.DrawableResource && !isValidDrawableResource(this.applicationContext, bigPictureStyleInformation.bigPicture, dVar, INVALID_BIG_PICTURE_ERROR_CODE);
    }

    private boolean hasInvalidIcon(k.d dVar, String str) {
        return (StringUtils.isNullOrEmpty(str).booleanValue() || isValidDrawableResource(this.applicationContext, str, dVar, INVALID_ICON_ERROR_CODE)) ? false : true;
    }

    private boolean hasInvalidLargeIcon(k.d dVar, String str, BitmapSource bitmapSource) {
        return (StringUtils.isNullOrEmpty(str).booleanValue() || bitmapSource != BitmapSource.DrawableResource || isValidDrawableResource(this.applicationContext, str, dVar, INVALID_LARGE_ICON_ERROR_CODE)) ? false : true;
    }

    private boolean hasInvalidLedDetails(k.d dVar, NotificationDetails notificationDetails) {
        if (notificationDetails.ledColor == null) {
            return false;
        }
        if (notificationDetails.ledOnMs != null && notificationDetails.ledOffMs != null) {
            return false;
        }
        dVar.a(INVALID_LED_DETAILS_ERROR_CODE, INVALID_LED_DETAILS_ERROR_MESSAGE, null);
        return true;
    }

    private boolean hasInvalidRawSoundResource(k.d dVar, NotificationDetails notificationDetails) {
        SoundSource soundSource;
        if (StringUtils.isNullOrEmpty(notificationDetails.sound).booleanValue() || !(((soundSource = notificationDetails.soundSource) == null || soundSource == SoundSource.RawResource) && this.applicationContext.getResources().getIdentifier(notificationDetails.sound, "raw", this.applicationContext.getPackageName()) == 0)) {
            return false;
        }
        dVar.a(INVALID_SOUND_ERROR_CODE, String.format(INVALID_RAW_RESOURCE_ERROR_MESSAGE, notificationDetails.sound), null);
        return true;
    }

    private static void initAndroidThreeTen(Context context) {
        if (Build.VERSION.SDK_INT < 26) {
            e.k.a.a.a(context);
        }
    }

    private void initialize(j jVar, k.d dVar) {
        String str = (String) ((Map) jVar.a()).get(DEFAULT_ICON);
        if (isValidDrawableResource(this.applicationContext, str, dVar, INVALID_ICON_ERROR_CODE)) {
            initAndroidThreeTen(this.applicationContext);
            SharedPreferences.Editor edit = this.applicationContext.getSharedPreferences(SHARED_PREFERENCES_KEY, 0).edit();
            edit.putString(DEFAULT_ICON, str);
            edit.commit();
            Activity activity = this.mainActivity;
            if (activity != null && !launchedActivityFromHistory(activity.getIntent())) {
                sendNotificationPayloadMessage(this.mainActivity.getIntent());
            }
            dVar.a(true);
        }
    }

    private static boolean isValidDrawableResource(Context context, String str, k.d dVar, String str2) {
        if (context.getResources().getIdentifier(str, DRAWABLE, context.getPackageName()) != 0) {
            return true;
        }
        dVar.a(str2, String.format(INVALID_DRAWABLE_RESOURCE_ERROR_MESSAGE, str), null);
        return false;
    }

    private static boolean launchedActivityFromHistory(Intent intent) {
        return intent != null && (intent.getFlags() & 1048576) == 1048576;
    }

    private static ArrayList<NotificationDetails> loadScheduledNotifications(Context context) {
        ArrayList<NotificationDetails> arrayList = new ArrayList<>();
        String string = context.getSharedPreferences(SCHEDULED_NOTIFICATIONS, 0).getString(SCHEDULED_NOTIFICATIONS, null);
        return string != null ? (ArrayList) buildGson().a(string, new a().getType()) : arrayList;
    }

    private void onAttachedToEngine(Context context, c cVar) {
        this.applicationContext = context;
        this.channel = new g.a.c.a.k(cVar, METHOD_CHANNEL);
        this.channel.a(this);
    }

    private void pendingNotificationRequests(k.d dVar) {
        ArrayList<NotificationDetails> loadScheduledNotifications = loadScheduledNotifications(this.applicationContext);
        ArrayList arrayList = new ArrayList();
        Iterator<NotificationDetails> it = loadScheduledNotifications.iterator();
        while (it.hasNext()) {
            NotificationDetails next = it.next();
            HashMap hashMap = new HashMap();
            hashMap.put("id", next.id);
            hashMap.put("title", next.title);
            hashMap.put("body", next.body);
            hashMap.put("payload", next.payload);
            arrayList.add(hashMap);
        }
        dVar.a(arrayList);
    }

    public static void registerWith(m.d dVar) {
        FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
        flutterLocalNotificationsPlugin.setActivity(dVar.b());
        dVar.a(flutterLocalNotificationsPlugin);
        flutterLocalNotificationsPlugin.onAttachedToEngine(dVar.a(), dVar.d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void removeNotificationFromCache(Context context, Integer num) {
        ArrayList<NotificationDetails> loadScheduledNotifications = loadScheduledNotifications(context);
        Iterator<NotificationDetails> it = loadScheduledNotifications.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().id.equals(num)) {
                it.remove();
                break;
            }
        }
        saveScheduledNotifications(context, loadScheduledNotifications);
    }

    private void repeat(j jVar, k.d dVar) {
        NotificationDetails extractNotificationDetails = extractNotificationDetails(dVar, (Map) jVar.a());
        if (extractNotificationDetails != null) {
            repeatNotification(this.applicationContext, extractNotificationDetails, true);
            dVar.a(null);
        }
    }

    private static void repeatNotification(Context context, NotificationDetails notificationDetails, Boolean bool) {
        long calculateRepeatIntervalMilliseconds = calculateRepeatIntervalMilliseconds(notificationDetails);
        long longValue = notificationDetails.calledAt.longValue();
        if (notificationDetails.repeatTime != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.set(11, notificationDetails.repeatTime.hour.intValue());
            calendar.set(12, notificationDetails.repeatTime.minute.intValue());
            calendar.set(13, notificationDetails.repeatTime.second.intValue());
            Integer num = notificationDetails.day;
            if (num != null) {
                calendar.set(7, num.intValue());
            }
            longValue = calendar.getTimeInMillis();
        }
        long calculateNextNotificationTrigger = calculateNextNotificationTrigger(longValue, calculateRepeatIntervalMilliseconds);
        String a2 = buildGson().a(notificationDetails);
        Intent intent = new Intent(context, (Class<?>) ScheduledNotificationReceiver.class);
        intent.putExtra(NOTIFICATION_DETAILS, a2);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, notificationDetails.id.intValue(), intent, 134217728);
        AlarmManager alarmManager = getAlarmManager(context);
        if (BooleanUtils.getValue(notificationDetails.allowWhileIdle)) {
            androidx.core.app.c.b(alarmManager, 0, calculateNextNotificationTrigger, broadcast);
        } else {
            alarmManager.setInexactRepeating(0, calculateNextNotificationTrigger, calculateRepeatIntervalMilliseconds, broadcast);
        }
        if (bool.booleanValue()) {
            saveScheduledNotification(context, notificationDetails);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void rescheduleNotifications(Context context) {
        initAndroidThreeTen(context);
        Iterator<NotificationDetails> it = loadScheduledNotifications(context).iterator();
        while (it.hasNext()) {
            NotificationDetails next = it.next();
            if (next.repeatInterval == null) {
                if (next.timeZoneName == null) {
                    scheduleNotification(context, next, false);
                } else {
                    zonedScheduleNotification(context, next, false);
                }
            } else {
                repeatNotification(context, next, false);
            }
        }
    }

    private static Uri retrieveSoundResourceUri(Context context, String str, SoundSource soundSource) {
        if (StringUtils.isNullOrEmpty(str).booleanValue()) {
            return RingtoneManager.getDefaultUri(2);
        }
        if (soundSource != null && soundSource != SoundSource.RawResource) {
            if (soundSource == SoundSource.Uri) {
                return Uri.parse(str);
            }
            return null;
        }
        return Uri.parse("android.resource://" + context.getPackageName() + "/" + context.getResources().getIdentifier(str, "raw", context.getPackageName()));
    }

    private static void saveScheduledNotification(Context context, NotificationDetails notificationDetails) {
        ArrayList<NotificationDetails> loadScheduledNotifications = loadScheduledNotifications(context);
        ArrayList arrayList = new ArrayList();
        Iterator<NotificationDetails> it = loadScheduledNotifications.iterator();
        while (it.hasNext()) {
            NotificationDetails next = it.next();
            if (!next.id.equals(notificationDetails.id)) {
                arrayList.add(next);
            }
        }
        arrayList.add(notificationDetails);
        saveScheduledNotifications(context, arrayList);
    }

    private static void saveScheduledNotifications(Context context, ArrayList<NotificationDetails> arrayList) {
        String a2 = buildGson().a(arrayList);
        SharedPreferences.Editor edit = context.getSharedPreferences(SCHEDULED_NOTIFICATIONS, 0).edit();
        edit.putString(SCHEDULED_NOTIFICATIONS, a2);
        edit.commit();
    }

    private void schedule(j jVar, k.d dVar) {
        NotificationDetails extractNotificationDetails = extractNotificationDetails(dVar, (Map) jVar.a());
        if (extractNotificationDetails != null) {
            scheduleNotification(this.applicationContext, extractNotificationDetails, true);
            dVar.a(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void scheduleNextRepeatingNotification(Context context, NotificationDetails notificationDetails) {
        long calculateNextNotificationTrigger = calculateNextNotificationTrigger(notificationDetails.calledAt.longValue(), calculateRepeatIntervalMilliseconds(notificationDetails));
        String a2 = buildGson().a(notificationDetails);
        Intent intent = new Intent(context, (Class<?>) ScheduledNotificationReceiver.class);
        intent.putExtra(NOTIFICATION_DETAILS, a2);
        androidx.core.app.c.b(getAlarmManager(context), 0, calculateNextNotificationTrigger, PendingIntent.getBroadcast(context, notificationDetails.id.intValue(), intent, 134217728));
        saveScheduledNotification(context, notificationDetails);
    }

    private static void scheduleNotification(Context context, NotificationDetails notificationDetails, Boolean bool) {
        String a2 = buildGson().a(notificationDetails);
        Intent intent = new Intent(context, (Class<?>) ScheduledNotificationReceiver.class);
        intent.putExtra(NOTIFICATION_DETAILS, a2);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, notificationDetails.id.intValue(), intent, 134217728);
        AlarmManager alarmManager = getAlarmManager(context);
        if (BooleanUtils.getValue(notificationDetails.allowWhileIdle)) {
            androidx.core.app.c.b(alarmManager, 0, notificationDetails.millisecondsSinceEpoch.longValue(), broadcast);
        } else {
            androidx.core.app.c.a(alarmManager, 0, notificationDetails.millisecondsSinceEpoch.longValue(), broadcast);
        }
        if (bool.booleanValue()) {
            saveScheduledNotification(context, notificationDetails);
        }
    }

    private Boolean sendNotificationPayloadMessage(Intent intent) {
        if (SELECT_NOTIFICATION.equals(intent.getAction())) {
            this.channel.a("selectNotification", intent.getStringExtra("payload"));
            return true;
        }
        return false;
    }

    private void setActivity(Activity activity) {
        this.mainActivity = activity;
        Activity activity2 = this.mainActivity;
        if (activity2 != null) {
            this.launchIntent = activity2.getIntent();
        }
    }

    private static void setBigPictureStyle(Context context, NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        BigPictureStyleInformation bigPictureStyleInformation = (BigPictureStyleInformation) notificationDetails.styleInformation;
        NotificationCompat.a aVar = new NotificationCompat.a();
        if (bigPictureStyleInformation.contentTitle != null) {
            aVar.a(bigPictureStyleInformation.htmlFormatContentTitle.booleanValue() ? fromHtml(bigPictureStyleInformation.contentTitle) : bigPictureStyleInformation.contentTitle);
        }
        if (bigPictureStyleInformation.summaryText != null) {
            aVar.b(bigPictureStyleInformation.htmlFormatSummaryText.booleanValue() ? fromHtml(bigPictureStyleInformation.summaryText) : bigPictureStyleInformation.summaryText);
        }
        if (bigPictureStyleInformation.hideExpandedLargeIcon.booleanValue()) {
            aVar.a((Bitmap) null);
        } else {
            String str = bigPictureStyleInformation.largeIcon;
            if (str != null) {
                aVar.a(getBitmapFromSource(context, str, bigPictureStyleInformation.largeIconBitmapSource));
            }
        }
        aVar.b(getBitmapFromSource(context, bigPictureStyleInformation.bigPicture, bigPictureStyleInformation.bigPictureBitmapSource));
        dVar.a(aVar);
    }

    private static void setBigTextStyle(NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        BigTextStyleInformation bigTextStyleInformation = (BigTextStyleInformation) notificationDetails.styleInformation;
        NotificationCompat.b bVar = new NotificationCompat.b();
        if (bigTextStyleInformation.bigText != null) {
            bVar.a(bigTextStyleInformation.htmlFormatBigText.booleanValue() ? fromHtml(bigTextStyleInformation.bigText) : bigTextStyleInformation.bigText);
        }
        if (bigTextStyleInformation.contentTitle != null) {
            bVar.b(bigTextStyleInformation.htmlFormatContentTitle.booleanValue() ? fromHtml(bigTextStyleInformation.contentTitle) : bigTextStyleInformation.contentTitle);
        }
        if (bigTextStyleInformation.summaryText != null) {
            boolean booleanValue = bigTextStyleInformation.htmlFormatSummaryText.booleanValue();
            String str = bigTextStyleInformation.summaryText;
            CharSequence charSequence = str;
            if (booleanValue) {
                charSequence = fromHtml(str);
            }
            bVar.c(charSequence);
        }
        dVar.a(bVar);
    }

    private static void setCategory(NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        String str = notificationDetails.category;
        if (str == null) {
            return;
        }
        dVar.a(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.core.app.NotificationCompat$g, androidx.core.app.NotificationCompat$e] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.text.Spanned] */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.core.app.NotificationCompat$d] */
    private static void setInboxStyle(NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        InboxStyleInformation inboxStyleInformation = (InboxStyleInformation) notificationDetails.styleInformation;
        ?? eVar = new NotificationCompat.e();
        if (inboxStyleInformation.contentTitle != null) {
            eVar.b(inboxStyleInformation.htmlFormatContentTitle.booleanValue() ? fromHtml(inboxStyleInformation.contentTitle) : inboxStyleInformation.contentTitle);
        }
        if (inboxStyleInformation.summaryText != null) {
            eVar.c(inboxStyleInformation.htmlFormatSummaryText.booleanValue() ? fromHtml(inboxStyleInformation.summaryText) : inboxStyleInformation.summaryText);
        }
        ArrayList<String> arrayList = inboxStyleInformation.lines;
        if (arrayList != null) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (inboxStyleInformation.htmlFormatLines.booleanValue()) {
                    next = fromHtml(next);
                }
                eVar.a(next);
            }
        }
        dVar.a(eVar);
    }

    private static void setLights(NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        if (!BooleanUtils.getValue(notificationDetails.enableLights) || notificationDetails.ledOnMs == null || notificationDetails.ledOffMs == null) {
            return;
        }
        dVar.a(notificationDetails.ledColor.intValue(), notificationDetails.ledOnMs.intValue(), notificationDetails.ledOffMs.intValue());
    }

    private static void setMediaStyle(NotificationCompat.d dVar) {
        dVar.a(new androidx.media.j.a());
    }

    private static void setMessagingStyle(Context context, NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        MessagingStyleInformation messagingStyleInformation = (MessagingStyleInformation) notificationDetails.styleInformation;
        NotificationCompat.f fVar = new NotificationCompat.f(buildPerson(context, messagingStyleInformation.person));
        fVar.a(BooleanUtils.getValue(messagingStyleInformation.groupConversation));
        String str = messagingStyleInformation.conversationTitle;
        if (str != null) {
            fVar.a(str);
        }
        ArrayList<MessageDetails> arrayList = messagingStyleInformation.messages;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<MessageDetails> it = messagingStyleInformation.messages.iterator();
            while (it.hasNext()) {
                fVar.a(createMessage(context, it.next()));
            }
        }
        dVar.a(fVar);
    }

    private static void setProgress(NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        if (BooleanUtils.getValue(notificationDetails.showProgress)) {
            dVar.a(notificationDetails.maxProgress.intValue(), notificationDetails.progress.intValue(), notificationDetails.indeterminate.booleanValue());
        }
    }

    private static void setSmallIcon(Context context, NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        if (!StringUtils.isNullOrEmpty(notificationDetails.icon).booleanValue()) {
            dVar.f(getDrawableResourceId(context, notificationDetails.icon));
            return;
        }
        String string = context.getSharedPreferences(SHARED_PREFERENCES_KEY, 0).getString(DEFAULT_ICON, null);
        if (StringUtils.isNullOrEmpty(string).booleanValue()) {
            dVar.f(notificationDetails.iconResourceId.intValue());
        } else {
            dVar.f(getDrawableResourceId(context, string));
        }
    }

    private static void setSound(Context context, NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        if (BooleanUtils.getValue(notificationDetails.playSound)) {
            dVar.a(retrieveSoundResourceUri(context, notificationDetails.sound, notificationDetails.soundSource));
        } else {
            dVar.a((Uri) null);
        }
    }

    private static void setStyle(Context context, NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        int i2 = b.f3413c[notificationDetails.style.ordinal()];
        if (i2 == 1) {
            setBigPictureStyle(context, notificationDetails, dVar);
            return;
        }
        if (i2 == 2) {
            setBigTextStyle(notificationDetails, dVar);
            return;
        }
        if (i2 == 3) {
            setInboxStyle(notificationDetails, dVar);
        } else if (i2 == 4) {
            setMessagingStyle(context, notificationDetails, dVar);
        } else {
            if (i2 != 5) {
                return;
            }
            setMediaStyle(dVar);
        }
    }

    private static void setTimeoutAfter(NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        Long l2 = notificationDetails.timeoutAfter;
        if (l2 == null) {
            return;
        }
        dVar.a(l2.longValue());
    }

    private static void setVibrationPattern(NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        if (BooleanUtils.getValue(notificationDetails.enableVibration)) {
            long[] jArr = notificationDetails.vibrationPattern;
            if (jArr == null || jArr.length <= 0) {
                return;
            }
            dVar.a(jArr);
            return;
        }
        dVar.a(new long[]{0});
    }

    private static void setVisibility(NotificationDetails notificationDetails, NotificationCompat.d dVar) {
        Integer num = notificationDetails.visibility;
        if (num == null) {
            return;
        }
        int intValue = num.intValue();
        int i2 = 1;
        if (intValue == 0) {
            i2 = 0;
        } else if (intValue != 1) {
            if (intValue != 2) {
                throw new IllegalArgumentException("Unknown index: " + notificationDetails.visibility);
            }
            i2 = -1;
        }
        dVar.g(i2);
    }

    private static void setupNotificationChannel(Context context, NotificationChannelDetails notificationChannelDetails) {
        Integer num;
        NotificationChannelAction notificationChannelAction;
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel(notificationChannelDetails.id);
            if (!(notificationChannel == null && ((notificationChannelAction = notificationChannelDetails.channelAction) == null || notificationChannelAction == NotificationChannelAction.CreateIfNotExists)) && (notificationChannel == null || notificationChannelDetails.channelAction != NotificationChannelAction.Update)) {
                return;
            }
            NotificationChannel notificationChannel2 = new NotificationChannel(notificationChannelDetails.id, notificationChannelDetails.name, notificationChannelDetails.importance.intValue());
            notificationChannel2.setDescription(notificationChannelDetails.description);
            notificationChannel2.setGroup(notificationChannelDetails.groupId);
            if (notificationChannelDetails.playSound.booleanValue()) {
                notificationChannel2.setSound(retrieveSoundResourceUri(context, notificationChannelDetails.sound, notificationChannelDetails.soundSource), new AudioAttributes.Builder().setUsage(5).build());
            } else {
                notificationChannel2.setSound(null, null);
            }
            notificationChannel2.enableVibration(BooleanUtils.getValue(notificationChannelDetails.enableVibration));
            long[] jArr = notificationChannelDetails.vibrationPattern;
            if (jArr != null && jArr.length > 0) {
                notificationChannel2.setVibrationPattern(jArr);
            }
            boolean value = BooleanUtils.getValue(notificationChannelDetails.enableLights);
            notificationChannel2.enableLights(value);
            if (value && (num = notificationChannelDetails.ledColor) != null) {
                notificationChannel2.setLightColor(num.intValue());
            }
            notificationChannel2.setShowBadge(BooleanUtils.getValue(notificationChannelDetails.showBadge));
            notificationManager.createNotificationChannel(notificationChannel2);
        }
    }

    private void show(j jVar, k.d dVar) {
        NotificationDetails extractNotificationDetails = extractNotificationDetails(dVar, (Map) jVar.a());
        if (extractNotificationDetails != null) {
            showNotification(this.applicationContext, extractNotificationDetails);
            dVar.a(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void showNotification(Context context, NotificationDetails notificationDetails) {
        getNotificationManager(context).a(notificationDetails.id.intValue(), createNotification(context, notificationDetails));
    }

    private void zonedSchedule(j jVar, k.d dVar) {
        NotificationDetails extractNotificationDetails = extractNotificationDetails(dVar, (Map) jVar.a());
        if (extractNotificationDetails != null) {
            if (extractNotificationDetails.matchDateTimeComponents != null) {
                extractNotificationDetails.scheduledDateTime = getNextFireDateMatchingDateTimeComponents(extractNotificationDetails);
            }
            zonedScheduleNotification(this.applicationContext, extractNotificationDetails, true);
            dVar.a(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zonedScheduleNextNotification(Context context, NotificationDetails notificationDetails) {
        initAndroidThreeTen(context);
        String nextFireDate = getNextFireDate(notificationDetails);
        if (nextFireDate == null) {
            return;
        }
        notificationDetails.scheduledDateTime = nextFireDate;
        zonedScheduleNotification(context, notificationDetails, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zonedScheduleNextNotificationMatchingDateComponents(Context context, NotificationDetails notificationDetails) {
        initAndroidThreeTen(context);
        String nextFireDateMatchingDateTimeComponents = getNextFireDateMatchingDateTimeComponents(notificationDetails);
        if (nextFireDateMatchingDateTimeComponents == null) {
            return;
        }
        notificationDetails.scheduledDateTime = nextFireDateMatchingDateTimeComponents;
        zonedScheduleNotification(context, notificationDetails, true);
    }

    private static void zonedScheduleNotification(Context context, NotificationDetails notificationDetails, Boolean bool) {
        String a2 = buildGson().a(notificationDetails);
        Intent intent = new Intent(context, (Class<?>) ScheduledNotificationReceiver.class);
        intent.putExtra(NOTIFICATION_DETAILS, a2);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, notificationDetails.id.intValue(), intent, 134217728);
        AlarmManager alarmManager = getAlarmManager(context);
        long epochMilli = Build.VERSION.SDK_INT >= 26 ? ZonedDateTime.of(LocalDateTime.parse(notificationDetails.scheduledDateTime), ZoneId.of(notificationDetails.timeZoneName)).toInstant().toEpochMilli() : t.of(g.parse(notificationDetails.scheduledDateTime), q.of(notificationDetails.timeZoneName)).toInstant().toEpochMilli();
        if (BooleanUtils.getValue(notificationDetails.allowWhileIdle)) {
            androidx.core.app.c.b(alarmManager, 0, epochMilli, broadcast);
        } else {
            androidx.core.app.c.a(alarmManager, 0, epochMilli, broadcast);
        }
        if (bool.booleanValue()) {
            saveScheduledNotification(context, notificationDetails);
        }
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        cVar.a(this);
        this.mainActivity = cVar.getActivity();
        this.launchIntent = this.mainActivity.getIntent();
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        this.mainActivity = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        this.mainActivity = null;
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1889739879:
                if (str.equals(SHOW_WEEKLY_AT_DAY_AND_TIME_METHOD)) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -1873731438:
                if (str.equals(DELETE_NOTIFICATION_CHANNEL_GROUP_METHOD)) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case -1367724422:
                if (str.equals("cancel")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -799130106:
                if (str.equals(PENDING_NOTIFICATION_REQUESTS_METHOD)) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case -697920873:
                if (str.equals(SCHEDULE_METHOD)) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -208611345:
                if (str.equals(GET_NOTIFICATION_APP_LAUNCH_DETAILS_METHOD)) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 3529469:
                if (str.equals(SHOW_METHOD)) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 6625712:
                if (str.equals(PERIODICALLY_SHOW_METHOD)) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 476547271:
                if (str.equals(CANCEL_ALL_METHOD)) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 548573423:
                if (str.equals(ZONED_SCHEDULE_METHOD)) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 767006947:
                if (str.equals(CREATE_NOTIFICATION_CHANNEL_GROUP_METHOD)) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 871091088:
                if (str.equals(INITIALIZE_METHOD)) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1008472557:
                if (str.equals(DELETE_NOTIFICATION_CHANNEL_METHOD)) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case 1408864732:
                if (str.equals(SHOW_DAILY_AT_TIME_METHOD)) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 1594833996:
                if (str.equals(GET_ACTIVE_NOTIFICATIONS_METHOD)) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case 1653467900:
                if (str.equals(CREATE_NOTIFICATION_CHANNEL_METHOD)) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                initialize(jVar, dVar);
                return;
            case 1:
                getNotificationAppLaunchDetails(dVar);
                return;
            case 2:
                show(jVar, dVar);
                return;
            case 3:
                schedule(jVar, dVar);
                return;
            case 4:
                zonedSchedule(jVar, dVar);
                return;
            case 5:
            case 6:
            case 7:
                repeat(jVar, dVar);
                return;
            case '\b':
                cancel(jVar, dVar);
                return;
            case '\t':
                cancelAllNotifications(dVar);
                return;
            case '\n':
                pendingNotificationRequests(dVar);
                return;
            case 11:
                createNotificationChannelGroup(jVar, dVar);
                return;
            case '\f':
                deleteNotificationChannelGroup(jVar, dVar);
                return;
            case '\r':
                createNotificationChannel(jVar, dVar);
                return;
            case 14:
                deleteNotificationChannel(jVar, dVar);
                return;
            case 15:
                getActiveNotifications(dVar);
                return;
            default:
                dVar.a();
                return;
        }
    }

    @Override // g.a.c.a.m.b
    public boolean onNewIntent(Intent intent) {
        Activity activity;
        boolean booleanValue = sendNotificationPayloadMessage(intent).booleanValue();
        if (booleanValue && (activity = this.mainActivity) != null) {
            activity.setIntent(intent);
        }
        return booleanValue;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        cVar.a(this);
        this.mainActivity = cVar.getActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        onAttachedToEngine(bVar.a(), bVar.b());
    }
}
