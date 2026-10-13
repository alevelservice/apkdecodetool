.class public final Lcom/mapbox/mapboxsdk/plugins/localization/a;
.super Ljava/lang/Object;
.source "LocalizationPlugin.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

.field private b:Lcom/mapbox/mapboxsdk/maps/Style;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->c:Ljava/util/List;

    .line 2
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->c:Ljava/util/List;

    const-string v1, "mapbox.mapbox-streets-v6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->c:Ljava/util/List;

    const-string v1, "mapbox.mapbox-streets-v7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->c:Ljava/util/List;

    const-string v1, "mapbox.mapbox-streets-v8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 0
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->b:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 3
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/maps/Style;->e()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    new-instance p3, Lcom/mapbox/mapboxsdk/plugins/localization/a$a;

    invoke-direct {p3, p0, p2}, Lcom/mapbox/mapboxsdk/plugins/localization/a$a;-><init>(Lcom/mapbox/mapboxsdk/plugins/localization/a;Lcom/mapbox/mapboxsdk/maps/n;)V

    invoke-virtual {p1, p3}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$s;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "The style has to be non-null and fully loaded."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/plugins/localization/a;Lcom/mapbox/mapboxsdk/maps/Style;)Lcom/mapbox/mapboxsdk/maps/Style;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->b:Lcom/mapbox/mapboxsdk/maps/Style;

    return-object p1
.end method

.method private a(Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;Z)Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;
    .locals 0

    if-eqz p2, :cond_1

    .line 3
    sget-object p2, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->u:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->s:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    return-object p1

    .line 5
    :cond_1
    sget-object p1, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->s:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    return-object p1
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/plugins/localization/a;)Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    return-object p0
.end method

.method private a(Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;Lcom/mapbox/mapboxsdk/style/layers/Layer;Lcom/mapbox/mapboxsdk/style/layers/d;)V
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;",
            "Lcom/mapbox/mapboxsdk/style/layers/Layer;",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "*>;)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/style/layers/d;->a()Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 39
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/u/a/a;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "\\[\"match\", \"(name|name_.{2,7})\", \"name_zh-Hant\", \\[\"coalesce\", \\[\"get\", \"name_zh-Hant\"], \\[\"get\", \"name_zh-Hans\"], \\[\"match\", \\[\"get\", \"name_script\"], \"Latin\", \\[\"get\", \"name\"], \\[\"get\", \"name_en\"]], \\[\"get\", \"name\"]], \\[\"coalesce\", \\[\"get\", \"(name|name_.{2,7})\"], \\[\"match\", \\[\"get\", \"name_script\"], \"Latin\", \\[\"get\", \"name\"], \\[\"get\", \"name_en\"]], \\[\"get\", \"name\"]]]"

    const-string v1, "[\"get\", \"name_en\"], [\"get\", \"name\"]"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 40
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "name_en"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "name_zh"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "name_zh-Hans"

    .line 43
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p1, v3, v2

    const-string p1, "[\"match\", \"%s\", \"name_zh-Hant\", [\"coalesce\", [\"get\", \"name_zh-Hant\"], [\"get\", \"name_zh-Hans\"], [\"match\", [\"get\", \"name_script\"], \"Latin\", [\"get\", \"name\"], [\"get\", \"name_en\"]], [\"get\", \"name\"]], [\"coalesce\", [\"get\", \"%s\"], [\"match\", [\"get\", \"name_script\"], \"Latin\", [\"get\", \"name\"], [\"get\", \"name_en\"]], [\"get\", \"name\"]]]"

    .line 44
    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\[\"get\", \"name_en\"], \\[\"get\", \"name\"]"

    .line 45
    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    new-array p1, v2, [Lcom/mapbox/mapboxsdk/style/layers/d;

    .line 46
    invoke-static {p3}, Lcom/mapbox/mapboxsdk/u/a/a;->c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p3

    invoke-static {p3}, Lcom/mapbox/mapboxsdk/style/layers/c;->G(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p3

    aput-object p3, p1, v1

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;Lcom/mapbox/mapboxsdk/style/layers/Layer;Lcom/mapbox/mapboxsdk/style/layers/d;Z)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;",
            "Lcom/mapbox/mapboxsdk/style/layers/Layer;",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "*>;Z)V"
        }
    .end annotation

    .line 29
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/style/layers/d;->a()Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 30
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name_zh"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0, p1, p4}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;Z)Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    move-result-object p1

    new-array p4, v2, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v1

    const-string v0, "reset mapLocale to: %s"

    invoke-static {v0, p4}, Ll/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/u/a/a;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\b(name|name_.{2,7})\\b"

    invoke-virtual {p4, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "[\"step"

    .line 35
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/u/a/a;->b()[Ljava/lang/Object;

    move-result-object p3

    array-length p3, p3

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_1

    const-string p3, "\\[\"zoom\"], "

    const-string p4, "[\"zoom\"], \"\", "

    .line 36
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-array p3, v2, [Lcom/mapbox/mapboxsdk/style/layers/d;

    .line 37
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/u/a/a;->c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p1

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/c;->G(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-virtual {p2, p3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/style/sources/Source;)Z
    .locals 2

    .line 47
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;

    if-eqz v0, :cond_1

    .line 48
    check-cast p1, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    sget-object v0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/mapbox/mapboxsdk/style/sources/Source;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "mapbox.mapbox-streets-v7"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private c(Lcom/mapbox/mapboxsdk/style/sources/Source;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "mapbox.mapbox-streets-v8"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Ljava/util/Locale;Z)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;)V
    .locals 8
    .param p1    # Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a:Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    .line 13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->b:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->b:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->b()Ljava/util/List;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/plugins/localization/a;->b:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/Style;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/style/sources/Source;

    .line 16
    invoke-direct {p0, v2}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Lcom/mapbox/mapboxsdk/style/sources/Source;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17
    invoke-direct {p0, v2}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->c(Lcom/mapbox/mapboxsdk/style/sources/Source;)Z

    move-result v3

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mapbox/mapboxsdk/style/layers/Layer;

    .line 19
    instance-of v6, v5, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    if-eqz v6, :cond_2

    .line 20
    move-object v6, v5

    check-cast v6, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-virtual {v6}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->f()Lcom/mapbox/mapboxsdk/style/layers/d;

    move-result-object v6

    .line 21
    invoke-virtual {v6}, Lcom/mapbox/mapboxsdk/style/layers/d;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v3, :cond_3

    .line 22
    invoke-direct {p0, p1, v5, v6}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;Lcom/mapbox/mapboxsdk/style/layers/Layer;Lcom/mapbox/mapboxsdk/style/layers/d;)V

    goto :goto_1

    .line 23
    :cond_3
    invoke-direct {p0, v2}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->b(Lcom/mapbox/mapboxsdk/style/sources/Source;)Z

    move-result v7

    .line 24
    invoke-direct {p0, p1, v5, v6, v7}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;Lcom/mapbox/mapboxsdk/style/layers/Layer;Lcom/mapbox/mapboxsdk/style/layers/d;Z)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 25
    instance-of v4, v2, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;

    if-eqz v4, :cond_5

    .line 26
    move-object v3, v2

    check-cast v3, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/style/sources/VectorSource;->a()Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_6

    const-string v3, "not found"

    :cond_6
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 27
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/style/sources/Source;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/mapbox/mapboxsdk/plugins/localization/a;->c:Ljava/util/List;

    aput-object v3, v4, v2

    const-string v2, "The %s (%s) source is not based on Mapbox Vector Tiles. Supported sources:\n %s"

    .line 28
    invoke-static {v2, v4}, Ll/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    invoke-direct {v0, p1}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;)V

    return-void
.end method

.method public a(Ljava/util/Locale;Z)V
    .locals 3
    .param p1    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->a(Ljava/util/Locale;Z)Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Locale: %s, set MapLocale: %s"

    invoke-static {p1, v2}, Ll/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/mapbox/mapboxsdk/plugins/localization/a;->a(Lcom/mapbox/mapboxsdk/plugins/localization/MapLocale;)V

    goto :goto_0

    :cond_0
    new-array p2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Couldn\'t match Locale %s %s to a MapLocale"

    invoke-static {p1, p2}, Ll/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
