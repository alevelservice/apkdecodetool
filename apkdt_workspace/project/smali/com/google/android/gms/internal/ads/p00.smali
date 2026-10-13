.class public final Lcom/google/android/gms/internal/ads/p00;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/u10;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/x10;

.field private final c:Lorg/json/JSONObject;

.field private final d:Lcom/google/android/gms/internal/ads/y40;

.field private final e:Lcom/google/android/gms/internal/ads/l10;

.field private final f:Lcom/google/android/gms/internal/ads/t11;

.field private final g:Lcom/google/android/gms/internal/ads/rt;

.field private final h:Lcom/google/android/gms/internal/ads/it;

.field private final i:Lcom/google/android/gms/internal/ads/ns0;

.field private final j:Lcom/google/android/gms/internal/ads/zzawv;

.field private final k:Lcom/google/android/gms/internal/ads/ws0;

.field private final l:Lcom/google/android/gms/internal/ads/qn;

.field private final m:Lcom/google/android/gms/internal/ads/j20;

.field private final n:Lcom/google/android/gms/common/util/e;

.field private final o:Lcom/google/android/gms/internal/ads/nx;

.field private final p:Lcom/google/android/gms/internal/ads/iv0;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/graphics/Point;

.field private v:Landroid/graphics/Point;

.field private w:J

.field private x:J

.field private y:Lcom/google/android/gms/internal/ads/zzvx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/x10;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/y40;Lcom/google/android/gms/internal/ads/l10;Lcom/google/android/gms/internal/ads/t11;Lcom/google/android/gms/internal/ads/rt;Lcom/google/android/gms/internal/ads/it;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ws0;Lcom/google/android/gms/internal/ads/qn;Lcom/google/android/gms/internal/ads/j20;Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/internal/ads/nx;Lcom/google/android/gms/internal/ads/iv0;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/p00;->q:Z

    .line 3
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/p00;->s:Z

    .line 4
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/p00;->t:Z

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->u:Landroid/graphics/Point;

    .line 6
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->v:Landroid/graphics/Point;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/p00;->w:J

    .line 8
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/p00;->x:J

    move-object v1, p1

    .line 9
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->a:Landroid/content/Context;

    move-object v1, p2

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->b:Lcom/google/android/gms/internal/ads/x10;

    move-object v1, p3

    .line 11
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->c:Lorg/json/JSONObject;

    move-object v1, p4

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->d:Lcom/google/android/gms/internal/ads/y40;

    move-object v1, p5

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->e:Lcom/google/android/gms/internal/ads/l10;

    move-object v1, p6

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->f:Lcom/google/android/gms/internal/ads/t11;

    move-object v1, p7

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->g:Lcom/google/android/gms/internal/ads/rt;

    move-object v1, p8

    .line 16
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->h:Lcom/google/android/gms/internal/ads/it;

    move-object v1, p9

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->i:Lcom/google/android/gms/internal/ads/ns0;

    move-object v1, p10

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->j:Lcom/google/android/gms/internal/ads/zzawv;

    move-object v1, p11

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->k:Lcom/google/android/gms/internal/ads/ws0;

    move-object v1, p12

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->l:Lcom/google/android/gms/internal/ads/qn;

    move-object/from16 v1, p13

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->m:Lcom/google/android/gms/internal/ads/j20;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->n:Lcom/google/android/gms/common/util/e;

    move-object/from16 v1, p15

    .line 23
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->o:Lcom/google/android/gms/internal/ads/nx;

    move-object/from16 v1, p16

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/p00;->p:Lcom/google/android/gms/internal/ads/iv0;

    return-void
.end method

.method private final a(I)I
    .locals 2

    .line 180
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p00;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gd;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/p00;)Lcom/google/android/gms/internal/ads/rt;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p00;->g:Lcom/google/android/gms/internal/ads/rt;

    return-object p0
.end method

.method private final a(Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 3

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result p1

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "relative_to"

    const-string v1, "self"

    .line 144
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private final a(Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 18
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "ad_view"

    const-string v3, "relative_to"

    const-string v4, "y"

    const-string v5, "x"

    const-string v6, "height"

    const-string v7, "width"

    .line 145
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_5

    .line 146
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/p00;->f(Landroid/view/View;)[I

    move-result-object v9

    .line 147
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_1

    .line 149
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/p00;->f(Landroid/view/View;)[I

    move-result-object v13

    .line 150
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 151
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 p1, v10

    .line 152
    :try_start_0
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 153
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v10

    invoke-virtual {v15, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 155
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v10

    invoke-virtual {v15, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v10, 0x0

    .line 156
    aget v16, v13, v10

    aget v17, v9, v10

    sub-int v10, v16, v17

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v10

    invoke-virtual {v15, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v10, 0x1

    .line 157
    aget v16, v13, v10

    aget v17, v9, v10

    sub-int v10, v16, v17

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v10

    invoke-virtual {v15, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v15, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "frame"

    .line 159
    invoke-virtual {v14, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 161
    invoke-virtual {v12, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 162
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/p00;->a(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v15, 0x1

    goto :goto_1

    .line 163
    :cond_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const/4 v15, 0x0

    .line 164
    invoke-virtual {v10, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v10, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    aget v16, v13, v15

    aget v17, v9, v15

    sub-int v15, v16, v17

    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v15

    invoke-virtual {v10, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v15, 0x1

    .line 167
    aget v13, v13, v15

    aget v16, v9, v15

    sub-int v13, v13, v16

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v13

    invoke-virtual {v10, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v13, "visible_bounds"

    .line 169
    invoke-virtual {v14, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    instance-of v10, v12, Landroid/widget/TextView;

    if-eqz v10, :cond_3

    .line 171
    move-object v10, v12

    check-cast v10, Landroid/widget/TextView;

    const-string v13, "text_color"

    .line 172
    invoke-virtual {v10}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v15

    invoke-virtual {v14, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "font_size"

    .line 173
    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    float-to-double v2, v15

    :try_start_1
    invoke-virtual {v14, v13, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "text"

    .line 174
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :goto_2
    const-string v2, "is_clickable"

    if-eqz v1, :cond_4

    .line 175
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    invoke-virtual {v12}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 177
    :goto_3
    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 178
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :catch_1
    const-string v2, "Unable to get asset views information"

    .line 179
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    :goto_4
    move-object/from16 v10, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_5
    :goto_5
    return-object v8
.end method

.method private final a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "has_custom_click_handler"

    const-string v1, "performClick must be called on the main UI thread."

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 45
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    .line 46
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/p00;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "asset_view_signal"

    .line 47
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ad_view_signal"

    .line 48
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "click_signal"

    .line 49
    invoke-virtual {v1, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 50
    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 51
    invoke-virtual {v1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p00;->b:Lcom/google/android/gms/internal/ads/x10;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/p00;->e:Lcom/google/android/gms/internal/ads/l10;

    .line 53
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/l10;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/x10;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaby;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 54
    :goto_0
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "provided_signals"

    .line 55
    invoke-virtual {v1, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "asset_id"

    .line 57
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "template"

    .line 58
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/p00;->e:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/l10;->o()I

    move-result p6

    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "view_aware_api_used"

    .line 59
    invoke-virtual {p2, p5, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_requested"

    .line 60
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/p00;->k:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/ws0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    if-eqz p6, :cond_1

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/p00;->k:Lcom/google/android/gms/internal/ads/ws0;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/ws0;->i:Lcom/google/android/gms/internal/ads/zzaai;

    iget-boolean p6, p6, Lcom/google/android/gms/internal/ads/zzaai;->k:Z

    if-eqz p6, :cond_1

    const/4 p6, 0x1

    goto :goto_1

    :cond_1
    const/4 p6, 0x0

    .line 61
    :goto_1
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_enabled"

    .line 62
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/p00;->e:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/l10;->j()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_2

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/p00;->e:Lcom/google/android/gms/internal/ads/l10;

    .line 63
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/l10;->r()Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object p6

    if-eqz p6, :cond_2

    const/4 p6, 0x1

    goto :goto_2

    :cond_2
    const/4 p6, 0x0

    .line 64
    :goto_2
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/p00;->m:Lcom/google/android/gms/internal/ads/j20;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/j20;->b()Lcom/google/android/gms/internal/ads/zzacl;

    move-result-object p5

    if-eqz p5, :cond_3

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/p00;->c:Lorg/json/JSONObject;

    const-string p6, "custom_one_point_five_click_enabled"

    .line 66
    invoke-virtual {p5, p6, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_3

    const-string p5, "custom_one_point_five_click_eligible"

    .line 67
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    const-string p5, "timestamp"

    .line 68
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/p00;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p6

    invoke-virtual {p2, p5, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    iget-boolean p5, p0, Lcom/google/android/gms/internal/ads/p00;->t:Z

    if-eqz p5, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p00;->d()Z

    move-result p5

    if-eqz p5, :cond_4

    const-string p5, "custom_click_gesture_eligible"

    .line 70
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    if-eqz p10, :cond_5

    const-string p5, "is_custom_click_gesture"

    .line 71
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 72
    :cond_5
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/p00;->b:Lcom/google/android/gms/internal/ads/x10;

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/p00;->e:Lcom/google/android/gms/internal/ads/l10;

    .line 73
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/l10;->e()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/google/android/gms/internal/ads/x10;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaby;

    move-result-object p5

    if-eqz p5, :cond_6

    const/4 p3, 0x1

    .line 74
    :cond_6
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "click_signals"

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/p00;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "click"

    .line 76
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 78
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p00;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p2

    const-string p4, "time_from_last_touch_down"

    .line 79
    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/p00;->w:J

    sub-long p5, p2, p5

    invoke-virtual {p1, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p4, "time_from_last_touch"

    .line 80
    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/p00;->x:J

    sub-long/2addr p2, p5

    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "touch_signal"

    .line 81
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->d:Lcom/google/android/gms/internal/ads/y40;

    const-string p2, "google.afma.nativeAds.handleClick"

    .line 83
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/y40;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    const-string p2, "Error during performing handleClick"

    .line 84
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/de;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Unable to create click JSON."

    .line 85
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "recordImpression must be called on the main UI thread."

    .line 121
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 122
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    .line 123
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p00;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asset_view_signal"

    .line 124
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 125
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    .line 126
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    .line 127
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "provided_signals"

    .line 128
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->d:Lcom/google/android/gms/internal/ads/y40;

    const-string p2, "/logScionEvent"

    new-instance p3, Lcom/google/android/gms/internal/ads/r00;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/google/android/gms/internal/ads/r00;-><init>(Lcom/google/android/gms/internal/ads/p00;Lcom/google/android/gms/internal/ads/n00;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/y40;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 130
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->d:Lcom/google/android/gms/internal/ads/y40;

    const-string p2, "/nativeImpression"

    new-instance p3, Lcom/google/android/gms/internal/ads/q00;

    invoke-direct {p3, p0, p4}, Lcom/google/android/gms/internal/ads/q00;-><init>(Lcom/google/android/gms/internal/ads/p00;Lcom/google/android/gms/internal/ads/n00;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/y40;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/o0;)V

    .line 131
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->d:Lcom/google/android/gms/internal/ads/y40;

    const-string p2, "google.afma.nativeAds.handleImpression"

    .line 132
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/y40;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    const-string p2, "Error during performing handleImpression"

    .line 133
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/de;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/p00;->q:Z

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p00;->i:Lcom/google/android/gms/internal/ads/ns0;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ns0;->z:Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 135
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->m()Lcom/google/android/gms/internal/ads/ub;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/p00;->a:Landroid/content/Context;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/p00;->j:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/p00;->i:Lcom/google/android/gms/internal/ads/ns0;

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/ns0;->z:Lorg/json/JSONObject;

    .line 136
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->k:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ws0;->f:Ljava/lang/String;

    .line 137
    invoke-virtual {p2, p3, p4, p5, v0}, Lcom/google/android/gms/internal/ads/ub;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/p00;->q:Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Unable to create impression JSON."

    .line 138
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/p00;)Lcom/google/android/gms/internal/ads/it;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/p00;->h:Lcom/google/android/gms/internal/ads/it;

    return-object p0
.end method

.method private final b(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->e:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/l10;->o()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    return-object v0

    :cond_2
    const-string p1, "3099"

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    const-string p1, "2099"

    return-object p1

    :cond_5
    const-string p1, "1099"

    return-object p1
.end method

.method private final b(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 13
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "window"

    const-string v1, "relative_to"

    const-string v2, "y"

    const-string v3, "x"

    const-string v4, "height"

    const-string v5, "width"

    const-string v6, "Cannot access method getTemplateTypeName: "

    .line 22
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_0

    return-object v7

    :cond_0
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 23
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p00;->f(Landroid/view/View;)[I

    move-result-object v10

    .line 24
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 26
    invoke-direct {p0, v12}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v12

    invoke-virtual {v11, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 28
    invoke-direct {p0, v12}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v12

    invoke-virtual {v11, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    aget v12, v10, v9

    invoke-direct {p0, v12}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v12

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    aget v12, v10, v8

    invoke-direct {p0, v12}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v12

    invoke-virtual {v11, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "frame"

    .line 32
    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 34
    invoke-virtual {p1, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 35
    invoke-direct {p0, v11}, Lcom/google/android/gms/internal/ads/p00;->a(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 37
    invoke-virtual {v11, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v11, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    aget v4, v10, v9

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v4

    invoke-virtual {v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    aget v3, v10, v8

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v11

    :goto_0
    const-string v1, "visible_bounds"

    .line 42
    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "Unable to get native ad view bounding box"

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 44
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->G3:Lcom/google/android/gms/internal/ads/pv1;

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 48
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTemplateTypeName"

    new-array v2, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    .line 49
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 50
    invoke-static {v6, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception p1

    .line 51
    invoke-static {v6, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception p1

    .line 52
    invoke-static {v6, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_4
    :cond_2
    :goto_2
    const-string p1, ""

    :goto_3
    const/4 v0, -0x1

    .line 53
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7b2ddf4e

    if-eq v1, v2, :cond_4

    const v2, 0x78630204

    if-eq v1, v2, :cond_3

    goto :goto_4

    :cond_3
    const-string v1, "medium_template"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const-string v1, "small_template"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    :cond_5
    :goto_4
    const-string p1, "native_template_type"

    if-eqz v0, :cond_7

    if-eq v0, v8, :cond_6

    .line 54
    :try_start_3
    invoke-virtual {v7, p1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    :cond_6
    const/4 v0, 0x2

    .line 55
    invoke-virtual {v7, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    .line 56
    :cond_7
    invoke-virtual {v7, p1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    const-string v0, "Could not log native template signal to JSON"

    .line 57
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    return-object v7
.end method

.method private final b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->c:Lorg/json/JSONObject;

    const-string v1, "allow_pub_event_reporting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private static c(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/wa;->f(Landroid/view/View;)I

    move-result p0

    const-string v1, "contained_in_scroll_view"

    const/4 v2, -0x1

    if-eq p0, v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private final c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 9
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "click_point"

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p00;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "asset_id"

    .line 11
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_0
    const-string v0, "Error occurred while grabbing click signals."

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method

.method private final d(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "can_show_on_lock_screen"

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wa;->e(Landroid/view/View;)Z

    move-result p1

    .line 4
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "is_keyguard_locked"

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p00;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/wa;->j(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unable to get lock screen information"

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private final d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->c:Lorg/json/JSONObject;

    const-string v1, "allow_custom_click_gesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final e(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->c:Lorg/json/JSONObject;

    const-string v1, "tracking_urls_and_actions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "click_string"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p00;->f:Lcom/google/android/gms/internal/ads/t11;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/t11;->a()Lcom/google/android/gms/internal/ads/cz0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p00;->a:Landroid/content/Context;

    invoke-interface {v1, v2, v0, p1}, Lcom/google/android/gms/internal/ads/cz0;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Exception obtaining click signals"

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final e()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "x"

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p00;->u:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "y"

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p00;->u:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "start_x"

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p00;->v:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "start_y"

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p00;->v:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/p00;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error occurred while putting signals into JSON object."

    .line 11
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static f(Landroid/view/View;)[I
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->y:Lcom/google/android/gms/internal/ads/zzvx;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->y:Lcom/google/android/gms/internal/ads/zzvx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvx;->onAdMuted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 115
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, "Touch event data is null. No touch event is reported."

    .line 100
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "touch_reporting"

    .line 101
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/p00;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events."

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "x"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "y"

    .line 104
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "duration_ms"

    .line 105
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 106
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p00;->f:Lcom/google/android/gms/internal/ads/t11;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/t11;->a()Lcom/google/android/gms/internal/ads/cz0;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/cz0;->a(III)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "setClickConfirmingView: Your account need to be whitelisted to use this feature.\nContact your account manager for more information."

    .line 108
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->m:Lcom/google/android/gms/internal/ads/j20;

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 112
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/j20;->k:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/p00;->f(Landroid/view/View;)[I

    move-result-object p1

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    float-to-int p3, p3

    const/4 v0, 0x0

    aget v0, p1, v0

    sub-int/2addr p3, v0

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    sub-int/2addr v0, p1

    .line 89
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 90
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->u:Landroid/graphics/Point;

    .line 91
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->n:Lcom/google/android/gms/common/util/e;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    .line 92
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/p00;->x:J

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 94
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/p00;->w:J

    .line 95
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->u:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->v:Landroid/graphics/Point;

    .line 96
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p00;->u:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 98
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p00;->f:Lcom/google/android/gms/internal/ads/t11;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/t11;->a(Landroid/view/MotionEvent;)V

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 12
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    move-object v11, p0

    move-object v0, p2

    move-object v1, p3

    move-object/from16 v2, p4

    .line 25
    invoke-direct {p0, p3, v2, p2}, Lcom/google/android/gms/internal/ads/p00;->a(Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 26
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/p00;->b(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/p00;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 28
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/p00;->d(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v6, p1

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/p00;->b(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/p00;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move/from16 v9, p5

    .line 31
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/p00;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;)V
    .locals 0
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/p00;->u:Landroid/graphics/Point;

    .line 22
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/p00;->v:Landroid/graphics/Point;

    .line 23
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p00;->o:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/nx;->b(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/p00;->r:Z

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/p00;->a(Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/p00;->b(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 118
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p00;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 119
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/p00;->d(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/p00;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->u:Landroid/graphics/Point;

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->v:Landroid/graphics/Point;

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/p00;->r:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->o:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nx;->a(Landroid/view/View;)V

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/p00;->r:Z

    .line 6
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->l:Lcom/google/android/gms/internal/ads/qn;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/qn;->a(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->j:Lcom/google/android/gms/internal/ads/zzawv;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzawv;->g:I

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tc;->a(I)Z

    move-result p1

    if-eqz p2, :cond_3

    .line 12
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 16
    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_6

    .line 17
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_4

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const/4 p5, 0x0

    .line 20
    invoke-virtual {p3, p5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .line 33
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/p00;->t:Z

    if-nez v0, :cond_0

    const-string p1, "Custom click reporting failed. enableCustomClickGesture is not set."

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p00;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Custom click reporting failed. Ad unit id not whitelisted."

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_1
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/p00;->a(Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/p00;->b(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p00;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/p00;->d(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 p3, 0x0

    .line 41
    invoke-direct {p0, p3, p2}, Lcom/google/android/gms/internal/ads/p00;->b(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/p00;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v9, p4

    .line 43
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/p00;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, p1

    .line 32
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/p00;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final b()V
    .locals 3

    const-string v0, "recordDownloadedImpression must be called on the main UI thread."

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/p00;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p00;->d:Lcom/google/android/gms/internal/ads/y40;

    const-string v2, "google.afma.nativeAds.handleDownloadedImpression"

    .line 19
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/y40;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    const-string v1, "Error during performing handleDownloadedImpression"

    .line 20
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/de;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 21
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, "Click data is null. No click is reported."

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "click_reporting"

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/p00;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "click_signal"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "asset_id"

    .line 12
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, v1

    .line 13
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/wa;->a(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    .line 14
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/p00;->a(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final c()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/p00;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public final c(Landroid/os/Bundle;)Z
    .locals 8

    const-string v0, "impression_reporting"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/p00;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/wa;->a(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/p00;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public final cancelUnconfirmedClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->m:Lcom/google/android/gms/internal/ads/j20;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/j20;->a()V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->d:Lcom/google/android/gms/internal/ads/y40;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y40;->a()V

    return-void
.end method

.method public final isCustomClickGestureEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p00;->d()Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzacl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "setUnconfirmedClickListener: Your account need to be whitelisted to use this feature.\nContact your account manager for more information."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->m:Lcom/google/android/gms/internal/ads/j20;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/j20;->a(Lcom/google/android/gms/internal/ads/zzacl;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvx;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->y:Lcom/google/android/gms/internal/ads/zzvx;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwb;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzwb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/p00;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p00;->e:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/l10;->r()Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/p00;->s:Z

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p00;->p:Lcom/google/android/gms/internal/ads/iv0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->e:Lcom/google/android/gms/internal/ads/l10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l10;->r()Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxd;->zzor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/p00;->a()V

    return-void

    .line 9
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/p00;->s:Z

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p00;->p:Lcom/google/android/gms/internal/ads/iv0;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwb;->zzor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/p00;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzqs()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/p00;->t:Z

    return-void
.end method
