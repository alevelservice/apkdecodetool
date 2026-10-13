.class public Lcom/mapbox/mapboxsdk/offline/OfflineManager;
.super Ljava/lang/Object;
.source "OfflineManager.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;,
        Lcom/mapbox/mapboxsdk/offline/OfflineManager$MergeOfflineRegionsCallback;,
        Lcom/mapbox/mapboxsdk/offline/OfflineManager$CreateOfflineRegionCallback;,
        Lcom/mapbox/mapboxsdk/offline/OfflineManager$ListOfflineRegionsCallback;
    }
.end annotation


# static fields
.field private static d:Lcom/mapbox/mapboxsdk/offline/OfflineManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/storage/FileSource;

.field private final b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private nativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/mapbox/mapboxsdk/b;->a()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->b:Landroid/os/Handler;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->c:Landroid/content/Context;

    .line 4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/storage/FileSource;->d(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/storage/FileSource;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->a:Lcom/mapbox/mapboxsdk/storage/FileSource;

    .line 5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->a:Lcom/mapbox/mapboxsdk/storage/FileSource;

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->initialize(Lcom/mapbox/mapboxsdk/storage/FileSource;)V

    .line 6
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/offline/OfflineManager;)Lcom/mapbox/mapboxsdk/storage/FileSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->a:Lcom/mapbox/mapboxsdk/storage/FileSource;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/storage/FileSource;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mbgl-cache.db"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/offline/OfflineManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/offline/OfflineManager;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/mapbox/mapboxsdk/offline/OfflineManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->d:Lcom/mapbox/mapboxsdk/offline/OfflineManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/mapbox/mapboxsdk/offline/OfflineManager;

    invoke-direct {v1, p0}, Lcom/mapbox/mapboxsdk/offline/OfflineManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->d:Lcom/mapbox/mapboxsdk/offline/OfflineManager;

    .line 4
    :cond_0
    sget-object p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->d:Lcom/mapbox/mapboxsdk/offline/OfflineManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private native createOfflineRegion(Lcom/mapbox/mapboxsdk/storage/FileSource;Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;[BLcom/mapbox/mapboxsdk/offline/OfflineManager$CreateOfflineRegionCallback;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native initialize(Lcom/mapbox/mapboxsdk/storage/FileSource;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native listOfflineRegions(Lcom/mapbox/mapboxsdk/storage/FileSource;Lcom/mapbox/mapboxsdk/offline/OfflineManager$ListOfflineRegionsCallback;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native mergeOfflineRegions(Lcom/mapbox/mapboxsdk/storage/FileSource;Ljava/lang/String;Lcom/mapbox/mapboxsdk/offline/OfflineManager$MergeOfflineRegionsCallback;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeClearAmbientCache(Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;)V
    .param p1    # Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeInvalidateAmbientCache(Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;)V
    .param p1    # Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativePackDatabase(Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;)V
    .param p1    # Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeResetDatabase(Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;)V
    .param p1    # Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetMaximumAmbientCacheSize(JLcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;)V
    .param p3    # Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->a:Lcom/mapbox/mapboxsdk/storage/FileSource;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/storage/FileSource;->activate()V

    .line 5
    new-instance v0, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/mapboxsdk/offline/OfflineManager$a;-><init>(Lcom/mapbox/mapboxsdk/offline/OfflineManager;Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;)V

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/offline/OfflineManager;->nativeInvalidateAmbientCache(Lcom/mapbox/mapboxsdk/offline/OfflineManager$FileSourceCallback;)V

    return-void
.end method

.method protected native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native putResourceWithUrl(Ljava/lang/String;[BJJLjava/lang/String;Z)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native runPackDatabaseAutomatically(Z)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setOfflineMapboxTileCountLimit(J)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
