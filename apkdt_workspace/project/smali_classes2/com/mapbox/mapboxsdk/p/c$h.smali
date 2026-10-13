.class Lcom/mapbox/mapboxsdk/p/c$h;
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
    name = "h"
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
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/p/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/p/c;)Lcom/mapbox/mapboxsdk/p/b;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/mapbox/mapboxsdk/p/b;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v0, v1}, Lcom/mapbox/mapboxsdk/p/b;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Z)V

    return-object p1
.end method
