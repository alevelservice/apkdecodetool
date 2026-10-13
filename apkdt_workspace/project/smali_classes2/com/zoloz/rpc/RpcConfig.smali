.class public Lcom/zoloz/rpc/RpcConfig;
.super Ljava/lang/Object;
.source "RpcConfig.java"


# static fields
.field public static j:Z = false

.field public static k:Z = false

.field private static l:Lcom/zoloz/rpc/RpcConfig;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Le/o/a/a;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/zoloz/rpc/RpcConfig;

    invoke-direct {v0}, Lcom/zoloz/rpc/RpcConfig;-><init>()V

    sput-object v0, Lcom/zoloz/rpc/RpcConfig;->l:Lcom/zoloz/rpc/RpcConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/zoloz/rpc/RpcConfig;->h:Z

    return-void
.end method

.method public static getInstance()Lcom/zoloz/rpc/RpcConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/zoloz/rpc/RpcConfig;->l:Lcom/zoloz/rpc/RpcConfig;

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/rpc/RpcConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/rpc/RpcConfig;->f:I

    return v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/rpc/RpcConfig;->e:I

    return v0
.end method

.method public getRemoteInitUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/rpc/RpcConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/rpc/RpcConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRpcProxyImpl()Le/o/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/rpc/RpcConfig;->g:Le/o/a/a;

    return-object v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/rpc/RpcConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isEncodeParam()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/zoloz/rpc/RpcConfig;->a:Z

    return v0
.end method

.method public isKeepAlive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/zoloz/rpc/RpcConfig;->h:Z

    return v0
.end method

.method public registerImpl(Le/o/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/rpc/RpcConfig;->g:Le/o/a/a;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/rpc/RpcConfig;->d:Ljava/lang/String;

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/rpc/RpcConfig;->f:I

    return-void
.end method

.method public setEncodeParam(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/zoloz/rpc/RpcConfig;->a:Z

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/zoloz/rpc/RpcConfig;->h:Z

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/rpc/RpcConfig;->e:I

    return-void
.end method

.method public setRemoteInitUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/rpc/RpcConfig;->i:Ljava/lang/String;

    return-void
.end method

.method public setRemoteUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/rpc/RpcConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public setWorkspaceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/rpc/RpcConfig;->c:Ljava/lang/String;

    return-void
.end method
