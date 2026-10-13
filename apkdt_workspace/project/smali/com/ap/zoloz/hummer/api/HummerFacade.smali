.class public Lcom/ap/zoloz/hummer/api/HummerFacade;
.super Ljava/lang/Object;
.source "HummerFacade.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object v0

    return-object v0
.end method
