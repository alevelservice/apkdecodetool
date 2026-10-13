.class final Lcom/zoloz/builder/buildconfig/ZolozConfig$1;
.super Lcom/alipay/mobile/security/bio/utils/Logger;
.source "ZolozConfig.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/utils/Logger;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/p/b;->a()Z

    move-result p1

    const/4 p1, 0x0

    return p1
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/p/b;->a()Z

    move-result p1

    const/4 p1, 0x0

    return p1
.end method

.method protected getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/p/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/p/b;->a()Z

    move-result p1

    const/4 p1, 0x0

    return p1
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/p/b;->a()Z

    move-result p1

    const/4 p1, 0x0

    return p1
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/p/b;->a()Z

    move-result p1

    const/4 p1, 0x0

    return p1
.end method
