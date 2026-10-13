.class public Lcom/zoloz/rpc/c;
.super Ljava/lang/Object;
.source "RpcProxyUtil.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Landroid/content/Context;)Lcom/zoloz/rpc/LiteInvocationHandler;
    .locals 0

    .line 1
    new-instance p1, Lcom/zoloz/rpc/LiteInvocationHandler;

    invoke-direct {p1}, Lcom/zoloz/rpc/LiteInvocationHandler;-><init>()V

    .line 2
    iget-object p2, p0, Lcom/zoloz/rpc/c;->a:Ljava/lang/String;

    iput-object p2, p1, Lcom/zoloz/rpc/LiteInvocationHandler;->e:Ljava/lang/String;

    return-object p1
.end method
