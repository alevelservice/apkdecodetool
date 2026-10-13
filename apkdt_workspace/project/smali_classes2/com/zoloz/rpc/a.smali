.class Lcom/zoloz/rpc/a;
.super Ljava/lang/Object;
.source "LiteInvocationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic e:Le/o/a/e;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Ljava/lang/reflect/Method;

.field final synthetic h:[Ljava/lang/Object;

.field final synthetic i:Ljava/util/concurrent/CountDownLatch;

.field final synthetic j:Lcom/zoloz/rpc/LiteInvocationHandler;


# direct methods
.method constructor <init>(Lcom/zoloz/rpc/LiteInvocationHandler;Le/o/a/e;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/rpc/a;->j:Lcom/zoloz/rpc/LiteInvocationHandler;

    iput-object p2, p0, Lcom/zoloz/rpc/a;->e:Le/o/a/e;

    iput-object p3, p0, Lcom/zoloz/rpc/a;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/zoloz/rpc/a;->g:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/zoloz/rpc/a;->h:[Ljava/lang/Object;

    iput-object p6, p0, Lcom/zoloz/rpc/a;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zoloz/rpc/a;->e:Le/o/a/e;

    iget-object v1, p0, Lcom/zoloz/rpc/a;->j:Lcom/zoloz/rpc/LiteInvocationHandler;

    iget-object v2, p0, Lcom/zoloz/rpc/a;->f:Ljava/lang/Object;

    iget-object v3, p0, Lcom/zoloz/rpc/a;->g:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/zoloz/rpc/a;->h:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/zoloz/rpc/LiteInvocationHandler;->a(Lcom/zoloz/rpc/LiteInvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Le/o/a/e;->b:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/zoloz/rpc/a;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Lcom/zoloz/rpc/ZolozRpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 4
    iget-object v0, p0, Lcom/zoloz/rpc/a;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method
