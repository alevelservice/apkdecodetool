.class public Lcom/zoloz/android/phone/zdoc/module/CollModule;
.super Ljava/lang/Object;
.source "CollModule.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private algoType:I

.field private docType:Ljava/lang/String;

.field private pageNo:I

.field private retryLimit:I

.field private scanTimeout:I

.field private uiType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->retryLimit:I

    const/16 v0, 0x1e

    .line 3
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->scanTimeout:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->uiType:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->pageNo:I

    const-string v1, "006200001"

    .line 6
    iput-object v1, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->docType:Ljava/lang/String;

    .line 7
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->algoType:I

    return-void
.end method


# virtual methods
.method public getAlgoType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->algoType:I

    return v0
.end method

.method public getDocType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->docType:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->pageNo:I

    return v0
.end method

.method public getRetryLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->retryLimit:I

    return v0
.end method

.method public getScanTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->scanTimeout:I

    return v0
.end method

.method public getUiType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->uiType:I

    return v0
.end method

.method public setAlgoType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->algoType:I

    return-void
.end method

.method public setDocType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->docType:Ljava/lang/String;

    return-void
.end method

.method public setPageNo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->pageNo:I

    return-void
.end method

.method public setRetryLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->retryLimit:I

    return-void
.end method

.method public setScanTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->scanTimeout:I

    return-void
.end method

.method public setUiType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/CollModule;->uiType:I

    return-void
.end method
