.class public Lcom/zoloz/builder/buildconfig/ZolozConfig;
.super Ljava/lang/Object;
.source "ZolozConfig.java"


# static fields
.field private static config:Lcom/zoloz/builder/buildconfig/ZolozConfig;


# instance fields
.field private appKey:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private gwLogUrl:Ljava/lang/String;

.field private gwUrl:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private workSpaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/zoloz/builder/buildconfig/ZolozConfig;
    .locals 2

    const-class v0, Lcom/zoloz/builder/buildconfig/ZolozConfig;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/zoloz/builder/buildconfig/ZolozConfig;->config:Lcom/zoloz/builder/buildconfig/ZolozConfig;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/zoloz/builder/buildconfig/ZolozConfig;

    invoke-direct {v1}, Lcom/zoloz/builder/buildconfig/ZolozConfig;-><init>()V

    sput-object v1, Lcom/zoloz/builder/buildconfig/ZolozConfig;->config:Lcom/zoloz/builder/buildconfig/ZolozConfig;

    .line 3
    :cond_0
    sget-object v1, Lcom/zoloz/builder/buildconfig/ZolozConfig;->config:Lcom/zoloz/builder/buildconfig/ZolozConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->initContainer(Landroid/app/Application;)V

    .line 5
    invoke-static {p0}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->initHummer(Landroid/content/Context;)V

    .line 6
    invoke-static {p0}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->initRpc(Landroid/app/Application;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/zoloz/builder/buildconfig/ZolozConfig;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->config:Lcom/zoloz/builder/buildconfig/ZolozConfig;

    if-eq p1, v0, :cond_0

    .line 2
    sput-object p1, Lcom/zoloz/builder/buildconfig/ZolozConfig;->config:Lcom/zoloz/builder/buildconfig/ZolozConfig;

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->init(Landroid/app/Application;)V

    return-void
.end method

.method private static initContainer(Landroid/app/Application;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v0

    sget v1, Lcom/zoloz/builder/R$raw;->ekyc_web:I

    invoke-virtual {v0, p0, v1}, Lcom/zoloz/webcontainer/q;->a(Landroid/content/Context;I)V

    .line 2
    invoke-static {p0}, Lcom/zoloz/webcontainer/i/a;->a(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zoloz/webcontainer/q;->a()Lcom/zoloz/webcontainer/l/d;

    move-result-object p0

    new-instance v0, Lcom/zoloz/builder/plugin/HummerFoundationLite;

    invoke-direct {v0}, Lcom/zoloz/builder/plugin/HummerFoundationLite;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zoloz/webcontainer/l/d;->a(Lcom/zoloz/webcontainer/n/d;)V

    .line 4
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zoloz/webcontainer/q;->a()Lcom/zoloz/webcontainer/l/d;

    move-result-object p0

    new-instance v0, Lcom/zoloz/builder/plugin/HummerIdentityLite;

    invoke-direct {v0}, Lcom/zoloz/builder/plugin/HummerIdentityLite;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zoloz/webcontainer/l/d;->a(Lcom/zoloz/webcontainer/n/d;)V

    .line 5
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object p0

    invoke-static {}, Lcom/zoloz/webcontainer/p/b;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zoloz/webcontainer/q;->a(Z)V

    .line 6
    new-instance p0, Lcom/zoloz/builder/buildconfig/ZolozConfig$1;

    invoke-direct {p0}, Lcom/zoloz/builder/buildconfig/ZolozConfig$1;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->setLogger(Lcom/alipay/mobile/security/bio/utils/Logger;)V

    .line 8
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->setLogger(Lcom/alipay/mobile/security/bio/utils/Logger;)V

    return-void
.end method

.method private static initHummer(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static initRpc(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/p/b;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2
    sput-boolean p0, Lcom/zoloz/rpc/RpcConfig;->k:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGwLogUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->gwLogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGwUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->gwUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkSpaceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->workSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setGwLogUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->gwLogUrl:Ljava/lang/String;

    return-void
.end method

.method public setGwUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->gwUrl:Ljava/lang/String;

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->lang:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoloz/webcontainer/q;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setWorkSpaceId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zoloz/builder/buildconfig/ZolozConfig;->workSpaceId:Ljava/lang/String;

    return-void
.end method
