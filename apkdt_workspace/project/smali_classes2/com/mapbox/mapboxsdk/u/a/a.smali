.class public Lcom/mapbox/mapboxsdk/u/a/a;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/u/a/a$g;,
        Lcom/mapbox/mapboxsdk/u/a/a$d;,
        Lcom/mapbox/mapboxsdk/u/a/a$c;,
        Lcom/mapbox/mapboxsdk/u/a/a$a;,
        Lcom/mapbox/mapboxsdk/u/a/a$f;,
        Lcom/mapbox/mapboxsdk/u/a/a$e;,
        Lcom/mapbox/mapboxsdk/u/a/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:[Lcom/mapbox/mapboxsdk/u/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/u/a/a;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/u/a/a;->b:[Lcom/mapbox/mapboxsdk/u/a/a;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/u/a/a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/u/a/a;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/u/a/a;->b:[Lcom/mapbox/mapboxsdk/u/a/a;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a$f;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a$f;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/mapboxsdk/u/a/a$f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/mapbox/geojson/Polygon;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 3
    .param p0    # Lcom/mapbox/geojson/Polygon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/mapbox/geojson/Polygon;->type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/u/a/a;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/mapbox/geojson/Polygon;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    const-string v1, "json"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p0, Lcom/mapbox/mapboxsdk/u/a/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/u/a/a;

    new-instance v2, Lcom/mapbox/mapboxsdk/u/a/a$d;

    invoke-direct {v2, v0}, Lcom/mapbox/mapboxsdk/u/a/a$d;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    const-string v0, "within"

    invoke-direct {p0, v0, v1}, Lcom/mapbox/mapboxsdk/u/a/a;-><init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-object p0
.end method

.method public static varargs a(Lcom/mapbox/mapboxsdk/u/a/a$e;Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a$f;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 0
    .param p0    # Lcom/mapbox/mapboxsdk/u/a/a$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-static {p2}, Lcom/mapbox/mapboxsdk/u/a/a$f;->a([Lcom/mapbox/mapboxsdk/u/a/a$f;)[Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Lcom/mapbox/mapboxsdk/u/a/a$e;Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Lcom/mapbox/mapboxsdk/u/a/a$e;Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 3
    .param p0    # Lcom/mapbox/mapboxsdk/u/a/a$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/u/a/a;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1, p2}, Lcom/mapbox/mapboxsdk/u/a/a;->a([Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a;)[Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    const-string p1, "interpolate"

    invoke-direct {v0, p1, p0}, Lcom/mapbox/mapboxsdk/u/a/a;-><init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-object v0
.end method

.method public static a(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 3
    .param p0    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/u/a/a;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "get"

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/u/a/a;-><init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-object v0
.end method

.method public static a(Lcom/mapbox/mapboxsdk/u/a/a;Lcom/mapbox/mapboxsdk/u/a/a;Lcom/mapbox/mapboxsdk/u/a/a;Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 3
    .param p0    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/u/a/a;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const-string p0, "rgba"

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/u/a/a;-><init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-object v0
.end method

.method public static varargs a(Lcom/mapbox/mapboxsdk/u/a/a;Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a$f;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 3
    .param p0    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/mapbox/mapboxsdk/u/a/a$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/mapbox/mapboxsdk/u/a/a;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 11
    invoke-static {p2}, Lcom/mapbox/mapboxsdk/u/a/a$f;->a([Lcom/mapbox/mapboxsdk/u/a/a$f;)[Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/mapbox/mapboxsdk/u/a/a;->a([Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a;)[Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    new-array p2, v0, [Lcom/mapbox/mapboxsdk/u/a/a;

    aput-object p1, p2, v2

    invoke-static {p0, p2}, Lcom/mapbox/mapboxsdk/u/a/a;->a([Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a;)[Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a;->a([Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Number;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 1
    .param p0    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a$b;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/u/a/a$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 0
    .param p0    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Number;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Number;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p1

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Number;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p2

    invoke-static {p3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Ljava/lang/Number;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Lcom/mapbox/mapboxsdk/u/a/a;Lcom/mapbox/mapboxsdk/u/a/a;Lcom/mapbox/mapboxsdk/u/a/a;Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a;->b(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a;->a([Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/mapbox/mapboxsdk/u/a/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a$b;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/u/a/a$b;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t convert an expression to a literal"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a;->b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 2
    .param p0    # [Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x2L
        .end annotation
    .end param

    .line 10
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a;

    const-string v1, "match"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/u/a/a;-><init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 3
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/u/a/a;

    new-instance v2, Lcom/mapbox/mapboxsdk/u/a/a$c;

    invoke-direct {v2, p0}, Lcom/mapbox/mapboxsdk/u/a/a$c;-><init>([Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    const-string p0, "literal"

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/u/a/a;-><init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-object v0
.end method

.method private static a([Lcom/mapbox/mapboxsdk/u/a/a;[Lcom/mapbox/mapboxsdk/u/a/a;)[Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 21
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/u/a/a;

    .line 22
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a$b;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/u/a/a$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs b([Lcom/mapbox/mapboxsdk/u/a/a;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 2
    .param p0    # [Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a;

    const-string v1, "case"

    invoke-direct {v0, v1, p0}, Lcom/mapbox/mapboxsdk/u/a/a;-><init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-object v0
.end method

.method private static b(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 11
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 12
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static c()Lcom/mapbox/mapboxsdk/u/a/a$e;
    .locals 3

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a$e;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/u/a/a;

    const-string v2, "linear"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/u/a/a$e;-><init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a$a;->a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/u/a/a;

    const-string v2, "zoom"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/u/a/a;-><init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-object v0
.end method


# virtual methods
.method public b()[Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/u/a/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/u/a/a;->b:[Lcom/mapbox/mapboxsdk/u/a/a;

    if-eqz v1, :cond_1

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 7
    instance-of v5, v4, Lcom/mapbox/mapboxsdk/u/a/a$g;

    if-eqz v5, :cond_0

    .line 8
    check-cast v4, Lcom/mapbox/mapboxsdk/u/a/a$g;

    invoke-interface {v4}, Lcom/mapbox/mapboxsdk/u/a/a$g;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/u/a/a;->b()[Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2
    instance-of v1, p1, Lcom/mapbox/mapboxsdk/u/a/a;

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/u/a/a;

    .line 4
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/u/a/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/u/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/mapbox/mapboxsdk/u/a/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/u/a/a;->b:[Lcom/mapbox/mapboxsdk/u/a/a;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/u/a/a;->b:[Lcom/mapbox/mapboxsdk/u/a/a;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/u/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/u/a/a;->b:[Lcom/mapbox/mapboxsdk/u/a/a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/u/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/u/a/a;->b:[Lcom/mapbox/mapboxsdk/u/a/a;

    if-eqz v1, :cond_0

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, ", "

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/u/a/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "]"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
