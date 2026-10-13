.class Lcom/mapbox/mapboxsdk/location/u;
.super Lcom/mapbox/mapboxsdk/location/r;
.source "MapboxFloatAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/location/r<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>([Ljava/lang/Float;Lcom/mapbox/mapboxsdk/location/r$b;I)V
    .locals 0
    .param p1    # [Ljava/lang/Float;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x2L
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/location/r$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/location/r;-><init>([Ljava/lang/Object;Lcom/mapbox/mapboxsdk/location/r$b;I)V

    return-void
.end method


# virtual methods
.method c()Landroid/animation/TypeEvaluator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    return-object v0
.end method
