.class public abstract Lcom/alipay/zoloz/toyger/doc/DocBlobManager;
.super Lcom/alipay/zoloz/toyger/blob/BlobManager;
.source "DocBlobManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/zoloz/toyger/blob/BlobManager<",
        "Lcom/alipay/zoloz/toyger/doc/ToygerDocInfo;",
        ">;"
    }
.end annotation


# static fields
.field protected static final INFO_DOC_TYPE:Ljava/lang/String; = "docType"

.field protected static final INFO_PAGE_NUMBER:Ljava/lang/String; = "pageNo"

.field protected static final INFO_PIC_SIZE:Ljava/lang/String; = "picSize"


# instance fields
.field protected mCropRect:Landroid/graphics/Rect;

.field protected picSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/blob/BlobManager;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->picSize:J

    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/blob/BlobManager;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->picSize:J

    .line 5
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    .line 6
    new-instance v0, Lcom/alipay/zoloz/toyger/blob/CryptoManager;

    iget-object p1, p1, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->pubkey:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/alipay/zoloz/toyger/blob/CryptoManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;

    return-void
.end method


# virtual methods
.method public abstract generateBlob(Ljava/util/List;Ljava/util/Map;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/doc/ToygerDocInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation
.end method

.method protected getDocType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    check-cast v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    iget-object v0, v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;->docType:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;

    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->getAESCypher()[B

    move-result-object v0

    return-object v0
.end method

.method protected getPageNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    check-cast v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;

    iget v0, v0, Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;->pageNo:I

    return v0
.end method

.method public getPicSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->picSize:J

    return-wide v0
.end method

.method public abstract isUTF8()Z
.end method

.method public setBlobConfig(Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    return-void
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    div-float/2addr v3, v2

    float-to-int v1, v3

    .line 3
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    .line 4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    .line 5
    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    .line 6
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method
