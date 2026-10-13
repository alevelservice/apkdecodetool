.class public Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;
.super Ljava/lang/Object;
.source "BisFaceImage.java"


# instance fields
.field public content:Ljava/lang/String;

.field public contentSig:Ljava/lang/String;

.field public height:I

.field public quality:I

.field public rectx:I

.field public recty:I

.field public taskidx:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->content:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->rectx:I

    .line 4
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->recty:I

    .line 5
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->width:I

    .line 6
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->height:I

    .line 7
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->quality:I

    .line 8
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->taskidx:I

    .line 9
    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/face/BisFaceJson/BisFaceImage;->contentSig:Ljava/lang/String;

    return-void
.end method
