.class Lio/flutter/plugins/firebase/messaging/s;
.super Ljava/lang/Object;
.source "FlutterFirebaseMessagingUtils.java"


# direct methods
.method static a(Ljava/util/Map;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/messaging/FirebaseMessaging;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->b()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/firebase/messaging/RemoteMessage$c;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/RemoteMessage$c;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->n()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "titleLocKey"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->o()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->o()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "titleLocArgs"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 32
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 34
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bodyLocKey"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_4
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->b()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 36
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "bodyLocArgs"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_5
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "channelId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_6
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 40
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "clickAction"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_7
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 42
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "color"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_8
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 44
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "smallIcon"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_9
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->h()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 46
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->h()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageUrl"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_a
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->i()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 48
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "link"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_b
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->j()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 50
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->j()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "count"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_c
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->k()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 52
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->k()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "priority"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_d
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sound"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_e
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 56
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ticker"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_f
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->q()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 58
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage$c;->q()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "visibility"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string p0, "android"

    .line 59
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static a(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/RemoteMessage;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "collapseKey"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "from"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->r()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "to"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "messageId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "messageType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->k()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->k()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string v2, "data"

    .line 17
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ttl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->q()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sentTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->p()Lcom/google/firebase/messaging/RemoteMessage$c;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->p()Lcom/google/firebase/messaging/RemoteMessage$c;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/s;->a(Lcom/google/firebase/messaging/RemoteMessage$c;)Ljava/util/Map;

    move-result-object p0

    const-string v1, "notification"

    .line 22
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method static a(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "keyguard"

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "activity"

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    return v1

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 66
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_3

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 67
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method static b(Ljava/util/Map;)Lcom/google/firebase/messaging/RemoteMessage;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/messaging/RemoteMessage;"
        }
    .end annotation

    const-string v0, "message"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v0, "to"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/google/firebase/messaging/RemoteMessage$b;

    invoke-direct {v1, v0}, Lcom/google/firebase/messaging/RemoteMessage$b;-><init>(Ljava/lang/String;)V

    const-string v0, "collapseKey"

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "messageId"

    .line 5
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "messageType"

    .line 6
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "ttl"

    .line 7
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "data"

    .line 8
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/RemoteMessage$b;->a(Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$b;

    :cond_0
    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v1, v3}, Lcom/google/firebase/messaging/RemoteMessage$b;->c(Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$b;

    :cond_1
    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/RemoteMessage$b;->b(Ljava/lang/String;)Lcom/google/firebase/messaging/RemoteMessage$b;

    :cond_2
    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/RemoteMessage$b;->a(I)Lcom/google/firebase/messaging/RemoteMessage$b;

    :cond_3
    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {v1, p0}, Lcom/google/firebase/messaging/RemoteMessage$b;->a(Ljava/util/Map;)Lcom/google/firebase/messaging/RemoteMessage$b;

    .line 14
    :cond_4
    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$b;->a()Lcom/google/firebase/messaging/RemoteMessage;

    move-result-object p0

    return-object p0
.end method
