.class Lcom/google/firebase/messaging/e0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/e0$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/Object;

.field private static k:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "TOPIC_SYNC_TASK_LOCK"
    .end annotation
.end field

.field private static l:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "TOPIC_SYNC_TASK_LOCK"
    .end annotation
.end field


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/firebase/iid/r;

.field private final g:Landroid/os/PowerManager$WakeLock;

.field private final h:Lcom/google/firebase/messaging/d0;

.field private final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/e0;->j:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/messaging/d0;Landroid/content/Context;Lcom/google/firebase/iid/r;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/e0;->h:Lcom/google/firebase/messaging/d0;

    iput-object p2, p0, Lcom/google/firebase/messaging/e0;->e:Landroid/content/Context;

    iput-wide p4, p0, Lcom/google/firebase/messaging/e0;->i:J

    iput-object p3, p0, Lcom/google/firebase/messaging/e0;->f:Lcom/google/firebase/iid/r;

    const-string p1, "power"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "wake:com.google.firebase.messaging"

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/e0;->g:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit16 v0, v0, 0x8e

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Missing Permission: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/google/firebase/messaging/e0;->c()Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Lcom/google/firebase/messaging/e0;->j:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/e0;->l:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    sget-object v2, Lcom/google/firebase/messaging/e0;->l:Ljava/lang/Boolean;

    .line 3
    invoke-static {p0, v1, v2}, Lcom/google/firebase/messaging/e0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/google/firebase/messaging/e0;->l:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 6
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/firebase/messaging/e0;->l:Ljava/lang/Boolean;

    sget-object p0, Lcom/google/firebase/messaging/e0;->l:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->a(Ljava/lang/String;)Ljava/lang/String;

    return p2

    :cond_2
    return p0
.end method

.method static synthetic a(Lcom/google/firebase/messaging/e0;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/e0;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/firebase/messaging/e0;)Lcom/google/firebase/messaging/d0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/e0;->h:Lcom/google/firebase/messaging/d0;

    return-object p0
.end method

.method private declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->e:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Lcom/google/firebase/messaging/e0;->j:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/e0;->k:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string v1, "android.permission.WAKE_LOCK"

    sget-object v2, Lcom/google/firebase/messaging/e0;->k:Ljava/lang/Boolean;

    .line 2
    invoke-static {p0, v1, v2}, Lcom/google/firebase/messaging/e0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/google/firebase/messaging/e0;->k:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 5
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/firebase/messaging/e0;->k:Ljava/lang/Boolean;

    sget-object p0, Lcom/google/firebase/messaging/e0;->k:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic c(Lcom/google/firebase/messaging/e0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/e0;->e:Landroid/content/Context;

    return-object p0
.end method

.method private static c()Z
    .locals 6

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 1
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ne v2, v5, :cond_1

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    return v4
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->e:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->g:Landroid/os/PowerManager$WakeLock;

    .line 2
    sget-wide v1, Lcom/google/firebase/messaging/b;->a:J

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/e0;->h:Lcom/google/firebase/messaging/d0;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/d0;->a(Z)V

    iget-object v1, p0, Lcom/google/firebase/messaging/e0;->f:Lcom/google/firebase/iid/r;

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/iid/r;->e()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/messaging/e0;->h:Lcom/google/firebase/messaging/d0;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/d0;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->e:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->g:Landroid/os/PowerManager$WakeLock;

    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/firebase/messaging/e0;->e:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lcom/google/firebase/messaging/e0;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-direct {p0}, Lcom/google/firebase/messaging/e0;->b()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/firebase/messaging/e0$a;

    .line 10
    invoke-direct {v1, p0, p0}, Lcom/google/firebase/messaging/e0$a;-><init>(Lcom/google/firebase/messaging/e0;Lcom/google/firebase/messaging/e0;)V

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/messaging/e0$a;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->e:Landroid/content/Context;

    .line 12
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->g:Landroid/os/PowerManager$WakeLock;

    .line 13
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_3
    return-void

    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/google/firebase/messaging/e0;->h:Lcom/google/firebase/messaging/d0;

    .line 14
    invoke-virtual {v1}, Lcom/google/firebase/messaging/d0;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/firebase/messaging/e0;->h:Lcom/google/firebase/messaging/d0;

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/d0;->a(Z)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/messaging/e0;->h:Lcom/google/firebase/messaging/d0;

    iget-wide v2, p0, Lcom/google/firebase/messaging/e0;->i:J

    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/messaging/d0;->a(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->e:Landroid/content/Context;

    .line 19
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_5
    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->g:Landroid/os/PowerManager$WakeLock;

    .line 20
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_6
    const-string v2, "Failed to sync topics. Won\'t retry sync. "

    .line 21
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_6
    new-instance v1, Ljava/lang/String;

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/google/firebase/messaging/e0;->h:Lcom/google/firebase/messaging/d0;

    .line 24
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/d0;->a(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->e:Landroid/content/Context;

    .line 25
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_7
    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->g:Landroid/os/PowerManager$WakeLock;

    .line 26
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_7
    return-void

    :goto_2
    iget-object v1, p0, Lcom/google/firebase/messaging/e0;->e:Landroid/content/Context;

    .line 27
    invoke-static {v1}, Lcom/google/firebase/messaging/e0;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_8
    iget-object v1, p0, Lcom/google/firebase/messaging/e0;->g:Landroid/os/PowerManager$WakeLock;

    .line 28
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    .line 29
    :catch_5
    :cond_8
    throw v0
.end method
