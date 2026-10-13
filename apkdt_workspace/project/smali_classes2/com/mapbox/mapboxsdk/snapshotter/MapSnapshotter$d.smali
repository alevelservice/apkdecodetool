.class Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;
.super Ljava/lang/Object;
.source "MapSnapshotter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:F


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;->a:Landroid/graphics/Bitmap;

    .line 3
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;->b:Landroid/graphics/Bitmap;

    .line 4
    iput p4, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;->c:F

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;->c:F

    return v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
