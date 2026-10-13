.class public final Lzoloz/ap/com/toolkit/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzoloz/ap/com/toolkit/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field public static title_bar_left:I

.field public static title_bar_title_center_horizontal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/zoloz/builder/R$bool;->title_bar_left:I

    sput v0, Lzoloz/ap/com/toolkit/R$bool;->title_bar_left:I

    .line 2
    sget v0, Lcom/zoloz/builder/R$bool;->title_bar_title_center_horizontal:I

    sput v0, Lzoloz/ap/com/toolkit/R$bool;->title_bar_title_center_horizontal:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
