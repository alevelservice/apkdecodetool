.class public Lcom/zoloz/builder/service/LogServiceProxy;
.super Lcom/ap/zoloz/hummer/common/HummerLogService;
.source "LogServiceProxy.java"


# static fields
.field public static TAG:Ljava/lang/String; = "LogServiceProxy"


# instance fields
.field private mSequenceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ap/zoloz/hummer/common/HummerLogService;-><init>()V

    return-void
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;->install(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Le/b/b/a/a/d/i;->a(Landroid/app/Application;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Le/b/b/a/a/d/i;->a(Landroid/app/Application;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Le/b/b/a/a/d/i;->a(Landroid/app/Application;)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getInstance()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getGwLogUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "http"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_2
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Le/b/b/a/a/a/d;->b(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Le/b/b/a/a/a/d;->e(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    const-string v0, "3F3B61F220828_ANDROID-prod"

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->a(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-interface {p1, v0, v1}, Le/b/b/a/a/a/d;->a(J)V

    .line 14
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    const/16 v0, 0x7de

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->a(I)V

    :cond_3
    return-void
.end method

.method public logBehavior(Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;Lcom/alipay/mobile/security/bio/log/VerifyBehavior;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/zoloz/builder/service/LogServiceProxy;->mSequenceId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zoloz/builder/service/LogServiceProxy;->mSequenceId:I

    .line 2
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    new-instance v0, Lcom/zoloz/builder/service/LogServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/zoloz/builder/service/LogServiceProxy$1;-><init>(Lcom/zoloz/builder/service/LogServiceProxy;)V

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/a/b;)V

    .line 3
    new-instance p1, Le/b/b/a/a/b/c/d;

    invoke-direct {p1}, Le/b/b/a/a/b/c/d;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->getSeedID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/b/b/a/a/b/c/d;->b(Ljava/lang/String;)Le/b/b/a/a/b/c/d;

    const-string v0, "zoloz"

    .line 5
    invoke-virtual {p1, v0}, Le/b/b/a/a/b/c/d;->d(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    :try_start_0
    sget-object v1, Lcom/ap/zoloz/hummer/common/HummerLogService;->config:Ljava/util/Map;

    const-string v2, "hummerId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ekycId"

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_0
    iget v1, p0, Lcom/zoloz/builder/service/LogServiceProxy;->mSequenceId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sequenceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->getExtParams()Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-virtual {p1, v1, v2}, Le/b/b/a/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_0
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    invoke-interface {p2, p1}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    return-void
.end method
