.class public Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;
.super Ljava/lang/Object;
.source "AlgorithmModule.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private algoType:I

.field private blur:I

.field private card_detect_score:I

.field private exposure:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    .line 2
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->blur:I

    const/16 v1, 0x14

    .line 3
    iput v1, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->exposure:I

    .line 4
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->card_detect_score:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->algoType:I

    return-void
.end method


# virtual methods
.method public getAlgoType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->algoType:I

    return v0
.end method

.method public getBlur()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->blur:I

    return v0
.end method

.method public getCard_detect_score()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->card_detect_score:I

    return v0
.end method

.method public getExposure()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->exposure:I

    return v0
.end method

.method public setAlgoType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->algoType:I

    return-void
.end method

.method public setBlur(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->blur:I

    return-void
.end method

.method public setCard_detect_score(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->card_detect_score:I

    return-void
.end method

.method public setExposure(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;->exposure:I

    return-void
.end method
