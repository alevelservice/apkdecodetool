.class Lcom/mapbox/mapboxsdk/location/f;
.super Ljava/lang/Object;
.source "LayerBitmapProvider.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a(ILjava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/mapbox/mapboxsdk/utils/a;->a(Landroid/content/Context;ILjava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/utils/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/f;->a:Landroid/content/Context;

    sget v1, Lcom/mapbox/mapboxsdk/j;->mapbox_user_icon_shadow:I

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/utils/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->n()F

    move-result p1

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/location/g0;->a(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
