.class public Lcom/ap/zhubid/endpoint/gateway/model/AbstractEkycGwResponse;
.super Ljava/lang/Object;
.source "AbstractEkycGwResponse.java"


# instance fields
.field public retCode:Ljava/lang/String;

.field public retCodeSub:Ljava/lang/String;

.field public retMessageSub:Ljava/lang/String;

.field public retMsg:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ap/zhubid/endpoint/gateway/model/AbstractEkycGwResponse;->success:Z

    return-void
.end method
