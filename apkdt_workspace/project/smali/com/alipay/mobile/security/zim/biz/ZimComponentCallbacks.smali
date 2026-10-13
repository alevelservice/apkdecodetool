.class public Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;
.super Ljava/lang/Object;
.source "ZimComponentCallbacks.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZimPlatform"

.field private static sInstance:Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;


# instance fields
.field protected mApplicationContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;
    .locals 2

    .line 1
    sget-object v0, Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;->sInstance:Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;->sInstance:Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 6
    sput-object v1, Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;->sInstance:Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;->sInstance:Lcom/alipay/mobile/security/zim/biz/ZimComponentCallbacks;

    return-object p0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged(newConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory(level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
