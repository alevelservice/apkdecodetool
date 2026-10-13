.class public Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;
.super Ljava/lang/Object;
.source "RpcInvocationHandlerHost.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OperationType must be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "alipay.client.executerpc"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 3
    aget-object p1, p3, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "com.alipayintl.imobileprod.imcs.config.fetch"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string v0, "ap.mobileprod.amcs.config.fetch"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ap.mobileprod.amcs.config.local.fetch"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    invoke-static {}, Le/b/b/a/b/a/a;->a()Le/b/b/a/b/a/a;

    move-result-object v0

    const-string v3, "RPC_MPAAS_OPERATION_TYPE"

    invoke-virtual {v0, v3}, Le/b/b/a/b/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    sget-object v0, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->f:Ljava/lang/String;

    const-string v3, "get operation type config from cloud server, empty"

    invoke-static {v0, v3}, Le/b/b/a/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_5

    :cond_2
    const/4 v3, 0x0

    .line 10
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    sget-object v5, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->f:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get operation type config from cloud server success: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Le/b/b/a/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v4, v3

    .line 12
    :goto_0
    :try_start_3
    sget-object v6, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->f:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get operation type config from cloud server error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Le/b/b/a/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v4, :cond_5

    const/4 v0, 0x0

    .line 13
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ge v0, v5, :cond_5

    .line 14
    :try_start_4
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v5

    .line 15
    :try_start_5
    sget-object v6, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->f:Ljava/lang/String;

    const-string v7, "get operation type from json array error."

    invoke-static {v6, v7, v5}, Le/b/b/a/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v3

    .line 16
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 17
    :cond_4
    :goto_4
    sget-object v0, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->f:Ljava/lang/String;

    const-string v3, "operation type is cloud server"

    invoke-static {v0, v3}, Le/b/b/a/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_5
    :goto_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v1, :cond_7

    .line 19
    invoke-static {}, Lcom/alipay/iap/android/common/rpcintegration/a;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    sget-object v1, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use mpaas rpc proxy, operationType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Le/b/b/a/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/alipay/mobile/framework/service/common/MpaasRpcServiceFactory;->getInstance()Lcom/alipay/mobile/framework/service/common/MpaasRpcService;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/framework/service/common/MpaasRpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->e:Ljava/util/Map;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v1, :cond_6

    .line 23
    :try_start_6
    iget-object v1, p0, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->e:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/rpc/util/RpcInvokeContextUtil;->setRequestHeaders(Ljava/lang/Object;Ljava/util/Map;)V

    .line 24
    sget-object v1, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->f:Ljava/lang/String;

    const-string v2, "add headers in mpaas"

    invoke-static {v1, v2}, Le/b/b/a/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    .line 25
    :try_start_7
    sget-object v2, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->f:Ljava/lang/String;

    const-string v3, "add mpaas rpc headers failed."

    invoke-static {v2, v3, v1}, Le/b/b/a/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    const-string v1, "type"

    const-string v2, "mpaas"

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 27
    :cond_7
    invoke-static {}, Lcom/alipay/iap/android/common/rpcintegration/a;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 28
    sget-object v1, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use quake rpc proxy, operationType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Le/b/b/a/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/alipay/imobile/network/quake/rpc/QuakeRpc;->instance()Lcom/alipay/imobile/network/quake/rpc/IQuakeRpc;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/alipay/imobile/network/quake/rpc/IQuakeRpc;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    iget-object v1, p0, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->e:Ljava/util/Map;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 31
    invoke-static {}, Lcom/alipay/imobile/network/quake/rpc/QuakeRpc;->instance()Lcom/alipay/imobile/network/quake/rpc/IQuakeRpc;

    move-result-object v1

    .line 32
    invoke-interface {v1, p1}, Lcom/alipay/imobile/network/quake/rpc/IQuakeRpc;->getRpcConfig(Ljava/lang/Object;)Lcom/alipay/imobile/network/quake/QuakeConfig;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 33
    iget-object v2, p0, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/alipay/imobile/network/quake/QuakeConfig;->setExternalInfo(Ljava/util/Map;)V

    .line 34
    sget-object v1, Lcom/alipay/iap/android/common/rpcintegration/RpcInvocationHandlerHost;->f:Ljava/lang/String;

    const-string v2, "add headers in quake"

    invoke-static {v1, v2}, Le/b/b/a/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v1, "type"

    const-string v2, "iap"

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    const-string v1, "rpc_monitor"

    .line 36
    invoke-static {v1, v0}, Le/b/b/a/b/b/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-object p1

    .line 38
    :cond_9
    :try_start_8
    new-instance p1, Ljava/lang/ClassNotFoundException;

    const-string p2, "No RPC implementation is set to RPCHost, network will not be available"

    invoke-direct {p1, p2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method
