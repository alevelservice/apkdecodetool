.class Lcom/mapbox/mapboxsdk/maps/m$a;
.super Ljava/lang/Object;
.source "MapKeyListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private e:Z

.field final synthetic f:Lcom/mapbox/mapboxsdk/maps/m;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/m$a;->f:Lcom/mapbox/mapboxsdk/maps/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/m$a;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/m$a;->e:Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/m$a;->e:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/m$a;->f:Lcom/mapbox/mapboxsdk/maps/m;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/maps/m;->a(Lcom/mapbox/mapboxsdk/maps/m;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/b0;->u()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/m$a;->f:Lcom/mapbox/mapboxsdk/maps/m;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/maps/m;->a(Lcom/mapbox/mapboxsdk/maps/m;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/b0;->n()F

    move-result v3

    div-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/m$a;->f:Lcom/mapbox/mapboxsdk/maps/m;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/maps/m;->b(Lcom/mapbox/mapboxsdk/maps/m;)Lcom/mapbox/mapboxsdk/maps/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mapbox/mapboxsdk/maps/l;->b(Landroid/graphics/PointF;Z)V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/m$a;->f:Lcom/mapbox/mapboxsdk/maps/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/maps/m;->a(Lcom/mapbox/mapboxsdk/maps/m;Lcom/mapbox/mapboxsdk/maps/m$a;)Lcom/mapbox/mapboxsdk/maps/m$a;

    :cond_0
    return-void
.end method
