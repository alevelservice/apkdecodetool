.class public Lcom/zoloz/rpc/LiteInvocationHandler;
.super Ljava/lang/Object;
.source "LiteInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static f:I


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zoloz/rpc/LiteInvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/zoloz/rpc/LiteInvocationHandler;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 2
    const-class p1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    .line 3
    iget-object v0, p0, Lcom/zoloz/rpc/LiteInvocationHandler;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/rpc/RpcConfig;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/rpc/LiteInvocationHandler;->e:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_9

    .line 4
    iget-object v0, p0, Lcom/zoloz/rpc/LiteInvocationHandler;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5
    sget v0, Lcom/zoloz/rpc/LiteInvocationHandler;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/zoloz/rpc/LiteInvocationHandler;->f:I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoke"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    :cond_1
    invoke-direct {p0, p3}, Lcom/zoloz/rpc/LiteInvocationHandler;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "utf-8"

    .line 8
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 9
    invoke-interface {p1}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/zoloz/rpc/d;

    invoke-direct {v2}, Lcom/zoloz/rpc/d;-><init>()V

    .line 11
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 12
    sget v4, Lcom/zoloz/rpc/LiteInvocationHandler;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "operationType"

    .line 13
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "requestData"

    .line 14
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-direct {p0}, Lcom/zoloz/rpc/LiteInvocationHandler;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ts"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoloz/rpc/RpcConfig;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppId"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoloz/rpc/RpcConfig;->getWorkspaceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "workspaceId"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    invoke-interface {p1}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object p1

    const-string v4, "com.zoloz.ekyc.init.client"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 22
    aget-object p1, p3, p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 23
    sget p3, Lcom/zoloz/rpc/LiteInvocationHandler;->f:I

    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoloz/rpc/RpcConfig;->getRemoteInitUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3, v1, p1}, Le/o/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/o/a/d;

    move-result-object p1

    goto :goto_0

    .line 24
    :cond_2
    sget p1, Lcom/zoloz/rpc/LiteInvocationHandler;->f:I

    iget-object p3, p0, Lcom/zoloz/rpc/LiteInvocationHandler;->e:Ljava/lang/String;

    invoke-static {p1, p3, v1, v3}, Le/o/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Le/o/a/d;

    move-result-object p1

    .line 25
    :goto_0
    iput-object v0, p1, Le/o/a/d;->c:Ljava/util/HashMap;

    .line 26
    sget-boolean p3, Lcom/zoloz/rpc/RpcConfig;->k:Z

    if-eqz p3, :cond_3

    .line 27
    invoke-static {}, Le/o/a/b;->a()Le/o/a/b;

    move-result-object p3

    invoke-virtual {p3, p1}, Le/o/a/b;->a(Le/o/a/d;)V

    .line 28
    :cond_3
    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zoloz/rpc/RpcConfig;->getRpcProxyImpl()Le/o/a/a;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 29
    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zoloz/rpc/RpcConfig;->getRpcProxyImpl()Le/o/a/a;

    move-result-object p3

    invoke-interface {p3, p1}, Le/o/a/a;->a(Le/o/a/d;)Le/o/a/e;

    move-result-object p3

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {v2, p1}, Lcom/zoloz/rpc/d;->a(Le/o/a/d;)Le/o/a/e;

    move-result-object p3

    .line 31
    :goto_1
    sget-boolean v0, Lcom/zoloz/rpc/RpcConfig;->k:Z

    if-eqz v0, :cond_5

    .line 32
    invoke-static {}, Le/o/a/b;->a()Le/o/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Le/o/a/b;->a(Le/o/a/d;Le/o/a/e;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performRequest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Le/o/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    :cond_5
    iget v0, p3, Le/o/a/e;->c:I

    const/16 v1, 0xfa1

    if-eq v0, v1, :cond_7

    .line 35
    iget-object p3, p3, Le/o/a/e;->a:Ljava/lang/String;

    if-eqz p3, :cond_6

    const/16 v0, 0x1774

    .line 36
    :try_start_1
    iget-object p1, p1, Le/o/a/d;->d:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2}, Lcom/zoloz/rpc/LiteInvocationHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lcom/alibaba/fastjson/f; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 37
    :catch_0
    new-instance p1, Lcom/zoloz/rpc/ZolozRpcException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "json object null"

    invoke-direct {p1, p2, p3}, Lcom/zoloz/rpc/ZolozRpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p1

    .line 38
    :catch_1
    new-instance p1, Lcom/zoloz/rpc/ZolozRpcException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "json format error"

    invoke-direct {p1, p2, p3}, Lcom/zoloz/rpc/ZolozRpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_6
    new-instance p1, Lcom/zoloz/rpc/ZolozRpcException;

    const/16 p2, 0x1388

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "null result error"

    invoke-direct {p1, p2, p3}, Lcom/zoloz/rpc/ZolozRpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_7
    new-instance p1, Lcom/zoloz/rpc/ZolozRpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "time out of 10s"

    invoke-direct {p1, p2, p3}, Lcom/zoloz/rpc/ZolozRpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    .line 41
    new-instance p2, Lcom/zoloz/rpc/ZolozRpcException;

    invoke-direct {p2, p1}, Lcom/zoloz/rpc/ZolozRpcException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 42
    :cond_8
    new-instance p1, Lcom/zoloz/rpc/ZolozRpcException;

    const/16 p2, 0x10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "host is null"

    invoke-direct {p1, p2, p3}, Lcom/zoloz/rpc/ZolozRpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_9
    new-instance p1, Lcom/zoloz/rpc/ZolozRpcException;

    const/16 p2, 0x1b5c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "operation type is null"

    invoke-direct {p1, p2, p3}, Lcom/zoloz/rpc/ZolozRpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-string v0, "com.zoloz.ekyc.init.client"

    .line 44
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "result"

    .line 47
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resultStatus"

    .line 48
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 49
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 50
    :cond_1
    new-instance p2, Lcom/zoloz/rpc/ZolozRpcException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "rpc return error"

    invoke-direct {p2, p1, p3}, Lcom/zoloz/rpc/ZolozRpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p2
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 54
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-boolean v0, Lcom/zoloz/rpc/RpcConfig;->j:Z

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    new-instance v8, Le/o/a/e;

    invoke-direct {v8}, Le/o/a/e;-><init>()V

    .line 4
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/zoloz/rpc/a;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/zoloz/rpc/a;-><init>(Lcom/zoloz/rpc/LiteInvocationHandler;Le/o/a/e;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    const-wide/16 p1, 0x1e

    .line 6
    :try_start_0
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    const/16 p3, 0xfa1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    iget p1, v8, Le/o/a/e;->c:I

    if-eq p1, p3, :cond_1

    .line 8
    iget-object p1, v8, Le/o/a/e;->b:Ljava/lang/Object;

    if-eqz p1, :cond_0

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Lcom/zoloz/rpc/ZolozRpcException;

    const/16 p2, 0x1a0a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "rpc get null result"

    invoke-direct {p1, p2, p3}, Lcom/zoloz/rpc/ZolozRpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Lcom/zoloz/rpc/ZolozRpcException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "time out of 8s"

    invoke-direct {p1, p2, p3}, Lcom/zoloz/rpc/ZolozRpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lcom/zoloz/rpc/ZolozRpcException;

    invoke-direct {p2, p1}, Lcom/zoloz/rpc/ZolozRpcException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/zoloz/rpc/LiteInvocationHandler;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
