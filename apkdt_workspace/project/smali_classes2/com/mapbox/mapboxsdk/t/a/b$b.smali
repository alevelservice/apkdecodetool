.class Lcom/mapbox/mapboxsdk/t/a/b$b;
.super Ljava/lang/Object;
.source "AnnotationManager.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/n$o;
.implements Lcom/mapbox/mapboxsdk/maps/n$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/t/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic e:Lcom/mapbox/mapboxsdk/t/a/b;


# direct methods
.method private constructor <init>(Lcom/mapbox/mapboxsdk/t/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b$b;->e:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/t/a/b;Lcom/mapbox/mapboxsdk/t/a/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/t/a/b$b;-><init>(Lcom/mapbox/mapboxsdk/t/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b$b;->e:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b$b;->e:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/b;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b$b;->e:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/t/a/r;

    .line 4
    invoke-interface {v2, p1}, Lcom/mapbox/mapboxsdk/t/a/r;->a(Lcom/mapbox/mapboxsdk/t/a/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public b(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b$b;->e:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/t/a/b;->b(Lcom/mapbox/mapboxsdk/t/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b$b;->e:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/t/a/b;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b$b;->e:Lcom/mapbox/mapboxsdk/t/a/b;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/t/a/b;->b(Lcom/mapbox/mapboxsdk/t/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/t/a/t;

    .line 4
    invoke-interface {v2, p1}, Lcom/mapbox/mapboxsdk/t/a/t;->a(Lcom/mapbox/mapboxsdk/t/a/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
