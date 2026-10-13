.class Lcom/alipay/zoloz/toyger/doc/ToygerDocService$2;
.super Ljava/lang/Object;
.source "ToygerDocService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

.field final synthetic val$sema:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$2;->this$0:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    iput-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$2;->val$sema:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->release()V

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$2;->val$sema:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
