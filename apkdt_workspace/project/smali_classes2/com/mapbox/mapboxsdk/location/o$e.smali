.class Lcom/mapbox/mapboxsdk/location/o$e;
.super Ljava/lang/Object;
.source "LocationLayerController.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/location/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mapbox/mapboxsdk/location/r$b<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/location/o;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/o$e;->a:Lcom/mapbox/mapboxsdk/location/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/o$e;->a:Lcom/mapbox/mapboxsdk/location/o;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/o;->b(Lcom/mapbox/mapboxsdk/location/o;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->F()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/o$e;->a:Lcom/mapbox/mapboxsdk/location/o;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/location/o;->a(Lcom/mapbox/mapboxsdk/location/o;)Lcom/mapbox/mapboxsdk/location/p;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v1, p1, v0}, Lcom/mapbox/mapboxsdk/location/p;->a(FLjava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/o$e;->a(Ljava/lang/Float;)V

    return-void
.end method
