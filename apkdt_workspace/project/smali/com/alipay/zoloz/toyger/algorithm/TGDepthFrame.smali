.class public Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
.super Ljava/lang/Object;
.source "TGDepthFrame.java"


# instance fields
.field public data:[S

.field public height:I

.field public rotation:I

.field public shortBuffer:Ljava/nio/ShortBuffer;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 13
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S

    .line 15
    :cond_0
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I

    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I

    .line 16
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I

    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I

    .line 17
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I

    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I

    .line 18
    iget-object p1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/nio/ShortBuffer;III)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 9
    iput p2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I

    .line 10
    iput p3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I

    .line 11
    iput p4, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I

    return-void
.end method

.method public constructor <init>([SIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S

    .line 4
    iput p2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I

    .line 5
    iput p3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I

    .line 6
    iput p4, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I

    return-void
.end method


# virtual methods
.method public assign(Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I

    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I

    .line 2
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I

    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I

    .line 3
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I

    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I

    .line 4
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S

    if-eqz v0, :cond_0

    .line 5
    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 8
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 10
    iget-object p1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 11
    iget-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    iget-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S

    :cond_1
    :goto_0
    return-void
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S

    .line 2
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TGDepthFrame{data=***, width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
