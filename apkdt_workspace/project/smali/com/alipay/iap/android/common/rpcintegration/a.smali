.class public abstract Lcom/alipay/iap/android/common/rpcintegration/a;
.super Ljava/lang/Object;
.source "RPCProxyHost.java"


# static fields
.field private static final a:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 3

    const-string v0, "com.alipay.imobile.network.quake.rpc.IQuakeRpc"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2
    :catch_0
    sget-object v0, Lcom/alipay/iap/android/common/rpcintegration/a;->a:Ljava/lang/String;

    const-string v2, "Quake not in application package."

    invoke-static {v0, v2}, Le/b/b/a/b/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static b()Z
    .locals 3

    const-string v0, "com.alipay.mobile.framework.service.common.MpaasRpcServiceFactory"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2
    :catch_0
    sget-object v0, Lcom/alipay/iap/android/common/rpcintegration/a;->a:Ljava/lang/String;

    const-string v2, "MPaas RPC not in application package."

    invoke-static {v0, v2}, Le/b/b/a/b/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
