.class public Lcom/zoloz/builder/service/RpcServiceProxy;
.super Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;
.source "RpcServiceProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RpcServiceProxy"

.field private static config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mRemoteUrl:Ljava/lang/String;


# instance fields
.field private customGW:Ljava/lang/String;

.field private invocationHandler:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zoloz/builder/service/RpcServiceProxy;->config:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/zoloz/builder/service/RpcServiceProxy;->customGW:Ljava/lang/String;

    return-void
.end method

.method private buildRpcImpl(Ljava/lang/Class;)Ljava/lang/reflect/InvocationHandler;
    .locals 2

    .line 1
    new-instance v0, Lcom/zoloz/rpc/c;

    invoke-direct {v0}, Lcom/zoloz/rpc/c;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/local/LocalService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/zoloz/rpc/c;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/zoloz/rpc/LiteInvocationHandler;

    move-result-object p1

    return-object p1
.end method

.method private changeRpcOperationType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/ap/zhubid/endpoint/gateway/facade/EkycGwFacade;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class p1, Lcom/zoloz/builder/EkycGwFacadeV2;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    const-class p1, Lcom/zoloz/builder/ZimDispatchJsonGwFacadeV2;

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/zoloz/builder/service/RpcServiceProxy;->changeRpcOperationType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/zoloz/builder/service/RpcServiceProxy;->buildRpcImpl(Ljava/lang/Class;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/builder/service/RpcServiceProxy;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/zoloz/builder/service/RpcServiceProxy;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/bio/service/local/LocalService;->onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    .line 2
    invoke-static {}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getInstance()Lcom/zoloz/builder/buildconfig/ZolozConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoloz/builder/buildconfig/ZolozConfig;->getGwUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoloz/builder/service/RpcServiceProxy;->customGW:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/zoloz/builder/service/RpcServiceProxy;->customGW:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/zoloz/builder/service/RpcServiceProxy;->customGW:Ljava/lang/String;

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zoloz/builder/service/RpcServiceProxy;->customGW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":8080/mgw.htm"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/zoloz/builder/service/RpcServiceProxy;->mRemoteUrl:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/zoloz/builder/service/RpcServiceProxy;->customGW:Ljava/lang/String;

    sput-object p1, Lcom/zoloz/builder/service/RpcServiceProxy;->mRemoteUrl:Ljava/lang/String;

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object p1

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Lcom/zoloz/rpc/RpcConfig;->setConnectTimeout(I)V

    .line 8
    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object p1

    const/16 v0, 0x7530

    invoke-virtual {p1, v0}, Lcom/zoloz/rpc/RpcConfig;->setReadTimeout(I)V

    .line 9
    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object p1

    const-string v0, "8E6E921251755"

    invoke-virtual {p1, v0}, Lcom/zoloz/rpc/RpcConfig;->setAppId(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object p1

    const-string v0, "phtest"

    invoke-virtual {p1, v0}, Lcom/zoloz/rpc/RpcConfig;->setWorkspaceId(Ljava/lang/String;)V

    return-void
.end method

.method public setExtProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/zoloz/builder/service/RpcServiceProxy;->config:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setRemoteUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/builder/service/RpcServiceProxy;->customGW:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/zoloz/builder/service/RpcServiceProxy;->customGW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 6
    :goto_0
    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoloz/rpc/RpcConfig;->setRemoteUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object p1

    sget-object v0, Lcom/zoloz/builder/service/RpcServiceProxy;->mRemoteUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zoloz/rpc/RpcConfig;->setRemoteUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoloz/rpc/RpcConfig;->setRemoteUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
