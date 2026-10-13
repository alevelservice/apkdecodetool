.class public Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;
.super Lcom/alipay/zoloz/toyger/ToygerAlgorithmConfig;
.source "ToygerDocAlgorithmConfig.java"


# instance fields
.field public algoType:I

.field public blur:I

.field public card_detect_score:I

.field public exposure:I

.field public frameRect:Landroid/graphics/Rect;

.field public rotateTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/ToygerAlgorithmConfig;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->algoType:I

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->exposure:I

    const/16 v0, 0x50

    .line 4
    iput v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->blur:I

    const/16 v0, 0x64

    .line 5
    iput v0, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->card_detect_score:I

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToygerDocAlgorithmConfig{algoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->algoType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->frameRect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rotateTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->rotateTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exposure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->exposure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->blur:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", card_detect_score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/zoloz/toyger/doc/ToygerDocAlgorithmConfig;->card_detect_score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
