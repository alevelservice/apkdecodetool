.class public final Lcom/google/firebase/iid/z;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.0.1"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final a:J

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/android/gms/stats/a;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "WakeLockHolder.syncObject"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/z;->a:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/z;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/firebase/iid/z;->b:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/iid/z;->a(Landroid/content/Context;)V

    .line 11
    invoke-static {p1}, Lcom/google/firebase/iid/z;->b(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x1

    .line 12
    invoke-static {p1, v2}, Lcom/google/firebase/iid/z;->a(Landroid/content/Intent;Z)V

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez v1, :cond_1

    sget-object p1, Lcom/google/firebase/iid/z;->c:Lcom/google/android/gms/stats/a;

    sget-wide v1, Lcom/google/firebase/iid/z;->a:J

    .line 15
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/stats/a;->a(J)V

    .line 16
    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "WakeLockHolder.syncObject"
    .end annotation

    sget-object v0, Lcom/google/firebase/iid/z;->c:Lcom/google/android/gms/stats/a;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lcom/google/android/gms/stats/a;

    const/4 v1, 0x1

    const-string v2, "wake:com.google.firebase.iid.WakeLockHolder"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/stats/a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/iid/z;->c:Lcom/google/android/gms/stats/a;

    sget-object p0, Lcom/google/firebase/iid/z;->c:Lcom/google/android/gms/stats/a;

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/stats/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    sget-object v0, Lcom/google/firebase/iid/z;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/z;->c:Lcom/google/android/gms/stats/a;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/google/firebase/iid/z;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v1}, Lcom/google/firebase/iid/z;->a(Landroid/content/Intent;Z)V

    sget-object p0, Lcom/google/firebase/iid/z;->c:Lcom/google/android/gms/stats/a;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/stats/a;->a()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Landroid/content/Intent;Z)V
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method static b(Landroid/content/Intent;)Z
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
