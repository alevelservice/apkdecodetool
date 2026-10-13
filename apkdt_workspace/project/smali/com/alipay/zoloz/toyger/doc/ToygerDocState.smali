.class public Lcom/alipay/zoloz/toyger/doc/ToygerDocState;
.super Lcom/alipay/zoloz/toyger/algorithm/TGDocState;
.source "ToygerDocState.java"

# interfaces
.implements Lcom/alipay/zoloz/toyger/ToygerState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/algorithm/TGDocState;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;-><init>()V

    .line 3
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->hasDoc:Z

    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->hasDoc:Z

    .line 4
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isCompleted:Z

    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isCompleted:Z

    .line 5
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isReflected:Z

    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isReflected:Z

    .line 6
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isBlur:Z

    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isBlur:Z

    .line 7
    iget-boolean p1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isCopy:Z

    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDocState;->isCopy:Z

    return-void
.end method


# virtual methods
.method public brightness()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public distance()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMessageCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getProgress()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStaticMessage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasTarget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGoodQuality()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInCenter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMoving()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
