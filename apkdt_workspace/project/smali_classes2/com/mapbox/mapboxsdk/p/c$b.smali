.class public Lcom/mapbox/mapboxsdk/p/c$b;
.super Ljava/lang/Object;
.source "AttributionMeasure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/p/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)Lcom/mapbox/mapboxsdk/p/c$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iput p1, p0, Lcom/mapbox/mapboxsdk/p/c$b;->f:F

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/mapbox/mapboxsdk/p/c$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/p/c$b;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Landroid/widget/TextView;)Lcom/mapbox/mapboxsdk/p/c$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/p/c$b;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public a()Lcom/mapbox/mapboxsdk/p/c;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    new-instance v7, Lcom/mapbox/mapboxsdk/p/c;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/p/c$b;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/p/c$b;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/p/c$b;->c:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/mapbox/mapboxsdk/p/c$b;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mapbox/mapboxsdk/p/c$b;->e:Landroid/widget/TextView;

    iget v6, p0, Lcom/mapbox/mapboxsdk/p/c$b;->f:F

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/p/c;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/widget/TextView;Landroid/widget/TextView;F)V

    return-object v7
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/mapbox/mapboxsdk/p/c$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/p/c$b;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public b(Landroid/widget/TextView;)Lcom/mapbox/mapboxsdk/p/c$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/p/c$b;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method public c(Landroid/graphics/Bitmap;)Lcom/mapbox/mapboxsdk/p/c$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/p/c$b;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method
