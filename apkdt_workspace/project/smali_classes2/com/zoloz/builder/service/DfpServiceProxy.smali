.class public Lcom/zoloz/builder/service/DfpServiceProxy;
.super Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;
.source "DfpServiceProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;-><init>()V

    return-void
.end method


# virtual methods
.method public getApDidToken()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getInstance()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getInstance()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/zoloz/dfp/a;->c()Lcom/zoloz/dfp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/dfp/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/zoloz/dfp/a;->a(Landroid/content/Context;)Lcom/zoloz/dfp/a;

    .line 2
    invoke-static {}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getInstance()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getInstance()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->sApdidToken:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/zoloz/dfp/a;->c()Lcom/zoloz/dfp/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoloz/dfp/a;->b()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->sApdidToken:Ljava/lang/String;

    :goto_0
    return-void
.end method
