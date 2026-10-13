.class public Lcom/mapbox/mapboxsdk/t/a/b0;
.super Lcom/mapbox/mapboxsdk/t/a/b;
.source "SymbolManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/t/a/b<",
        "Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;",
        "Lcom/mapbox/mapboxsdk/t/a/z;",
        "Lcom/mapbox/mapboxsdk/t/a/c0;",
        "Ljava/lang/Object;",
        "Lcom/mapbox/mapboxsdk/t/a/x;",
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
    invoke-direct/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/t/a/b0;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/a;)V

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
            "Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;",
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
    new-instance v4, Lcom/mapbox/mapboxsdk/t/a/a0;

    invoke-direct {v4}, Lcom/mapbox/mapboxsdk/t/a/a0;-><init>()V

    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/t/a/i;->a(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;)Lcom/mapbox/mapboxsdk/t/a/i;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/t/a/b0;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/t/a/h;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/a;Lcom/mapbox/mapboxsdk/t/a/i;)V

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

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->e:Lcom/mapbox/mapboxsdk/u/a/a;

    .line 5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast p1, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->e:Lcom/mapbox/mapboxsdk/u/a/a;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->a(Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/c;->a(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->d:Ljava/util/Map;

    const-string v1, "icon-allow-overlap"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 3

    .line 29
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/c;->b(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->d:Ljava/util/Map;

    const-string v1, "icon-ignore-placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "text-size"

    const-string v4, "text-font"

    const-string v5, "text-transform"

    const-string v6, "symbol-sort-key"

    const-string v7, "icon-size"

    const-string v8, "icon-image"

    const-string v9, "icon-color"

    const-string v10, "icon-halo-width"

    const-string v11, "icon-halo-color"

    const-string v12, "text-radial-offset"

    const-string v13, "icon-rotate"

    const-string v14, "icon-offset"

    const-string v15, "text-rotate"

    const/16 v16, 0x0

    const/4 v0, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "text-offset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "icon-anchor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "text-anchor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "icon-opacity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "text-field"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "text-color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "text-halo-blur"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "text-letter-spacing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "text-max-width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "text-justify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "text-opacity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "text-halo-width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "icon-halo-blur"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "text-halo-color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_11
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_12
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_13
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_14
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto :goto_1

    :sswitch_15
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto :goto_1

    :sswitch_16
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto :goto_1

    :sswitch_17
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_18
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_19
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1a
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p0

    goto/16 :goto_2

    :pswitch_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 2
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "text-halo-blur"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->I(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 3
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "text-halo-width"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->K(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 4
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "text-halo-color"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->J(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 5
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "text-color"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->F(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 6
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "text-opacity"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->P(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 7
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "icon-halo-blur"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->n(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_6
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 8
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v10}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->p(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_7
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 9
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v11}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->o(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 10
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v9}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->m(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_9
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 11
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "icon-opacity"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->s(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_a
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 12
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "text-offset"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->O(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_b
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 13
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v5}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->T(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_c
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 14
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v15}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->R(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_d
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 15
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "text-anchor"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->E(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_e
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 16
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v12}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->Q(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_f
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 17
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "text-justify"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->L(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_10
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 18
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "text-letter-spacing"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->M(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_11
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 19
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "text-max-width"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->N(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_12
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 20
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->S(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_13
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 21
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->H(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_14
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 22
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "text-field"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->G(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_15
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 23
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const-string v3, "icon-anchor"

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->l(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto/16 :goto_2

    :pswitch_16
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 24
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v14}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->r(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto :goto_2

    :pswitch_17
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 25
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v13}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->t(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto :goto_2

    :pswitch_18
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 26
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v8}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->q(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto :goto_2

    :pswitch_19
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 27
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v7}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->u(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto :goto_2

    :pswitch_1a
    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 28
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v2, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-static {v6}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/layers/c;->D(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v3

    aput-object v3, v1, v16

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ff5ba05 -> :sswitch_1a
        -0x79aeb799 -> :sswitch_19
        -0x740b3ed1 -> :sswitch_18
        -0x665dc89f -> :sswitch_17
        -0x65dc3f9a -> :sswitch_16
        -0x64c54137 -> :sswitch_15
        -0x5f687ef1 -> :sswitch_14
        -0x5f1504f9 -> :sswitch_13
        -0x55a1572b -> :sswitch_12
        -0x4fa71dbb -> :sswitch_11
        -0x4b414134 -> :sswitch_10
        -0x409ee311 -> :sswitch_f
        -0x40990f5f -> :sswitch_e
        -0x34ee00ce -> :sswitch_d
        -0x34d60cfc -> :sswitch_c
        -0x33d7026b -> :sswitch_b
        -0x1cca5c95 -> :sswitch_a
        -0x1bbbea10 -> :sswitch_9
        0x12e99f7d -> :sswitch_8
        0x19882e3c -> :sswitch_7
        0x1f52aab8 -> :sswitch_6
        0x2c9832c3 -> :sswitch_5
        0x2cbfa45a -> :sswitch_4
        0x549a8eb7 -> :sswitch_3
        0x62f22b55 -> :sswitch_2
        0x6edca689 -> :sswitch_1
        0x7a66cd33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "symbol-sort-key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "icon-size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "icon-image"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "icon-rotate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "icon-offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "icon-anchor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-field"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-font"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-max-width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-letter-spacing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-justify"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-radial-offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-anchor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-rotate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-transform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "icon-opacity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "icon-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "icon-halo-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "icon-halo-width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "icon-halo-blur"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-opacity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-halo-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-halo-width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const-string v2, "text-halo-blur"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 3

    .line 28
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/c;->c(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->d:Ljava/util/Map;

    const-string v1, "text-allow-overlap"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    return-void
.end method

.method public d(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/c;->d(Ljava/lang/Boolean;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->d:Ljava/util/Map;

    const-string v1, "text-ignore-placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    check-cast v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    return-void
.end method
