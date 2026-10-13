.class public final Lcom/google/firebase/messaging/a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static a()I
    .locals 1

    sget-object v0, Lcom/google/firebase/messaging/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    .line 40
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "drawable"

    .line 41
    invoke-virtual {p1, p3, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/a;->a(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const-string v0, "mipmap"

    .line 43
    invoke-virtual {p1, p3, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/a;->a(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    return v0

    .line 45
    :cond_3
    :goto_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3d

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Icon resource "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not found. Notification will use default icon."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    const/4 p3, 0x0

    const-string v0, "com.google.firebase.messaging.default_notification_icon"

    .line 46
    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p4

    if-eqz p4, :cond_5

    .line 47
    invoke-static {p1, p4}, Lcom/google/firebase/messaging/a;->a(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 48
    :cond_5
    :try_start_0
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p4, p0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 49
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x23

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t get own application info: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    :goto_2
    const p0, 0x1080093

    if-eqz p4, :cond_8

    .line 50
    invoke-static {p1, p4}, Lcom/google/firebase/messaging/a;->a(Landroid/content/res/Resources;I)Z

    move-result p1

    if-nez p1, :cond_7

    return p0

    :cond_7
    move p0, p4

    :cond_8
    return p0
.end method

.method private static a(Lcom/google/firebase/messaging/v;)I
    .locals 2

    const-string v0, "gcm.n.default_sound"

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "gcm.n.default_vibrate_timings"

    .line 33
    invoke-virtual {p0, v1}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    const-string v1, "gcm.n.default_light_settings"

    .line 34
    invoke-virtual {p0, v1}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 p0, v0, 0x4

    return p0

    :cond_1
    return v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 4

    .line 12
    invoke-static {}, Lcom/google/firebase/messaging/a;->a()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.firebase.iid.FirebaseInstanceIdReceiver"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wrapped_intent"

    .line 14
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/google/firebase/messaging/v;)Landroid/app/PendingIntent;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    invoke-static {p1}, Lcom/google/firebase/messaging/a;->c(Lcom/google/firebase/messaging/v;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 9
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->i()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/a;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/google/firebase/messaging/v;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NOTIFICATION_OPEN"

    .line 61
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->i()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pending_intent"

    .line 63
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 64
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/a;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/google/firebase/messaging/v;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p2, p1, p3}, Lcom/google/firebase/messaging/a;->a(Ljava/lang/String;Lcom/google/firebase/messaging/v;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/high16 p3, 0x4000000

    .line 2
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->j()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/google/firebase/messaging/a;->a()I

    move-result p3

    const/high16 v0, 0x40000000    # 2.0f

    .line 5
    invoke-static {p0, p3, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 6
    invoke-static {p1}, Lcom/google/firebase/messaging/a;->c(Lcom/google/firebase/messaging/v;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    invoke-static {p0, p1, p2}, Lcom/google/firebase/messaging/a;->a(Landroid/content/Context;Lcom/google/firebase/messaging/v;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method

.method private static a(Ljava/lang/String;Lcom/google/firebase/messaging/v;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 2

    const-string v0, "gcm.n.click_action"

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    .line 18
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 20
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->b()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    .line 22
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p2

    .line 25
    :cond_1
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/google/firebase/messaging/v;Landroid/content/res/Resources;)Landroid/net/Uri;
    .locals 2

    .line 51
    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->f()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "default"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "raw"

    .line 54
    invoke-virtual {p2, p1, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 55
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x18

    add-int/2addr p2, v0

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "android.resource://"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/raw/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x2

    .line 56
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const/16 v0, 0x80

    .line 35
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 36
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 37
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 38
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x23

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Couldn\'t get own application info: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    :cond_0
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/messaging/v;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/os/Bundle;)Lcom/google/firebase/messaging/a$a;
    .locals 2

    .line 65
    new-instance v0, Landroidx/core/app/NotificationCompat$d;

    invoke-direct {v0, p0, p3}, Landroidx/core/app/NotificationCompat$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p3, "gcm.n.title"

    .line 66
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/firebase/messaging/v;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 67
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$d;->b(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$d;

    :cond_0
    const-string p3, "gcm.n.body"

    .line 69
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/firebase/messaging/v;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 70
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$d;->a(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$d;

    .line 72
    new-instance v1, Landroidx/core/app/NotificationCompat$b;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$b;-><init>()V

    invoke-virtual {v1, p3}, Landroidx/core/app/NotificationCompat$b;->a(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$d;->a(Landroidx/core/app/NotificationCompat$g;)Landroidx/core/app/NotificationCompat$d;

    :cond_1
    const-string p3, "gcm.n.icon"

    .line 73
    invoke-virtual {p2, p3}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 74
    invoke-static {p5, p4, p1, p3, p6}, Lcom/google/firebase/messaging/a;->a(Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p3

    .line 75
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$d;->f(I)Landroidx/core/app/NotificationCompat$d;

    .line 76
    invoke-static {p1, p2, p4}, Lcom/google/firebase/messaging/a;->a(Ljava/lang/String;Lcom/google/firebase/messaging/v;Landroid/content/res/Resources;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 77
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$d;->a(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$d;

    .line 78
    :cond_2
    invoke-static {p0, p2, p1, p5}, Lcom/google/firebase/messaging/a;->a(Landroid/content/Context;Lcom/google/firebase/messaging/v;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$d;

    .line 79
    invoke-static {p0, p2}, Lcom/google/firebase/messaging/a;->a(Landroid/content/Context;Lcom/google/firebase/messaging/v;)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 80
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$d;->b(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$d;

    :cond_3
    const-string p1, "gcm.n.color"

    .line 81
    invoke-virtual {p2, p1}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p6}, Lcom/google/firebase/messaging/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 82
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$d;->a(I)Landroidx/core/app/NotificationCompat$d;

    :cond_4
    const-string p0, "gcm.n.sticky"

    .line 83
    invoke-virtual {p2, p0}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    .line 84
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$d;->a(Z)Landroidx/core/app/NotificationCompat$d;

    const-string p0, "gcm.n.local_only"

    .line 85
    invoke-virtual {p2, p0}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    move-result p0

    .line 86
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$d;->c(Z)Landroidx/core/app/NotificationCompat$d;

    const-string p0, "gcm.n.ticker"

    .line 87
    invoke-virtual {p2, p0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 88
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$d;->d(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$d;

    .line 89
    :cond_5
    invoke-virtual {p2}, Lcom/google/firebase/messaging/v;->e()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 90
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$d;->e(I)Landroidx/core/app/NotificationCompat$d;

    .line 91
    :cond_6
    invoke-virtual {p2}, Lcom/google/firebase/messaging/v;->h()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 92
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$d;->g(I)Landroidx/core/app/NotificationCompat$d;

    .line 93
    :cond_7
    invoke-virtual {p2}, Lcom/google/firebase/messaging/v;->d()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 94
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$d;->d(I)Landroidx/core/app/NotificationCompat$d;

    :cond_8
    const-string p0, "gcm.n.event_time"

    .line 95
    invoke-virtual {p2, p0}, Lcom/google/firebase/messaging/v;->f(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 96
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$d;->f(Z)Landroidx/core/app/NotificationCompat$d;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Landroidx/core/app/NotificationCompat$d;->b(J)Landroidx/core/app/NotificationCompat$d;

    .line 98
    :cond_9
    invoke-virtual {p2}, Lcom/google/firebase/messaging/v;->g()[J

    move-result-object p0

    if-eqz p0, :cond_a

    .line 99
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$d;->a([J)Landroidx/core/app/NotificationCompat$d;

    .line 100
    :cond_a
    invoke-virtual {p2}, Lcom/google/firebase/messaging/v;->a()[I

    move-result-object p0

    const/4 p3, 0x0

    if-eqz p0, :cond_b

    aget p4, p0, p3

    aget p1, p0, p1

    const/4 p5, 0x2

    aget p0, p0, p5

    .line 101
    invoke-virtual {v0, p4, p1, p0}, Landroidx/core/app/NotificationCompat$d;->a(III)Landroidx/core/app/NotificationCompat$d;

    .line 102
    :cond_b
    invoke-static {p2}, Lcom/google/firebase/messaging/a;->a(Lcom/google/firebase/messaging/v;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$d;->b(I)Landroidx/core/app/NotificationCompat$d;

    new-instance p0, Lcom/google/firebase/messaging/a$a;

    .line 103
    invoke-static {p2}, Lcom/google/firebase/messaging/a;->b(Lcom/google/firebase/messaging/v;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p3}, Lcom/google/firebase/messaging/a$a;-><init>(Landroidx/core/app/NotificationCompat$d;Ljava/lang/String;I)V

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return-object v1

    .line 27
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 29
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x38

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Color is invalid: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Notification will use default color."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    const/4 p1, 0x0

    const-string v0, "com.google.firebase.messaging.default_notification_color"

    .line 30
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 31
    :try_start_1
    invoke-static {p0, p1}, Landroidx/core/content/a;->a(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_2
    return-object v1
.end method

.method private static a(Landroid/content/res/Resources;I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 58
    instance-of p0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x4d

    .line 59
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adaptive icons cannot be used in notifications. Ignoring icon id: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_1
    return v1

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x42

    .line 60
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Couldn\'t find resource "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", treating it as an invalid icon"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v2
.end method

.method static b(Landroid/content/Context;Lcom/google/firebase/messaging/v;)Lcom/google/firebase/messaging/a$a;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/messaging/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Lcom/google/firebase/messaging/a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    .line 6
    invoke-static/range {v2 .. v8}, Lcom/google/firebase/messaging/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/messaging/v;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/os/Bundle;)Lcom/google/firebase/messaging/a$a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_6

    const-class v0, Landroid/app/NotificationManager;

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object p1

    .line 12
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x7a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Notification Channel requested ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") has not been created by the app. Manifest configuration, or default, value will be used."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    const-string p1, "com.google.firebase.messaging.default_notification_channel_id"

    .line 13
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 15
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p1

    :cond_3
    const-string p1, "fcm_fallback_notification_channel"

    .line 16
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p2

    if-nez p2, :cond_5

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fcm_fallback_notification_channel_label"

    const-string v3, "string"

    .line 19
    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_4

    const-string p0, "Misc"

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 21
    :goto_0
    new-instance p2, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    invoke-direct {p2, p1, p0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_5
    return-object p1

    :catch_0
    :cond_6
    return-object v2
.end method

.method private static b(Lcom/google/firebase/messaging/v;)Ljava/lang/String;
    .locals 3

    const-string v0, "gcm.n.tag"

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "FCM-Notification:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Lcom/google/firebase/messaging/v;)Z
    .locals 1
    .param p0    # Lcom/google/firebase/messaging/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "google.c.a.e"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
