.class public Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;
.super Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
.source "FaceBlobManagerJson.java"


# instance fields
.field private mMonitorBlobElems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/blob/BlobElem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;-><init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;)V

    return-void
.end method

.method private generateMeta(Ljava/util/List;Ljava/util/Map;)Lcom/alipay/zoloz/toyger/blob/Meta;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alipay/zoloz/toyger/blob/Meta;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alipay/zoloz/toyger/blob/Meta;

    invoke-direct {p1}, Lcom/alipay/zoloz/toyger/blob/Meta;-><init>()V

    const-string v0, "zface"

    .line 2
    iput-object v0, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->type:Ljava/lang/String;

    .line 3
    iput-object p2, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->score:Ljava/util/Map;

    const/4 p2, 0x1

    .line 4
    iput p2, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->serialize:I

    return-object p1
.end method

.method private generateMonitorBlob(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)Lcom/alipay/zoloz/toyger/blob/BlobElem;
    .locals 4

    .line 1
    new-instance v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;

    invoke-direct {v0}, Lcom/alipay/zoloz/toyger/blob/BlobElem;-><init>()V

    const-string v1, "face"

    .line 2
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->type:Ljava/lang/String;

    const-string v1, "Surveillance"

    .line 3
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->subType:Ljava/lang/String;

    const-string v1, "1.0"

    .line 4
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->version:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->mMonitorBlobElems:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iput v1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->idx:I

    const/16 v1, 0xa0

    const/16 v2, 0xf

    .line 6
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/alipay/zoloz/toyger/blob/BlobManager;->processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;IILandroid/graphics/Rect;)[B

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B

    .line 7
    iget-object p1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "monitor image length:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public generateBlob(Ljava/util/List;Ljava/util/Map;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->generateMeta(Ljava/util/List;Ljava/util/Map;)Lcom/alipay/zoloz/toyger/blob/Meta;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "1.0"

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;

    .line 4
    new-instance v3, Lcom/alipay/zoloz/toyger/blob/BlobElem;

    invoke-direct {v3}, Lcom/alipay/zoloz/toyger/blob/BlobElem;-><init>()V

    const-string v4, "face"

    .line 5
    iput-object v4, v3, Lcom/alipay/zoloz/toyger/blob/BlobElem;->type:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v1}, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->getBlobElemType(Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/zoloz/toyger/blob/BlobElem;->subType:Ljava/lang/String;

    .line 7
    iput-object v2, v3, Lcom/alipay/zoloz/toyger/blob/BlobElem;->version:Ljava/lang/String;

    const/4 v2, 0x0

    .line 8
    iput v2, v3, Lcom/alipay/zoloz/toyger/blob/BlobElem;->idx:I

    .line 9
    iget-object v2, v1, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    invoke-virtual {p0, v2}, Lcom/alipay/zoloz/toyger/blob/BlobManager;->processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)[B

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B

    .line 10
    iget-object v2, v3, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lcom/alipay/zoloz/toyger/blob/BlobElem;->faceInfos:Ljava/util/List;

    .line 12
    iget-object v2, v3, Lcom/alipay/zoloz/toyger/blob/BlobElem;->faceInfos:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->generateFaceInfo(Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;)Lcom/alipay/zoloz/toyger/blob/FaceInfo;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Lcom/alipay/zoloz/toyger/blob/Blob;

    invoke-direct {p1}, Lcom/alipay/zoloz/toyger/blob/Blob;-><init>()V

    .line 15
    iput-object v0, p1, Lcom/alipay/zoloz/toyger/blob/Blob;->blobElem:Ljava/util/List;

    .line 16
    iput-object v2, p1, Lcom/alipay/zoloz/toyger/blob/Blob;->blobVersion:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/alipay/zoloz/toyger/blob/Content;

    invoke-direct {v0}, Lcom/alipay/zoloz/toyger/blob/Content;-><init>()V

    .line 18
    iput-object p1, v0, Lcom/alipay/zoloz/toyger/blob/Content;->blob:Lcom/alipay/zoloz/toyger/blob/Blob;

    .line 19
    iput-object p2, v0, Lcom/alipay/zoloz/toyger/blob/Content;->meta:Lcom/alipay/zoloz/toyger/blob/Meta;

    .line 20
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateFaceInfo(Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;)Lcom/alipay/zoloz/toyger/blob/FaceInfo;
    .locals 6

    .line 1
    new-instance v0, Lcom/alipay/zoloz/toyger/blob/FaceInfo;

    invoke-direct {v0}, Lcom/alipay/zoloz/toyger/blob/FaceInfo;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    iget v2, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I

    .line 3
    :goto_0
    iget-object v2, p1, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    iget v3, v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I

    if-ne v1, v3, :cond_1

    iget v3, v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    invoke-virtual {v2}, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getDesiredWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v2, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    invoke-virtual {v2}, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getDesiredWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    invoke-virtual {v2}, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getDesiredWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    int-to-float v4, v2

    int-to-float v1, v1

    div-float/2addr v4, v1

    int-to-float v1, v3

    mul-float v4, v4, v1

    float-to-int v1, v4

    .line 5
    iget-object v3, p1, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;->attr:Lcom/alipay/zoloz/toyger/ToygerAttr;

    check-cast v3, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;

    invoke-virtual {v3}, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->region()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p1, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    iget v4, v4, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v4, v5}, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->convertFaceRegion(Landroid/graphics/RectF;IIIZ)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/zoloz/toyger/blob/FaceInfo;->rect:Landroid/graphics/Rect;

    .line 6
    iget-object p1, p1, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;->attr:Lcom/alipay/zoloz/toyger/ToygerAttr;

    check-cast p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;

    invoke-virtual {p1}, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->quality()F

    move-result p1

    iput p1, v0, Lcom/alipay/zoloz/toyger/blob/FaceInfo;->quality:F

    return-object v0
.end method

.method public isUTF8()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
