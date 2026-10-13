.class public Lcom/example/first/flutter/intercept/interceptnext/MainApplication;
.super Lio/flutter/app/FlutterApplication;
.source "MainApplication.java"


# instance fields
.field private f:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/app/FlutterApplication;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/example/first/flutter/intercept/interceptnext/MainApplication;->f:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Landroidx/multidex/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/first/flutter/intercept/interceptnext/MainApplication;->f:Landroid/app/Activity;

    return-object v0
.end method

.method public onCreate()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0}, Lio/flutter/app/FlutterApplication;->onCreate()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gwLogUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "https://api.zhub.ims.interce.pt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;

    invoke-direct {v2}, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;-><init>()V

    invoke-virtual {v2, v0}, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->setDeviceId(Ljava/lang/String;)Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->setGWLogUrl(Ljava/lang/String;)Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->build()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->init(Landroid/app/Application;Lcom/zoloz/builder/buildconfig/ZolozConfig;)V

    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/first/flutter/intercept/interceptnext/MainApplication;->f:Landroid/app/Activity;

    return-void
.end method
