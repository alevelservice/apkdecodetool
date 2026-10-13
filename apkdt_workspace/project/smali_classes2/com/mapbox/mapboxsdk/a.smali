.class Lcom/mapbox/mapboxsdk/a;
.super Ljava/lang/Object;
.source "AccountsManager.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/a;->e:Z

    .line 3
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/mapbox/android/accounts/v1/MapboxAccounts;->obtainMapsSkuUserToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static a(JJ)Z
    .locals 1

    sub-long/2addr p0, p2

    const-wide/32 p2, 0x36ee80

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Ljava/lang/String;)J
    .locals 4

    .line 1
    invoke-static {}, Lcom/mapbox/mapboxsdk/a;->c()J

    move-result-wide v0

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->d()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "com.mapbox.mapboxsdk.accounts.timestamp"

    .line 3
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v3, "com.mapbox.mapboxsdk.accounts.skutoken"

    .line 4
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-wide v0
.end method

.method private b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    invoke-static {}, Lcom/mapbox/android/accounts/v1/MapboxAccounts;->obtainEndUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/a;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MapboxSharedPreferences"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/a;->a:Landroid/content/SharedPreferences;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/a;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private declared-synchronized e()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.mapbox.mapboxsdk.accounts.userid"

    const-string v2, ""

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/a;->b:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/a;->b:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.mapbox.mapboxsdk.accounts.userid"

    .line 8
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Mbgl-AccountsManager"

    const-string v1, "Failed to save user id."

    .line 10
    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/a;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->j()V

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/a;->e:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->k()V

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/mapbox/mapboxsdk/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/a;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/mapbox/mapboxsdk/a;->a(JJ)Z

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->i()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 3
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.mapbox.ManageSkuToken"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Mbgl-AccountsManager"

    const-string v3, "Failed to read the package metadata: "

    .line 4
    invoke-static {v2, v3, v1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method private i()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 1
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.mapbox.mapboxsdk.accounts.skutoken"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/mapboxsdk/a;->c:Ljava/lang/String;

    const-string v1, "com.mapbox.mapboxsdk.accounts.timestamp"

    const-wide/16 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/a;->d:J

    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/a;->c:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/a;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/a;->d:J

    :cond_1
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/a;->c:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/a;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/a;->d:J

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.mapbox.mapboxsdk.accounts.skutoken"

    const-string v2, ""

    .line 6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/a;->c:Ljava/lang/String;

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/a;->c:Ljava/lang/String;

    return-object v0
.end method
