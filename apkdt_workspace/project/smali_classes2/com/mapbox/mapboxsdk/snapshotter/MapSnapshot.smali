.class public Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;
.super Ljava/lang/Object;
.source "MapSnapshot.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:[Ljava/lang/String;

.field private c:Z

.field private nativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLandroid/graphics/Bitmap;[Ljava/lang/String;Z)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->nativePtr:J

    .line 3
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->nativePtr:J

    .line 4
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->a:Landroid/graphics/Bitmap;

    .line 5
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->b:[Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->c:Z

    return-void
.end method

.method private native initialize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method protected a()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->c:Z

    return v0
.end method

.method protected native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native latLngForPixel(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public native pixelForLatLng(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
