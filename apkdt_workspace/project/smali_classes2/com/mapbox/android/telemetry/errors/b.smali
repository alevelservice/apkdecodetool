.class public final Lcom/mapbox/android/telemetry/errors/b;
.super Ljava/lang/Object;
.source "ErrorReporterEngine.java"


# direct methods
.method static a(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.mapbox.android.telemetry"

    invoke-static {v0, v1}, Le/m/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mapbox/android/telemetry/errors/a;->a(Landroid/content/Context;)Lcom/mapbox/android/telemetry/errors/a;

    move-result-object p0

    .line 10
    invoke-virtual {p0, v0}, Lcom/mapbox/android/telemetry/errors/a;->a(Ljava/io/File;)Lcom/mapbox/android/telemetry/errors/a;

    .line 11
    invoke-static {p0}, Lcom/mapbox/android/telemetry/errors/b;->a(Lcom/mapbox/android/telemetry/errors/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {p0}, La/n/a/a;->a(Landroid/content/Context;)La/n/a/a;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.mapbox.android.telemetry.action.TOKEN_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, La/n/a/a;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mapbox/android/telemetry/errors/b$a;

    invoke-direct {v0, p0}, Lcom/mapbox/android/telemetry/errors/b$a;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static a(Lcom/mapbox/android/telemetry/errors/a;)V
    .locals 3
    .param p0    # Lcom/mapbox/android/telemetry/errors/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/mapbox/android/telemetry/errors/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mapbox/android/telemetry/errors/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/mapbox/android/telemetry/errors/a;->c()Lcom/mapbox/android/telemetry/CrashEvent;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/mapbox/android/telemetry/errors/a;->b(Lcom/mapbox/android/telemetry/CrashEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip duplicate crash in this batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/CrashEvent;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v0}, Lcom/mapbox/android/telemetry/errors/a;->a(Lcom/mapbox/android/telemetry/CrashEvent;)Z

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mapbox/android/telemetry/errors/a;->c(Lcom/mapbox/android/telemetry/CrashEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0, v0}, Lcom/mapbox/android/telemetry/errors/a;->a(Lcom/mapbox/android/telemetry/CrashEvent;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
