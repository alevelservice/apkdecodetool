.class public Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;
.super Ljava/lang/Object;
.source "ZolozBuildConfig.java"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private gwLogUrl:Ljava/lang/String;

.field private gwUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zoloz/builder/buildconfig/ZolozConfig;
    .locals 2

    .line 1
    invoke-static {}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getInstance()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->gwUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->setGwUrl(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getInstance()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->gwLogUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->setGwLogUrl(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getInstance()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->setDeviceId(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getInstance()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setGWLogUrl(Ljava/lang/String;)Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->gwLogUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setGWUrl(Ljava/lang/String;)Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->gwUrl:Ljava/lang/String;

    return-object p0
.end method
