.class public Lcom/alipay/iap/android/aplog/network/NetWorkProvider;
.super Ljava/lang/Object;
.source "NetWorkProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/iap/android/aplog/network/NetWorkProvider$LogNetworkConnReceiver;
    }
.end annotation


# static fields
.field public static c:Lcom/alipay/iap/android/aplog/network/NetWorkProvider; = null

.field private static d:J = 0x0L

.field private static e:I = -0x1


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/iap/android/aplog/network/NetWorkProvider$LogNetworkConnReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/iap/android/aplog/network/NetWorkProvider;Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->c(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/alipay/iap/android/aplog/network/NetWorkProvider;
    .locals 2

    const-class v0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->c:Lcom/alipay/iap/android/aplog/network/NetWorkProvider;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;

    invoke-direct {v1, p0}, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->c:Lcom/alipay/iap/android/aplog/network/NetWorkProvider;

    .line 3
    :cond_0
    sget-object p0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->c:Lcom/alipay/iap/android/aplog/network/NetWorkProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private c(Landroid/content/Context;)I
    .locals 7

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 6
    invoke-static {p1}, Lcom/alipay/iap/android/aplog/network/a;->a(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->e:I

    .line 7
    sput-wide v0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->d:J

    .line 8
    :cond_0
    sget p1, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->e:I

    return p1
.end method

.method public static declared-synchronized c()Lcom/alipay/iap/android/aplog/network/NetWorkProvider;
    .locals 3

    const-class v0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->c:Lcom/alipay/iap/android/aplog/network/NetWorkProvider;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->c:Lcom/alipay/iap/android/aplog/network/NetWorkProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "need createInstance before use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    const-string v0, "4g"

    return-object v0

    :cond_1
    const-string v0, "wifi"

    return-object v0

    :cond_2
    const-string v0, "3g"

    return-object v0

    :cond_3
    const-string v0, "2g"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider$LogNetworkConnReceiver;

    invoke-direct {v0, p0, p1}, Lcom/alipay/iap/android/aplog/network/NetWorkProvider$LogNetworkConnReceiver;-><init>(Lcom/alipay/iap/android/aplog/network/NetWorkProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->b:Lcom/alipay/iap/android/aplog/network/NetWorkProvider$LogNetworkConnReceiver;

    .line 3
    iget-object p1, p0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->b:Lcom/alipay/iap/android/aplog/network/NetWorkProvider$LogNetworkConnReceiver;

    invoke-virtual {p1}, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->register()V

    return-void
.end method

.method public b()I
    .locals 2

    .line 4
    sget v0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->c(Landroid/content/Context;)I

    .line 6
    :cond_1
    sget v0, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->e:I

    return v0
.end method
