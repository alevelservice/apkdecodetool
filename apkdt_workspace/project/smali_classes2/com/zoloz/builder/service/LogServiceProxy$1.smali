.class Lcom/zoloz/builder/service/LogServiceProxy$1;
.super Ljava/lang/Object;
.source "LogServiceProxy.java"

# interfaces
.implements Le/b/b/a/a/a/b;


# instance fields
.field final synthetic this$0:Lcom/zoloz/builder/service/LogServiceProxy;


# direct methods
.method constructor <init>(Lcom/zoloz/builder/service/LogServiceProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/builder/service/LogServiceProxy$1;->this$0:Lcom/zoloz/builder/service/LogServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->getStaticApDidToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
