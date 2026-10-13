.class Lcom/mapbox/mapboxsdk/p/c$e;
.super Ljava/lang/Object;
.source "AttributionMeasure.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/p/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/p/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/p/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/p/c$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/p/c;)Lcom/mapbox/mapboxsdk/p/b;
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/p/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/p/c;->j(Lcom/mapbox/mapboxsdk/p/c;)F

    move-result v0

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/p/c;->k(Lcom/mapbox/mapboxsdk/p/c;)F

    move-result v1

    add-float/2addr v0, v1

    .line 2
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/p/c;->l(Lcom/mapbox/mapboxsdk/p/c;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/p/c;->a(Lcom/mapbox/mapboxsdk/p/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/p/c;->b(Lcom/mapbox/mapboxsdk/p/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/p/c;->c(Lcom/mapbox/mapboxsdk/p/c;)F

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/mapbox/mapboxsdk/p/c;->a(Landroid/graphics/Bitmap;Landroid/widget/TextView;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/mapbox/mapboxsdk/p/b;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/p/c;->d(Lcom/mapbox/mapboxsdk/p/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1, v0, v2}, Lcom/mapbox/mapboxsdk/p/b;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Z)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
