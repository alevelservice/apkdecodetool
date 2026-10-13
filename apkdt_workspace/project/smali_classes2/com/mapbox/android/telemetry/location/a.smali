.class public Lcom/mapbox/android/telemetry/location/a;
.super Ljava/lang/Object;
.source "LocationCollectionClient.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final g:Ljava/lang/Object;

.field private static h:Lcom/mapbox/android/telemetry/location/a;


# instance fields
.field final a:Lcom/mapbox/android/telemetry/location/b;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/mapbox/android/telemetry/location/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/HandlerThread;

.field private final e:Lcom/mapbox/android/telemetry/x;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/location/a;->g:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/mapbox/android/telemetry/location/b;Landroid/os/HandlerThread;Lcom/mapbox/android/telemetry/location/e;Landroid/content/SharedPreferences;Lcom/mapbox/android/telemetry/x;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/telemetry/location/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/HandlerThread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/android/telemetry/location/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mapbox/android/telemetry/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/location/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/location/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-object p1, p0, Lcom/mapbox/android/telemetry/location/a;->a:Lcom/mapbox/android/telemetry/location/b;

    .line 5
    iput-object p2, p0, Lcom/mapbox/android/telemetry/location/a;->d:Landroid/os/HandlerThread;

    .line 6
    iget-object p1, p0, Lcom/mapbox/android/telemetry/location/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    iput-object p5, p0, Lcom/mapbox/android/telemetry/location/a;->e:Lcom/mapbox/android/telemetry/x;

    .line 8
    iget-object p1, p0, Lcom/mapbox/android/telemetry/location/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance p1, Lcom/mapbox/android/telemetry/location/a$a;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/mapbox/android/telemetry/location/a$a;-><init>(Lcom/mapbox/android/telemetry/location/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mapbox/android/telemetry/location/a;->f:Landroid/os/Handler;

    .line 10
    invoke-direct {p0, p4}, Lcom/mapbox/android/telemetry/location/a;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)Lcom/mapbox/android/telemetry/location/a;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    :goto_0
    sget-object v0, Lcom/mapbox/android/telemetry/location/a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mapbox/android/telemetry/location/a;->h:Lcom/mapbox/android/telemetry/location/a;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/mapbox/android/telemetry/location/a;

    new-instance v3, Lcom/mapbox/android/telemetry/location/c;

    .line 6
    invoke-static {p0}, Le/m/a/a/d/f;->a(Landroid/content/Context;)Le/m/a/a/d/c;

    move-result-object v2

    new-instance v4, Lcom/mapbox/android/telemetry/location/LocationUpdatesBroadcastReceiver;

    invoke-direct {v4}, Lcom/mapbox/android/telemetry/location/LocationUpdatesBroadcastReceiver;-><init>()V

    invoke-direct {v3, p0, v2, v4}, Lcom/mapbox/android/telemetry/location/c;-><init>(Landroid/content/Context;Le/m/a/a/d/c;Lcom/mapbox/android/telemetry/location/LocationUpdatesBroadcastReceiver;)V

    new-instance v4, Landroid/os/HandlerThread;

    const-string v2, "LocationSettingsChangeThread"

    invoke-direct {v4, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/mapbox/android/telemetry/location/e;

    invoke-direct {v5, p1, p2}, Lcom/mapbox/android/telemetry/location/e;-><init>(J)V

    const-string p1, "MapboxSharedPreferences"

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Lcom/mapbox/android/telemetry/x;

    const-string p1, ""

    const-string v2, "%s/%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "mapbox-android-location"

    aput-object v9, v8, p2

    const/4 p2, 0x1

    const-string v9, "5.0.1"

    aput-object v9, v8, p2

    .line 8
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v7, p0, p1, p2}, Lcom/mapbox/android/telemetry/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/mapbox/android/telemetry/location/a;-><init>(Lcom/mapbox/android/telemetry/location/b;Landroid/os/HandlerThread;Lcom/mapbox/android/telemetry/location/e;Landroid/content/SharedPreferences;Lcom/mapbox/android/telemetry/x;)V

    sput-object v1, Lcom/mapbox/android/telemetry/location/a;->h:Lcom/mapbox/android/telemetry/location/a;

    .line 9
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object p0, Lcom/mapbox/android/telemetry/location/a;->h:Lcom/mapbox/android/telemetry/location/a;

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 4

    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/mapbox/android/telemetry/location/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "mapboxTelemetryLocationState"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    iget-object v1, p0, Lcom/mapbox/android/telemetry/location/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/android/telemetry/location/e;

    invoke-virtual {v1}, Lcom/mapbox/android/telemetry/location/e;->a()J

    move-result-wide v1

    const-string v3, "mapboxSessionRotationInterval"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static d()Lcom/mapbox/android/telemetry/location/a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/mapbox/android/telemetry/location/a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/mapbox/android/telemetry/location/a;->h:Lcom/mapbox/android/telemetry/location/a;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/mapbox/android/telemetry/location/a;->h:Lcom/mapbox/android/telemetry/location/a;

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LocationCollectionClient is not installed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mapbox/android/telemetry/location/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/android/telemetry/location/e;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/location/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(J)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/mapbox/android/telemetry/location/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/mapbox/android/telemetry/location/e;

    invoke-direct {v1, p1, p2}, Lcom/mapbox/android/telemetry/location/e;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method a(Landroid/os/Message;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 16
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/android/telemetry/location/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/mapbox/android/telemetry/location/a;->a:Lcom/mapbox/android/telemetry/location/b;

    invoke-interface {p1}, Lcom/mapbox/android/telemetry/location/b;->onResume()V

    .line 19
    iget-object p1, p0, Lcom/mapbox/android/telemetry/location/a;->e:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/x;->b()Z

    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/mapbox/android/telemetry/location/a;->a:Lcom/mapbox/android/telemetry/location/b;

    invoke-interface {p1}, Lcom/mapbox/android/telemetry/location/b;->onDestroy()V

    .line 21
    iget-object p1, p0, Lcom/mapbox/android/telemetry/location/a;->e:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/x;->a()Z

    :goto_0
    return-void
.end method

.method a(Z)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/mapbox/android/telemetry/location/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/mapbox/android/telemetry/location/a;->f:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method b()Lcom/mapbox/android/telemetry/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/location/a;->e:Lcom/mapbox/android/telemetry/x;

    return-object v0
.end method

.method c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/location/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "mapboxSessionRotationInterval"

    const-string v1, "mapboxTelemetryLocationState"

    .line 1
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/android/telemetry/location/a;->a(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    sget-object p2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    .line 5
    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 6
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/mapbox/android/telemetry/location/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
