.class final Lcom/mapbox/mapboxsdk/maps/l$i;
.super Ljava/lang/Object;
.source "MapGestureDetector.java"

# interfaces
.implements Lcom/mapbox/android/gestures/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/maps/l;


# direct methods
.method private constructor <init>(Lcom/mapbox/mapboxsdk/maps/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$i;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/maps/l;Lcom/mapbox/mapboxsdk/maps/l$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/l$i;-><init>(Lcom/mapbox/mapboxsdk/maps/l;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/android/gestures/f;I)Z
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$i;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->O()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$i;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    .line 3
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$i;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/maps/l;->l(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/e;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mapbox/mapboxsdk/maps/e;->c(I)V

    .line 4
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$i;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/maps/l;->k(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$i;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->k(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/e;->f()Landroid/graphics/PointF;

    move-result-object p1

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$i;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {p2, p1, v1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Landroid/graphics/PointF;Z)V

    return v0

    :cond_2
    :goto_1
    return v1
.end method
