.class public Lcom/alipay/zoloz/toyger/blob/Content;
.super Ljava/lang/Object;
.source "Content.java"


# instance fields
.field public blob:Lcom/alipay/zoloz/toyger/blob/Blob;

.field public meta:Lcom/alipay/zoloz/toyger/blob/Meta;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/blob/Meta;Lcom/alipay/zoloz/toyger/blob/Blob;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/Content;->meta:Lcom/alipay/zoloz/toyger/blob/Meta;

    .line 4
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/blob/Content;->blob:Lcom/alipay/zoloz/toyger/blob/Blob;

    return-void
.end method
