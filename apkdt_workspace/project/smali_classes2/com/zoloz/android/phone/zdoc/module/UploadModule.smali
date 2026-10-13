.class public Lcom/zoloz/android/phone/zdoc/module/UploadModule;
.super Ljava/lang/Object;
.source "UploadModule.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private docType:Ljava/lang/String;

.field private pageNo:I

.field private ratio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->docType:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->pageNo:I

    const v0, 0x3f333333    # 0.7f

    .line 4
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->ratio:F

    return-void
.end method


# virtual methods
.method public getDocType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->docType:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->pageNo:I

    return v0
.end method

.method public getRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->ratio:F

    return v0
.end method

.method public setDocType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->docType:Ljava/lang/String;

    return-void
.end method

.method public setPageNo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->pageNo:I

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/UploadModule;->ratio:F

    return-void
.end method
