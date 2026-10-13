.class Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;
.super Ljava/lang/Object;
.source "ToygerDocService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

.field final synthetic val$algorithmConfig:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$delegate:Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;

.field final synthetic val$docCallback:Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;

.field final synthetic val$finalRect:Landroid/graphics/Rect;

.field final synthetic val$finalRotateTimes:I


# direct methods
.method constructor <init>(Lcom/alipay/zoloz/toyger/doc/ToygerDocService;Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Rect;Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->this$0:Lcom/alipay/zoloz/toyger/doc/ToygerDocService;

    iput-object p2, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$algorithmConfig:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$finalRotateTimes:I

    iput-object p5, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$finalRect:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$delegate:Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;

    iput-object p7, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$docCallback:Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Lcom/alipay/zoloz/toyger/doc/ToygerDocState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, "."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "StateSignature"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "AttrSignature"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FrameSignature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Algorithm"

    const-string v2, "Doc"

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->access$000()[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v0}, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->init(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Toyger.init() return : initResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    invoke-static {v4}, Lcom/alipay/zoloz/toyger/doc/ToygerDocService;->access$002([B)[B

    .line 9
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$algorithmConfig:Ljava/lang/String;

    const-class v2, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;

    const/4 v2, -0x4

    if-eqz v0, :cond_1

    .line 10
    iget v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$finalRotateTimes:I

    iput v0, v1, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->rotateTimes:I

    .line 11
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$finalRect:Landroid/graphics/Rect;

    iput-object v0, v1, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->frameRect:Landroid/graphics/Rect;

    .line 12
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$delegate:Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;

    invoke-static {v0, v1}, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->configDoc(Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$docCallback:Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;

    invoke-interface {v0, v2, v4}, Lcom/alipay/zoloz/toyger/ToygerCallback;->onEvent(ILjava/util/Map;)Z

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$docCallback:Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v4}, Lcom/alipay/zoloz/toyger/ToygerCallback;->onEvent(ILjava/util/Map;)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocService$1;->val$docCallback:Lcom/alipay/zoloz/toyger/doc/ToygerDocCallback;

    invoke-interface {v0, v2, v4}, Lcom/alipay/zoloz/toyger/ToygerCallback;->onEvent(ILjava/util/Map;)Z

    :goto_0
    return-void
.end method
