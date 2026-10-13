.class public Lcom/mapbox/mapboxsdk/t/a/l;
.super Lcom/mapbox/mapboxsdk/t/a/b;
.source "FillManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/t/a/b<",
        "Lcom/mapbox/mapboxsdk/style/layers/FillLayer;",
        "Lcom/mapbox/mapboxsdk/t/a/j;",
        "Lcom/mapbox/mapboxsdk/t/a/m;",
        "Ljava/lang/Object;",
        "Lcom/mapbox/mapboxsdk/t/a/v;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 6
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/t/a/l;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/a;)V

    return-void
.end method

.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/t/a/h;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/a;Lcom/mapbox/mapboxsdk/t/a/i;)V
    .locals 8
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mapbox/mapboxsdk/t/a/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/mapbox/mapboxsdk/style/sources/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/MapView;",
            "Lcom/mapbox/mapboxsdk/maps/n;",
            "Lcom/mapbox/mapboxsdk/maps/Style;",
            "Lcom/mapbox/mapboxsdk/t/a/h<",
            "Lcom/mapbox/mapboxsdk/style/layers/FillLayer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/sources/a;",
            "Lcom/mapbox/mapboxsdk/t/a/i;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    move-object v6, p5

    move-object v7, p6

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/t/a/b;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/t/a/h;Lcom/mapbox/mapboxsdk/t/a/i;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/a;)V
    .locals 8
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/maps/Style;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/mapbox/mapboxsdk/style/sources/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    new-instance v4, Lcom/mapbox/mapboxsdk/t/a/k;

    invoke-direct {v4}, Lcom/mapbox/mapboxsdk/t/a/k;-><init>()V

    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/t/a/i;->a(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;)Lcom/mapbox/mapboxsdk/t/a/i;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/t/a/l;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/t/a/h;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/a;Lcom/mapbox/mapboxsdk/t/a/i;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    return-object v0
.end method

.method public a(Lcom/mapbox/mapboxsdk/u/a/a;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->e:Lcom/mapbox/mapboxsdk/u/a/a;

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->e:Lcom/mapbox/mapboxsdk/u/a/a;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;->a(Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "fill-outline-color"

    const-string v2, "fill-pattern"

    const-string v3, "fill-opacity"

    const-string v4, "fill-color"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v8, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    new-array v0, v8, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/c;->k(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto :goto_2

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    new-array v0, v8, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/c;->j(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto :goto_2

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    new-array v0, v8, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/c;->h(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto :goto_2

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/FillLayer;

    new-array v0, v8, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/style/layers/c;->i(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x641a3567 -> :sswitch_3
        -0x4a83623f -> :sswitch_2
        -0x2e226eba -> :sswitch_1
        0x4799974e -> :sswitch_0
    .end sparse-switch
.end method

.method c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "fill-opacity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "fill-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "fill-outline-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "fill-pattern"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
