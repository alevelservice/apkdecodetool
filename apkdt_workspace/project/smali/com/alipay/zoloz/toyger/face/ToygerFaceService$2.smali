.class Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;
.super Ljava/lang/Object;
.source "ToygerFaceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-static {v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$200(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-static {v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$300(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-static {v1}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$400(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-static {v2}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$500(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-static {v2}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$600(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-static {v2}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$700(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    .line 9
    iget-object v4, v3, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    iget v5, v3, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I

    iget v6, v3, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I

    invoke-static {v4, v5, v6}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$800([BII)[B

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S

    iget v3, v1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I

    iget v4, v1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I

    invoke-static {v2, v3, v4}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$900([SII)[S

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-static {v2}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$1000(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Lcom/alipay/zoloz/toyger/face/FrameProcessor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->initFame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)V

    .line 12
    new-instance v2, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;

    invoke-direct {v2}, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;-><init>()V

    .line 13
    invoke-static {v0, v1, v2}, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->processImage(Ljava/util/List;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;Lcom/alipay/zoloz/toyger/ToygerAttr;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-static {v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$1000(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Lcom/alipay/zoloz/toyger/face/FrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->clearFrame()V

    .line 15
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-static {v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$500(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    :goto_1
    invoke-static {v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$600(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    .line 17
    :catchall_0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-static {v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$1000(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Lcom/alipay/zoloz/toyger/face/FrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->clearFrame()V

    .line 18
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-static {v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$500(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    :cond_3
    :goto_2
    return-void
.end method
