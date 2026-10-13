.class Lcom/mapbox/mapboxsdk/maps/l$b;
.super Ljava/lang/Object;
.source "MapGestureDetector.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/maps/l;->a(DDLandroid/graphics/PointF;J)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroid/graphics/PointF;

.field final synthetic f:Lcom/mapbox/mapboxsdk/maps/l;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/l;Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$b;->f:Lcom/mapbox/mapboxsdk/maps/l;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$b;->e:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$b;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$b;->e:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, p1}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DLandroid/graphics/PointF;)V

    return-void
.end method
