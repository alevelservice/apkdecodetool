.class Lcom/alipay/zoloz/toyger/doc/ToygerDocService$4;
.super Ljava/lang/Object;
.source "ToygerDocService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

.field final synthetic val$algorithmConfig:Ljava/lang/String;

.field final synthetic val$delegate:Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;Ljava/lang/String;Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$4;->this$0:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    iput-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$4;->val$algorithmConfig:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$4;->val$delegate:Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$4;->val$algorithmConfig:Ljava/lang/String;

    const-class v1, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;

    .line 2
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$4;->this$0:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    invoke-static {v1}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->access$100(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;)I

    move-result v1

    iput v1, v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->rotateTimes:I

    .line 3
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$4;->this$0:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    invoke-static {v1}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->access$200(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->frameRect:Landroid/graphics/Rect;

    .line 4
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$4;->val$delegate:Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;

    invoke-static {v1, v0}, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->configDoc(Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$4;->this$0:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    invoke-static {v0}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->access$300(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;)Lcom/alipay/zoloz/toyger/ToygerCallback;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/zoloz/toyger/ToygerCallback;->onEvent(ILjava/util/Map;)Z

    :cond_0
    return-void
.end method
