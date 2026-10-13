.class public final Lcom/alipay/zoloz/toyger/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/zoloz/toyger/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static activity_zface:I

.field public static general_dialog:I

.field public static layout_progress_dialog:I

.field public static layout_titile_bar:I

.field public static layout_upload_success:I

.field public static zface_upload_loading:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/zoloz/builder/R$layout;->activity_zface:I

    sput v0, Lcom/alipay/zoloz/toyger/R$layout;->activity_zface:I

    .line 2
    sget v0, Lcom/zoloz/builder/R$layout;->general_dialog:I

    sput v0, Lcom/alipay/zoloz/toyger/R$layout;->general_dialog:I

    .line 3
    sget v0, Lcom/zoloz/builder/R$layout;->layout_progress_dialog:I

    sput v0, Lcom/alipay/zoloz/toyger/R$layout;->layout_progress_dialog:I

    .line 4
    sget v0, Lcom/zoloz/builder/R$layout;->layout_titile_bar:I

    sput v0, Lcom/alipay/zoloz/toyger/R$layout;->layout_titile_bar:I

    .line 5
    sget v0, Lcom/zoloz/builder/R$layout;->layout_upload_success:I

    sput v0, Lcom/alipay/zoloz/toyger/R$layout;->layout_upload_success:I

    .line 6
    sget v0, Lcom/zoloz/builder/R$layout;->zface_upload_loading:I

    sput v0, Lcom/alipay/zoloz/toyger/R$layout;->zface_upload_loading:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
