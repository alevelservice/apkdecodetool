.class public final Lcom/mapbox/mapboxsdk/annotations/Polyline;
.super Lcom/mapbox/mapboxsdk/annotations/BasePointCollection;
.source "Polyline.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private color:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private width:F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/BasePointCollection;-><init>()V

    const/high16 v0, -0x1000000

    .line 2
    iput v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->color:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 3
    iput v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->width:F

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->color:I

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->e()V

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->width:F

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Polyline;->e()V

    return-void
.end method

.method e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/a;->b()Lcom/mapbox/mapboxsdk/maps/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/annotations/Polyline;)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->color:I

    return v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/annotations/Polyline;->width:F

    return v0
.end method
