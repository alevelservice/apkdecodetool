.class public Lcom/mapbox/mapboxsdk/storage/FileSource;
.super Ljava/lang/Object;
.source "FileSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/storage/FileSource$a;,
        Lcom/mapbox/mapboxsdk/storage/FileSource$ResourcesCachePathChangeCallback;,
        Lcom/mapbox/mapboxsdk/storage/FileSource$ResourceTransformCallback;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/locks/Lock;

.field private static final b:Ljava/util/concurrent/locks/Lock;

.field private static c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static d:Ljava/lang/String;

.field private static e:Lcom/mapbox/mapboxsdk/storage/FileSource;


# instance fields
.field private nativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->a:Ljava/util/concurrent/locks/Lock;

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->b:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mapbox/mapboxsdk/storage/FileSource;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Lcom/mapbox/mapboxsdk/storage/FileSource;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/mapbox/mapboxsdk/storage/FileSource;->d()V

    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "MapboxSharedPreferences"

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "fileSourceResourcesCachePath"

    const/4 v4, 0x0

    .line 3
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/mapbox/mapboxsdk/storage/FileSource;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 7
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v2
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/mapbox/mapboxsdk/storage/FileSource;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static b()Z
    .locals 2

    .line 8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Mbgl-FileSource"

    const-string v1, "External storage was requested but it isn\'t readable. For API level < 18 make sure you\'ve requested READ_EXTERNAL_STORAGE or WRITE_EXTERNAL_STORAGE permissions in your app Manifest (defaulting to internal storage)."

    .line 10
    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mapbox/mapboxsdk/storage/FileSource;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c()V
    .locals 1

    .line 7
    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/storage/FileSource;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-class v0, Lcom/mapbox/mapboxsdk/storage/FileSource;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mapbox/mapboxsdk/storage/FileSource;->e:Lcom/mapbox/mapboxsdk/storage/FileSource;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mapbox/mapboxsdk/storage/FileSource;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/mapbox/mapboxsdk/storage/FileSource;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/mapbox/mapboxsdk/storage/FileSource;->e:Lcom/mapbox/mapboxsdk/storage/FileSource;

    .line 3
    :cond_0
    sget-object p0, Lcom/mapbox/mapboxsdk/storage/FileSource;->e:Lcom/mapbox/mapboxsdk/storage/FileSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static d()V
    .locals 1

    .line 4
    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mapbox/mapboxsdk/storage/FileSource;->d:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object p0, Lcom/mapbox/mapboxsdk/storage/FileSource;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mapbox/mapboxsdk/storage/FileSource;->c:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object p0, Lcom/mapbox/mapboxsdk/storage/FileSource;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw p0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "Mbgl-FileSource"

    .line 1
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/g;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/mapbox/mapboxsdk/storage/FileSource;->c()V

    .line 3
    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mapbox/mapboxsdk/storage/FileSource;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4
    :cond_0
    new-instance v0, Lcom/mapbox/mapboxsdk/storage/FileSource$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/storage/FileSource$a;-><init>(Lcom/mapbox/mapboxsdk/storage/a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Mbgl-FileSource"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 2
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 3
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.mapbox.SetStorageExternal"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "Failed to read the storage key: "

    .line 4
    invoke-static {v0, v2, p0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/d;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v2, "Failed to read the package metadata: "

    .line 6
    invoke-static {v0, v2, p0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/d;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v1
.end method

.method private native initialize(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native setResourceCachePath(Ljava/lang/String;Lcom/mapbox/mapboxsdk/storage/FileSource$ResourcesCachePathChangeCallback;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native activate()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native deactivate()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native getAccessToken()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public native isActivated()Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setAccessToken(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setApiBaseUrl(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setResourceTransform(Lcom/mapbox/mapboxsdk/storage/FileSource$ResourceTransformCallback;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
