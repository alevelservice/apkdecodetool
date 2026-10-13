.class public Le/d/c/a/b;
.super Ljava/lang/Object;
.source "ZolozPlugin.java"

# interfaces
.implements Lg/a/c/a/k$c;
.implements Lio/flutter/embedding/engine/g/a;
.implements Lio/flutter/embedding/engine/g/c/a;


# static fields
.field private static f:Lg/a/c/a/k;


# instance fields
.field private e:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/c;)V
    .locals 1

    .line 1
    new-instance p1, Lg/a/c/a/k;

    const-string v0, "zoloz_plugin"

    invoke-direct {p1, p2, v0}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    sput-object p1, Le/d/c/a/b;->f:Lg/a/c/a/k;

    .line 2
    sget-object p1, Le/d/c/a/b;->f:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method static synthetic a(Lg/a/c/a/k$d;Lcom/ap/zoloz/hummer/api/EkycResponse;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iget p1, p1, Lcom/ap/zoloz/hummer/api/EkycResponse;->code:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d6

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Le/d/c/a/b;->e:Landroid/app/Activity;

    .line 2
    iget-object p1, p0, Le/d/c/a/b;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Le/d/c/a/b;->a(Landroid/content/Context;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/d/c/a/b;->e:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/d/c/a/b;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    sget-object p1, Le/d/c/a/b;->f:Lg/a/c/a/k;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 3
    sput-object v0, Le/d/c/a/b;->f:Lg/a/c/a/k;

    :cond_0
    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7ef13e4e

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x491ee9f8

    if-eq v1, v2, :cond_1

    const v2, 0x60fba1c9

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "getMetaInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "initZolozSDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "startEkyc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_4

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto/16 :goto_3

    :cond_4
    const-string v0, "hummerLocale"

    .line 3
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v1, "en-EN"

    .line 5
    :goto_2
    new-instance v2, Lcom/ap/zoloz/hummer/api/EkycRequest;

    invoke-direct {v2}, Lcom/ap/zoloz/hummer/api/EkycRequest;-><init>()V

    const-string v3, "eKYCId"

    .line 6
    invoke-virtual {p1, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/ap/zoloz/hummer/api/EkycRequest;->eKYCId:Ljava/lang/String;

    .line 7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/ap/zoloz/hummer/api/EkycRequest;->bizConfig:Ljava/util/Map;

    .line 8
    iget-object v3, v2, Lcom/ap/zoloz/hummer/api/EkycRequest;->bizConfig:Ljava/util/Map;

    iget-object v4, p0, Le/d/c/a/b;->e:Landroid/app/Activity;

    const-string v5, "hummerContext"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v3, v2, Lcom/ap/zoloz/hummer/api/EkycRequest;->bizConfig:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rsaPublicKey"

    .line 10
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 13
    iget-object v1, v2, Lcom/ap/zoloz/hummer/api/EkycRequest;->bizConfig:Ljava/util/Map;

    const-string v3, "public_key"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "clientCfg"

    .line 14
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v2, Lcom/ap/zoloz/hummer/api/EkycRequest;->clientCfg:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object p1

    new-instance v0, Le/d/c/a/a;

    invoke-direct {v0, p2}, Le/d/c/a/a;-><init>(Lg/a/c/a/k$d;)V

    invoke-virtual {p1, v2, v0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->startEkyc(Lcom/ap/zoloz/hummer/api/EkycRequest;Lcom/ap/zoloz/hummer/api/IEkycCallback;)V

    goto :goto_3

    .line 16
    :cond_7
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    iget-object p1, p0, Le/d/c/a/b;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ap/zoloz/hummer/api/BaseFacade;->getMetaInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 18
    :cond_8
    iget-object v0, p0, Le/d/c/a/b;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gwUrl"

    .line 19
    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 20
    new-instance v1, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;

    invoke-direct {v1}, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;-><init>()V

    invoke-virtual {v1, v0}, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->setDeviceId(Ljava/lang/String;)Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->setGWUrl(Ljava/lang/String;)Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoloz/builder/buildconfig/ZolozBuildConfig;->build()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object p1

    .line 21
    iget-object v0, p0, Le/d/c/a/b;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->init(Landroid/app/Application;Lcom/zoloz/builder/buildconfig/ZolozConfig;)V

    .line 22
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/d/c/a/b;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    return-void
.end method
